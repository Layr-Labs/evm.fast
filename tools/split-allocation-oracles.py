#!/usr/bin/env python3
"""Split a generated Lean oracle table into small data-only modules.

Usage: tools/split-allocation-oracles.py work/lean-perf/word-stages/AllocationOracles.lean
The compiler validates these proposals; this script establishes no proof.
"""
import argparse
from pathlib import Path


def split_entries(text):
    declaration = "def allocationOracles : List (Option (Flapjack.Spt Nat)) :="
    body = text.split(declaration, 1)[1].rsplit("end InitE", 1)[0].strip()
    if not (body.startswith("[") and body.endswith("]")):
        raise ValueError("expected a complete list literal")
    result, start, depth = [], 0, 0
    body = body[1:-1]
    for index, char in enumerate(body):
        if char in "([":
            depth += 1
        elif char in ")]":
            depth -= 1
            if depth < 0:
                raise ValueError("unbalanced literal")
        elif char == "," and depth == 0:
            result.append(body[start:index].strip())
            start = index + 1
    if depth:
        raise ValueError("unbalanced literal")
    if body[start:].strip():
        result.append(body[start:].strip())
    if any(not entry or "⋯" in entry for entry in result):
        raise ValueError("incomplete literal")
    return result


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("input", type=Path)
    parser.add_argument("--expected-count", type=int, default=826)
    parser.add_argument("--chunk-size", type=int, default=16)
    args = parser.parse_args()
    entries = split_entries(args.input.read_text())
    if len(entries) != args.expected_count or args.chunk_size <= 0:
        raise ValueError("unexpected count or invalid chunk size")
    root = Path(__file__).resolve().parents[1]
    out = root / "submission/InitECandidate/Proofs/AllocationOracles"
    out.mkdir(exist_ok=True)
    imports, names, lengths = [], [], []
    for index, offset in enumerate(range(0, len(entries), args.chunk_size)):
        name = f"chunk{index:03d}"
        module = f"Chunk{index:03d}"
        chunk = entries[offset:offset + args.chunk_size]
        content = ("import Flapjack.Misc.Sptree\n\nset_option maxRecDepth 1000000\n"
                   "set_option maxHeartbeats 0\nnamespace InitECandidate.Proofs.AllocationOracles\n"
                   "-- Native proposals; compiler validation is required in the stage proofs.\n"
                   f"def {name} : List (Option (Flapjack.Spt Nat)) :=\n[" +
                   ",\n".join(chunk) + "]\n" +
                   f"theorem {name}_length : {name}.length = {len(chunk)} := by rfl\n"
                   "end InitECandidate.Proofs.AllocationOracles\n")
        (out / f"{module}.lean").write_text(content)
        imports.append(f"import InitECandidate.Proofs.AllocationOracles.{module}")
        names.append(f"AllocationOracles.{name}")
        lengths.append(f"AllocationOracles.{name}_length")
    content = ("\n".join(imports) + "\n\nnamespace InitE\nopen InitECandidate.Proofs\n"
               "def allocationOracles : List (Option (Flapjack.Spt Nat)) :=\n  [" +
               ", ".join(names) + "].flatten\n"
               f"theorem allocationOracles_length : allocationOracles.length = {len(entries)} := by\n"
               "  simp [allocationOracles, " + ", ".join(lengths) + "]\nend InitE\n")
    (root / "submission/InitECandidate/Proofs/AllocationOracles.lean").write_text(content)
    print(f"Wrote {len(names)} chunks containing {len(entries)} checked-hint proposals")


if __name__ == "__main__":
    main()
