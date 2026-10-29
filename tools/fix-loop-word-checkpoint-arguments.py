#!/usr/bin/env python3
"""Migrate older checkpoint proposals to explicit loop live-set arguments.

The native generator already emits this form. This migration changes proofs
only; supplied data and compiled outputs stay identical.
"""
from pathlib import Path
import re
root = Path(__file__).resolve().parent.parent
count = 0
for path in (root / "submission/InitECandidate/Proofs/FrontendStages/Word").glob("Checkpoints*/Conditional/Chunk*.lean"):
    index = int(path.parents[1].name.removeprefix("Checkpoints"))
    text = path.read_text()
    blocks = re.split(r"(?=^theorem )", text, flags=re.M)
    changed = False
    for k, block in enumerate(blocks):
        pattern = r"  exact InitECandidate.Proofs.LoopWordComputation.comp_loop_checked _ _ _ _ _ _ _ (child\d+)\n"
        match = re.search(pattern, block)
        if not match:
            continue
        inputs = re.findall(r"Loop\.(loopBody\d+_\d+)", block[:match.start()])
        source = inputs[-1]
        child = match[1]
        proof = (
            f"  have h := InitECandidate.Proofs.LoopWordComputation.comp_loop_checked Word.context{index} "
            f"(match Loop.{source} with | .loop live _ _ => live | _ => .ln) "
            f"(match Loop.{source} with | .loop _ _ live => live | _ => .ln) _ _ _ _ {child}\n"
            "  conv at h => rhs; cbv\n  exact h\n"
        )
        blocks[k] = block[:match.start()] + proof + block[match.end():]
        changed = True
        count += 1
    if changed:
        path.write_text("".join(blocks))
print(f"Updated {count} loop certificates without changing their data")
