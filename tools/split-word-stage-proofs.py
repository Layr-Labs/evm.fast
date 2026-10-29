#!/usr/bin/env python3
"""Separate Word stage data from proofs so independent pass checks can overlap.

Outputs a dedicated namespace; existing certificates remain available during
measurement. Every new proof has the same exact compiler pass proposition.
"""
from pathlib import Path
import argparse
import re
p = argparse.ArgumentParser()
p.add_argument("label", type=int)
p.add_argument("--independent-data", action="store_true")
a = p.parse_args()
root = Path(__file__).resolve().parent.parent
tag = "Parallel" if a.independent_data else "Shared"
base = root / f"submission/InitECandidate/Proofs/WordStages/{tag}{a.label}"
base.mkdir(exist_ok=True)
ns = f"InitECandidate.Proofs.WordStages.{tag}{a.label}"
for n in range(11):
    source = (root / f"submission/InitECandidate/Proofs/WordStages/Pass{a.label}_{n}.lean").read_text()
    boundary = source.index("private theorem checkpoint_input_eq") if n == 3 else source.index(f"theorem pass{a.label}_{n}_eq")
    prefix, proof = source[:boundary], source[boundary:]
    namespace = "namespace InitECandidate.Proofs.WordStages\n"
    options = prefix[:prefix.index(namespace)]
    options = "\n".join(line for line in options.splitlines() if not line.startswith("import ")) + "\n"
    data = prefix.replace("namespace InitECandidate.Proofs.WordStages", f"namespace {ns}")
    data = re.sub(rf"import InitECandidate.Proofs.WordStages.Pass{a.label}_(\d+)",
        lambda m: ("import InitE.SourceDeclarations" if a.independent_data and n != 6 else
                   f"import InitECandidate.Proofs.WordStages.{tag}{a.label}.Data{m.group(1)}"), data)
    data = data.replace(f"import InitECandidate.Proofs.DeadStages{a.label}\n", "")
    (base / f"Data{n}.lean").write_text(data + f"end {ns}\n")
    proof = proof.replace("end InitECandidate.Proofs.WordStages", f"end {ns}")
    imports = f"import InitECandidate.Proofs.WordStages.{tag}{a.label}.Data{n}\n"
    if a.independent_data:
        if n == 0:
            imports += f"import InitECandidate.Proofs.WordStages.Source{a.label}\n"
        else:
            imports += f"import InitECandidate.Proofs.WordStages.{tag}{a.label}.Data{n-1}\n"
    if n == 3:
        imports += f"import InitECandidate.Proofs.DeadStages{a.label}\n"
    (base / f"Proof{n}.lean").write_text(imports + options + f"namespace {ns}\n" + proof)
print(f"Separated eleven independent pass proofs for function {a.label}")
