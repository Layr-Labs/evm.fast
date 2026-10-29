#!/usr/bin/env python3
"""Check clash equations in parallel, then close every child premise explicitly."""
from pathlib import Path
import re
import sys
label = int(sys.argv[1])
root = Path(f"submission/InitECandidate/Proofs/ClashStages{label}")
ns = f"InitECandidate.Proofs.ClashStages{label}"
files = sorted(root.glob("Proof*.lean"), key=lambda p: int(p.stem[5:]))
pattern = re.compile(r"theorem (tree\d+_agree|node\d+_eq) : (.*?) := by\n(.*?)(?=\ntheorem |\nend )", re.S)
entries = [list(pattern.finditer(path.read_text())) for path in files]
types = {m[1]: m[2] for group in entries for m in group}
options = """set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.ClashComputation
"""
for folder in ["Conditional", "Compose"]:
    (root / folder).mkdir(exist_ok=True)
for i, group in enumerate(entries):
    cond = f"import {ns}.Data\nimport InitECandidate.Proofs.ClashComputation\nimport Flapjack.Compiler.Backend.WordAlloc.TotalColour\n" + options + f"namespace {ns}\n"
    comp = f"import {ns}.Conditional.Chunk{i:03}\n"
    if i:
        comp += f"import {ns}.Compose.Chunk{i-1:03}\n"
    comp += options + f"namespace {ns}\n"
    for m in group:
        name, conclusion, proof = m[1], m[2], m[3]
        children = list(dict.fromkeys(re.findall(r"\b(?:tree\d+_agree|node\d+_eq)\b", proof)))
        mapping = {child: f"child{k}" for k, child in enumerate(children)}
        binders = "".join(f"\n    ({mapping[child]} : {types[child]})" for child in children)
        proof = re.sub(r"\b(?:tree\d+_agree|node\d+_eq)\b", lambda m: mapping[m[0]], proof)
        cond += f"theorem {name}_conditional{binders} : {conclusion} := by\n{proof}\n"
        comp += f"theorem {name} : {conclusion} :=\n  {name}_conditional" + "".join(f" {child}" for child in children) + "\n"
    cond += f"end {ns}\n"
    comp += f"end {ns}\n"
    (root / "Conditional" / f"Chunk{i:03}.lean").write_text(cond)
    (root / "Compose" / f"Chunk{i:03}.lean").write_text(comp)
p = root / "Closed.lean"
s = p.read_text()
s = re.sub(rf"import {re.escape(ns)}\.Proof\d+", f"import {ns}.Compose.Chunk{len(files)-1:03}", s)
p.write_text(s)
print(f"Prepared {sum(map(len, entries))} conditional equations in {len(files)} parallel chunks")
