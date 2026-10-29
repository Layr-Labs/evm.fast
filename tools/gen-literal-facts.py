#!/usr/bin/env python3
"""Regenerate the literal ROM length certificates from the image modules."""

from pathlib import Path
import re


root = Path(__file__).resolve().parent.parent
image_dir = root / "submission/InitECandidate"
families = (("Bytes", "nativeCode"), ("Prefix", "bootPrefix"), ("Suffix", "suffix"))
chunks = {}
for family, name in families:
    paths = sorted(image_dir.glob(f"{family}[0-9][0-9][0-9].lean"))
    if not paths:
        raise SystemExit(f"No {family} image modules found")
    chunks[name] = [(path.stem[0].lower() + path.stem[1:],
                     len(re.findall(r"0x[0-9a-f]+", path.read_text())))
                    for path in paths]

lines = [
    "import InitECandidate.Program",
    "",
    "set_option maxRecDepth 100000",
    "set_option maxHeartbeats 0",
    "",
    "namespace InitECandidate.Proofs.LiteralFacts",
    "",
]
for name, entries in chunks.items():
    for chunk, length in entries:
        lines.append(f"private theorem {chunk}_length : InitECandidate.{chunk}.length = {length} := by rfl")
    lines.append("")

for _, name in families:
    entries = chunks[name]
    lines += [
        f"theorem {name}_length : InitECandidate.{name}.length = {sum(length for _, length in entries)} := by",
        f"  simp only [InitECandidate.{name}, List.length_flatten, List.map_cons, List.map_nil,",
        "    List.sum_cons, List.sum_nil,",
    ]
    names = [f"{chunk}_length" for chunk, _ in entries]
    for start in range(0, len(names), 12):
        suffix = "," if start + 12 < len(names) else "]"
        lines.append("    " + ", ".join(names[start:start + 12]) + suffix)
    lines += ["  decide", ""]

code_length = sum(length for entries in chunks.values() for _, length in entries)
lines += [
    f"theorem code_length : InitECandidate.code.length = {code_length} := by",
    "  simp only [InitECandidate.code, List.length_append,",
    "    bootPrefix_length, nativeCode_length, suffix_length]",
    "",
    "#print axioms code_length",
    "end InitECandidate.Proofs.LiteralFacts",
]
(image_dir / "Proofs/LiteralFacts.lean").write_text("\n".join(lines) + "\n")
print(f"Generated literal facts for {code_length} image bytes")
