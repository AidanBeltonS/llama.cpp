#!/usr/bin/env python3
"""Break down rocprofv3 ATT PC-sampled stall cycles by source line.

The ``stats_ui_output_agent_<n>_dispatch_<m>.csv`` files produced by the ATT
plugin have the columns::

    CodeObj, Vaddr, Instruction, Hitcount, Latency, Stall, Idle, Source

There is no explicit "stall reason" column -- stall cycles are attributed to
the instruction that was waiting.  The reason is therefore derived from the
instruction mnemonic (``s_wait_loadcnt`` -> VMEM wait, ``ds_load_b128`` -> LDS
access, ``v_wmma_*`` -> matrix issue, ...).  Mnemonics are classified with the
table in ``STALL_REASONS`` below, which covers GFX10/11/12 (RDNA2-4) and the
CDNA MFMA mnemonics.

``Source`` entries may be inline chains (``a.cuh:916 -> a.cuh:1056``), written
innermost-first: the left-most entry is the leaf (the body the instruction was
actually emitted from) and the right-most is the outermost call site.  Stalls
are attributed to the leaf, and the full chain is kept for context.

Usage::

    ./att_stall_breakdown.py build/bin/db_att/stats_ui_output_agent_42056_dispatch_87.csv
    ./att_stall_breakdown.py stats.csv -n 20 --reasons 5 --show-instructions
"""

from __future__ import annotations

import argparse
import re
import sys

import numpy as np
import pandas as pd

# ---------------------------------------------------------------------------
# Instruction mnemonic -> stall reason
# ---------------------------------------------------------------------------
# Ordered list of (compiled regex, reason label).  First match wins, so the
# specific patterns must precede the generic ``s_``/``v_`` catch-alls.
STALL_REASONS: list[tuple[re.Pattern, str]] = [
    (r"^s_wait_loadcnt_dscnt$",             "VMEM+LDS wait"),
    (r"^s_wait(_|cnt_)?loadcnt$",           "VMEM load wait"),
    (r"^s_wait_storecnt$",                  "VMEM store wait"),
    (r"^s_wait_bvhcnt$",                    "BVH wait"),
    (r"^s_wait_samplecnt$",                 "Sample wait"),
    (r"^s_wait_expcnt$",                    "Export wait"),
    (r"^s_wait_dscnt$",                     "LDS wait"),
    (r"^s_wait_kmcnt$",                     "Scalar memory wait"),
    (r"^s_wait_alu$",                       "ALU dependency wait"),
    (r"^s_wait_idle$",                      "Idle wait"),
    (r"^s_waitcnt",                         "Memory counter wait"),   # pre-gfx12
    (r"^s_barrier",                         "Workgroup barrier"),
    (r"^s_sleep$|^s_setprio$",              "Wave scheduling"),
    (r"^s_delay_alu$|^s_nop$",              "Hazard padding"),
    (r"^v_(wmma|swmma|mfma|smfma)",         "Matrix (WMMA/MFMA) issue"),
    (r"^v_dot",                             "Dot-product issue"),
    (r"^ds_(load|read)",                    "LDS read"),
    (r"^ds_(store|write)",                  "LDS write"),
    (r"^ds_",                               "LDS atomic/other"),
    (r"^(global|flat|buffer|scratch|tbuffer)_(load|atomic)", "VMEM load"),
    (r"^(global|flat|buffer|scratch|tbuffer)_store",         "VMEM store"),
    (r"^(global|buffer)_(inv|wb|wbinv|wbl2)$",               "Cache maintenance"),
    (r"^(image|sample)_",                   "Image/sample op"),
    (r"^s_load|^s_buffer_load",             "Scalar (constant) load"),
    (r"^s_store|^s_buffer_store",           "Scalar store"),
    (r"^s_clause$",                         "Clause group"),
    (r"^v_(rcp|rsq|sqrt|exp|log|sin|cos|div_)|^v_s_(rcp|rsq|sqrt|exp|log)",
                                            "VALU transcendental/divide"),
    (r"^v_cvt|^v_pk_cvt",                   "VALU conversion"),
    (r"^v_(cmp|cmpx|cndmask)|^v_dual_cndmask", "VALU compare/select"),
    (r"^v_dual_",                           "VALU dual-issue (VOPD)"),
    (r"^v_pk_",                             "VALU packed"),
    (r"^v_(mov|accvgpr|readlane|writelane|readfirstlane|permlane)", "VALU move/lane"),
    (r"^v_",                                "VALU"),
    (r"^s_(and|or|xor)(_not1)?_saveexec|^s_mov_b(32|64)_exec", "EXEC mask update"),
    (r"^s_(branch|cbranch|call|setpc|getpc|swappc)", "Branch"),
    (r"^s_endpgm",                          "Program end"),
    (r"^s_sendmsg",                         "Message send"),
    (r"^s_(trap|rfe|icache_inv|code_end)",  "System/trap"),
    (r"^s_",                                "SALU"),
    (r"^export|^exp$",                      "Export"),
]
STALL_REASONS = [(re.compile(p), label) for p, label in STALL_REASONS]

UNKNOWN_REASON = "Other/unclassified"


def classify(mnemonic: str) -> str:
    """Map an instruction mnemonic to a human-readable stall reason."""
    for pattern, label in STALL_REASONS:
        if pattern.match(mnemonic):
            return label
    return UNKNOWN_REASON


# ---------------------------------------------------------------------------
# Loading / shaping
# ---------------------------------------------------------------------------
def load(path: str) -> pd.DataFrame:
    """Read an ATT stats CSV and add the derived mnemonic/reason/location cols."""
    df = pd.read_csv(path)

    required = {"Instruction", "Hitcount", "Latency", "Stall", "Idle", "Source"}
    missing = required - set(df.columns)
    if missing:
        sys.exit(f"{path}: missing expected column(s): {', '.join(sorted(missing))}")

    if df.empty:
        return df

    df["Instruction"] = df["Instruction"].fillna("").str.strip()
    df["Source"] = df["Source"].fillna("").str.strip()

    # Rows whose Instruction starts with ';' are kernel-name banners, not code.
    df = df[~df["Instruction"].str.startswith(";")].copy()

    for col in ("Hitcount", "Latency", "Stall", "Idle"):
        df[col] = pd.to_numeric(df[col], errors="coerce").fillna(0).astype(np.int64)

    df["Mnemonic"] = df["Instruction"].str.split(n=1).str[0]
    df["Reason"] = df["Mnemonic"].map(classify)

    # Inline chain "leaf -> ... -> outermost call site": attribute to the leaf.
    chain = df["Source"].str.split("->")
    df["Location"] = chain.str[0].str.strip()
    df["CallSite"] = chain.str[-1].str.strip()
    df["Chain"] = df["Source"].str.replace(r"\s*->\s*", " -> ", regex=True)
    df["Inlined"] = chain.str.len() > 1
    df.loc[df["Location"] == "", "Location"] = "<no source info>"

    return df


def short(location: str, full: bool) -> str:
    """``/long/path/mmq.cuh:1056`` -> ``mmq.cuh:1056`` unless *full*."""
    if full or location.startswith("<"):
        return location
    return location.rsplit("/", 1)[-1]


def fmt_chain(chain: str, full: bool) -> str:
    return " -> ".join(short(p.strip(), full) for p in chain.split("->"))


# ---------------------------------------------------------------------------
# Reporting
# ---------------------------------------------------------------------------
def report(df: pd.DataFrame, args: argparse.Namespace) -> None:
    stalled = df[df["Stall"] > 0]
    total_stall = int(df["Stall"].sum())

    print(f"file            : {args.csv}")
    print(f"instructions    : {len(df):,}  ({len(stalled):,} with stall cycles)")
    print(f"total stall     : {total_stall:,} cycles")
    print(f"total latency   : {int(df['Latency'].sum()):,} cycles"
          f"   ({100.0 * total_stall / max(int(df['Latency'].sum()), 1):.1f}% stalled)")
    print(f"total hitcount  : {int(df['Hitcount'].sum()):,} samples")
    print(f"total idle      : {int(df['Idle'].sum()):,} cycles")

    if total_stall == 0:
        print("\nNo stall cycles recorded in this dispatch.")
        return

    # --- global reason summary -------------------------------------------
    by_reason = (stalled.groupby("Reason")["Stall"].sum()
                 .sort_values(ascending=False))
    print("\n" + "=" * 78)
    print("STALL CYCLES BY REASON (whole dispatch)")
    print("=" * 78)
    width = max(len(r) for r in by_reason.index)
    for reason, cycles in by_reason.items():
        pct = 100.0 * cycles / total_stall
        bar = "#" * int(round(pct / 2))
        print(f"  {reason:<{width}}  {cycles:>12,}  {pct:5.1f}%  {bar}")

    # --- top-N source locations ------------------------------------------
    loc = (stalled.groupby("Location")
           .agg(Stall=("Stall", "sum"),
                Latency=("Latency", "sum"),
                Hitcount=("Hitcount", "sum"),
                Idle=("Idle", "sum"),
                Instructions=("Instruction", "size"))
           .sort_values("Stall", ascending=False))
    loc["Pct"] = 100.0 * loc["Stall"] / total_stall
    loc["CumPct"] = loc["Pct"].cumsum()

    top = loc.head(args.top)
    print("\n" + "=" * 78)
    print(f"TOP {len(top)} STALL LOCATIONS "
          f"(of {len(loc):,} source lines with stalls)")
    print("=" * 78)

    for rank, (location, row) in enumerate(top.iterrows(), start=1):
        rows = stalled[stalled["Location"] == location]
        loc_stall = int(row["Stall"])

        print(f"\n[{rank:>2}] {short(location, args.full_paths)}")
        print(f"     total stall {loc_stall:>12,} cycles"
              f"   {row['Pct']:5.1f}% of all stalls"
              f"   (cum {row['CumPct']:5.1f}%)")
        print(f"     latency     {int(row['Latency']):>12,}"
              f"   hits {int(row['Hitcount']):,}"
              f"   idle {int(row['Idle']):,}"
              f"   over {int(row['Instructions'])} instruction(s)")

        chains = sorted(set(rows.loc[rows["Inlined"], "Chain"]))
        for chain in chains[:args.max_chains]:
            print(f"     inlined into {fmt_chain(chain, args.full_paths)}")
        if len(chains) > args.max_chains:
            print(f"     ... and {len(chains) - args.max_chains} more inline chain(s)")

        # stall reasons for this line, most to least
        reasons = (rows.groupby(["Reason", "Mnemonic"])["Stall"].sum()
                   .sort_values(ascending=False))
        shown = reasons.head(args.reasons) if args.reasons else reasons
        labels = [f"{r} ({m})" for r, m in shown.index]
        rwidth = max((len(x) for x in labels), default=0)

        print(f"     {'stall reason':<{rwidth}}  {'cycles':>12}   share")
        for label, cycles in zip(labels, shown.values):
            pct = 100.0 * cycles / loc_stall
            print(f"       {label:<{rwidth}}  {cycles:>12,}  {pct:5.1f}%")

        if args.reasons and len(reasons) > args.reasons:
            rest = int(reasons.values[args.reasons:].sum())
            print(f"       {'(' + str(len(reasons) - args.reasons) + ' more)':<{rwidth}}"
                  f"  {rest:>12,}  {100.0 * rest / loc_stall:5.1f}%")

        if args.show_instructions:
            insn = (rows.groupby("Instruction")
                    .agg(Stall=("Stall", "sum"), Vaddr=("Vaddr", "min"))
                    .sort_values("Stall", ascending=False)
                    .head(args.show_instructions))
            print("     worst instructions:")
            for text, irow in insn.iterrows():
                print(f"       {int(irow['Stall']):>10,}  "
                      f"@0x{int(irow['Vaddr']):x}  {text}")

    tail = loc["Stall"].iloc[args.top:].sum()
    if tail:
        print(f"\nRemaining {len(loc) - len(top):,} location(s): "
              f"{int(tail):,} cycles ({100.0 * tail / total_stall:.1f}%)")


def main(argv: list[str] | None = None) -> int:
    p = argparse.ArgumentParser(
        description="Break down ATT PC-sampled stall cycles by source line.",
        formatter_class=argparse.ArgumentDefaultsHelpFormatter)
    p.add_argument("csv", help="stats_ui_output_agent_<n>_dispatch_<m>.csv")
    p.add_argument("-n", "--top", type=int, default=10,
                   help="number of stall locations to report")
    p.add_argument("-r", "--reasons", type=int, default=0,
                   help="max stall reasons per location (0 = all)")
    p.add_argument("--show-instructions", type=int, nargs="?", const=5, default=0,
                   metavar="K", help="also list the K worst instructions per location")
    p.add_argument("--max-chains", type=int, default=3,
                   help="max inline chains printed per location")
    p.add_argument("--file", dest="file_filter", default=None, metavar="SUBSTR",
                   help="only consider source locations containing SUBSTR")
    p.add_argument("--full-paths", action="store_true",
                   help="print full source paths instead of basenames")
    args = p.parse_args(argv)

    if args.top < 1:
        p.error("--top must be >= 1")

    df = load(args.csv)
    if df.empty:
        print(f"{args.csv}: no instruction rows (empty dispatch).")
        return 0

    if args.file_filter:
        df = df[df["Location"].str.contains(args.file_filter, regex=False)]
        if df.empty:
            print(f"No source locations matching {args.file_filter!r}.")
            return 0

    report(df, args)
    return 0


if __name__ == "__main__":
    sys.exit(main())
