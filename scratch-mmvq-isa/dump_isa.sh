#!/bin/sh
# Dump amdgcn ISA for the 4 target kernels across a range of AMD ISAs.
# Usage: ./dump_isa.sh [arch ...]   (default: a representative sweep)
# Produces mmvq_probe.<arch>.s per target and prints VGPR/SGPR usage.
set -e
INC="-I../ggml/src/ggml-cuda -I../ggml/src -I../ggml/include"
ARCHES="${*:-gfx906 gfx90a gfx942 gfx1030 gfx1100 gfx1201}"

[ -f mmvq_probe.cu ] || sh gen_probe.sh

printf '%-9s %-7s | Q4K v/s | Q6K v/s\n' arch kernel
for arch in $ARCHES; do
  out=mmvq_probe.$arch.s
  hipcc -O3 --offload-arch=$arch -DGGML_USE_HIP $INC --cuda-device-only -S mmvq_probe.cu -o $out 2>/dev/null
  for f in 0 1; do
    q4v=$(grep "type12ELi1ELb${f}ELb0ELb0EE.*\.num_vgpr,"      $out | grep -oE '[0-9]+$' | head -1)
    q4s=$(grep "type12ELi1ELb${f}ELb0ELb0EE.*\.numbered_sgpr," $out | grep -oE '[0-9]+$' | head -1)
    q6v=$(grep "type14ELi1ELb${f}ELb0ELb0EE.*\.num_vgpr,"      $out | grep -oE '[0-9]+$' | head -1)
    q6s=$(grep "type14ELi1ELb${f}ELb0ELb0EE.*\.numbered_sgpr," $out | grep -oE '[0-9]+$' | head -1)
    lbl=$([ $f = 1 ] && echo fusion || echo plain)
    printf '%-9s %-7s | %3s/%-3s | %3s/%-3s\n' $arch $lbl "$q4v" "$q4s" "$q6v" "$q6s"
  done
done
