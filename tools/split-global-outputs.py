#!/usr/bin/env python3
"""Separate generated global output values from translation proof lanes.
Run after GenWordStages --frontend-globals. Qualified definitions are preserved.
"""
from pathlib import Path
import re
root = Path(__file__).resolve().parent.parent
base = root / "submission/InitECandidate/Proofs/FrontendStages/Globals"
for path in base.glob("Translate*.lean"):
    index = path.stem.removeprefix("Translate")
    text = path.read_text()
    marker = f"theorem globalTranslate{index}_eq"
    if f"def globalOutput{index}" not in text:
        continue
    before, proofs = text.split(marker, 1)
    output = re.sub(r"^import InitE\.FrontendStages\.Globals\.Translate\d+\n", "", before, flags=re.M)
    (base / f"Output{index}.lean").write_text(output + "end InitECandidate.Proofs.FrontendStages.Declarations\n")
    prefix = before[:before.index(f"def globalBody{index}_")]
    prefix = f"import InitECandidate.Proofs.FrontendStages.Globals.Output{index}\n" + prefix
    path.write_text(prefix + marker + proofs)
print("Global outputs separated from proof lanes")
