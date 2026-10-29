#!/usr/bin/env python3
"""Print a Lean List literal from flapjack-compile --hex output.

For smaller Lean modules, split the hex file into chunks before invoking this
utility. This converts artifacts; it does not prove compiler correspondence.
"""
import argparse
from pathlib import Path

parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument("hex_file", type=Path)
parser.add_argument("--name", default="code")
args = parser.parse_args()
values = args.hex_file.read_text().split()
if any(len(value) != 2 or any(c not in "0123456789abcdef" for c in value) for value in values):
    raise SystemExit("expected lowercase two-digit bytes from flapjack-compile --hex")
print(f"def {args.name} : List (BitVec 8) := [")
for start in range(0, len(values), 16):
    print("  " + ", ".join("0x" + b for b in values[start:start + 16]) +
          ("," if start + 16 < len(values) else ""))
print("]")
