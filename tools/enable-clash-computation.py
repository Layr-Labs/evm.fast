#!/usr/bin/env python3
"""Keep computation imports for legacy and compact monolithic proofs.

Sorted-validator cbv attributes apply only to legacy cbv proofs. Compact
certificates use the original structurally recursive validator through kernel
conversion; mergeSort-based validator equations are reserved for legacy cbv.
"""
from pathlib import Path
count = 0
for path in Path("submission/InitECandidate/Proofs/WordStages").glob("*.lean"):
    if not (path.stem.startswith("Optimize") or (path.stem.startswith("Pass") and path.stem.endswith("_9"))):
        continue
    text = path.read_text()
    uses_cbv = "  conv => lhs; cbv\n" in text
    uses_compact = "kernel_rfl" in text
    if not (uses_cbv or uses_compact):
        continue
    if uses_compact and "import InitECandidate.Proofs.CompactComputation\n" not in text:
        text = "import InitECandidate.Proofs.CompactComputation\n" + text
    if not uses_cbv:
        path.write_text(text)
        count += 1
        continue
    if "import InitECandidate.Proofs.ClashComputation\n" not in text:
        text = "import InitECandidate.Proofs.ClashComputation\n" + text
    text = text.replace("open scoped InitECandidate.Proofs.CompilerComputation\n", "open scoped InitECandidate.Proofs.CompilerComputation InitECandidate.Proofs.ClashComputation\n")
    path.write_text(text)
    count += 1
print(f"Enabled certified sorted checker in {count} monolithic proofs")
