#!/usr/bin/env python3
"""Link independently generated stack literals to certified optimizer outputs."""
from pathlib import Path
from guest_layout import STOP_LABEL
root = Path(__file__).resolve().parents[1]
directory = root / "submission/InitECandidate/Proofs/WordBackend/StackAgreement"
directory.mkdir(parents=True, exist_ok=True)
labels = range(64, STOP_LABEL)
chunks = []
for start in range(64, STOP_LABEL, 16):
    selected = range(start, min(start + 16, STOP_LABEL))
    module = f"InitECandidate.Proofs.WordBackend.StackAgreement.Chunk{start}"
    chunks.append(module)
    imports = "".join(f"import InitECandidate.Proofs.WordStages.Optimize{n}\nimport InitECandidate.Proofs.StackAnalysis.Data{n}\n" for n in selected)
    text = imports + "set_option autoImplicit false\nset_option Elab.async false\nset_option maxRecDepth 1000000\nset_option maxHeartbeats 0\nnamespace InitECandidate.Proofs.WordBackend.StackAgreement\n"
    for n in selected:
        text += f"theorem function{n}_eq : InitECandidate.Proofs.WordStages.optimized{n} = InitECandidate.Proofs.StackAnalysis.optimized{n} := by rfl\n"
    text += "end InitECandidate.Proofs.WordBackend.StackAgreement\n"
    (directory / f"Chunk{start}.lean").write_text(text)
text = "import InitECandidate.Proofs.WordBackend.FunctionsFacts\nimport InitECandidate.Proofs.StackAnalysis.Data\n"
text += "".join(f"import {module}\n" for module in chunks)
text += "set_option autoImplicit false\nset_option Elab.async false\nset_option maxRecDepth 1000000\nset_option maxHeartbeats 0\nnamespace InitECandidate.Proofs.WordBackend.StackAgreement\n"
text += "private theorem cons_eq {α : Type} {a b : α} {xs ys : List α} (h : a = b) (t : xs = ys) : a :: xs = b :: ys := by\n  cases h\n  cases t\n  rfl\n"
text += "theorem outputs_eq : InitECandidate.Proofs.WordBackend.outputs = InitECandidate.Proofs.StackAnalysis.outputs := by\n  exact "
# Explicit constructor congruence shares each checked literal agreement; no
# full compiler or call-depth evaluation takes place in the aggregate.
text += "".join(f"(cons_eq function{n}_eq " for n in labels)
text += "rfl" + ")" * len(labels) + "\n#print axioms outputs_eq\nend InitECandidate.Proofs.WordBackend.StackAgreement\n"
(root / "submission/InitECandidate/Proofs/WordBackend/StackAgreement.lean").write_text(text)
print(f"Prepared {len(chunks)} independent literal-agreement chunks")
