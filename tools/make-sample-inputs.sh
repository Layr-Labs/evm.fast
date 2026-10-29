#!/usr/bin/env bash
# make-sample-inputs.sh -- (re)generate the sampled EEST manifests that
# tools/check_all.sh runs and tools/eest-baseline.json records, from the
# fixture tag pinned in eest-fixture-tag.txt:
#
#   work/inputs            the first 30 blocks (the default sample)
#   work/inputs-seq        the first 300 blocks
#   work/inputs-rand       200 blocks drawn with --random --seed 1
#   work/inputs-rand2      300 blocks drawn with --random --seed 2
#   work/inputs-malformed  every block whose expected output is the
#                          decode-failure sentinel (schema_id 0)
#
# Existing directories are replaced. After a fixture-tag bump, refresh the
# baseline with `tools/eest-baseline.py update MANIFEST RESULTS.json` for each.
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
MK="$ROOT/tools/make-inputs.sh"
OUT_DIR="$ROOT/work/inputs"       "$MK" 30
OUT_DIR="$ROOT/work/inputs-seq"   "$MK" 300
OUT_DIR="$ROOT/work/inputs-rand"  "$MK" 200 --random --seed 1
OUT_DIR="$ROOT/work/inputs-rand2" "$MK" 300 --random --seed 2

# The malformed sample is selected from a full conversion by its expected
# output, so it does not depend on fixture names.
ALL="$ROOT/work/inputs-malformed-src"
rm -rf "$ALL" "$ROOT/work/inputs-malformed"
OUT_DIR="$ALL" "$MK" 0 >/dev/null   # --limit 0 converts every block
python3 - "$ALL" "$ROOT/work/inputs-malformed" <<'PY'
import os, shutil, sys
src, dst = sys.argv[1:]
os.makedirs(dst)
rows = []
for line in open(os.path.join(src, "manifest.tsv")):
    f = line.rstrip("\n").split("\t")
    if f[2][-4:] == "0000" and len(f[2]) == 86:   # 43-byte result, schema_id 0
        new = os.path.join(dst, os.path.basename(f[1]))
        shutil.copy(f[1], new)
        f[1] = new
        rows.append("\t".join(f))
open(os.path.join(dst, "manifest.tsv"), "w").write("\n".join(rows) + "\n")
print(f"work/inputs-malformed: {len(rows)} blocks")
PY
rm -rf "$ALL"
