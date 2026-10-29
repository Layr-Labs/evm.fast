#!/usr/bin/env python3
"""Compose checked encoded-to-initial section bridges in 32-section chunks."""

import csv
from pathlib import Path

root = Path(__file__).resolve().parents[1]
base = root / "submission/InitECandidate/Proofs/BackendStages/TargetChecks"
labels = [int(row[0]) for row in csv.reader((root / "tools/target-encoding/Positions0.csv").open())]

for index, start in enumerate(range(0, len(labels), 32)):
    chunk = labels[start : start + 32]
    imports = "".join(
        f"import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge{n}\n"
        for n in chunk
    )
    input_sections = ", ".join(f"InitECandidate.Proofs.BackendStages.Encoded{n}" for n in chunk)
    output_sections = ", ".join(f"Initial{n}" for n in chunk)
    bridges = ", ".join(f"Initial{n}_eq" for n in chunk)
    text = (
        imports
        + "set_option autoImplicit false\nset_option maxHeartbeats 0\n"
        + "open Flapjack Flapjack.Compiler.Backend\n"
        + "namespace InitECandidate.Proofs.BackendStages.TargetChecks\n"
        + f"namespace OriginChunk{index}\n"
        + f"def input : LabSem.LabProgHOL 64 := [{input_sections}]\n"
        + f"def output : LabSem.LabProgHOL 64 := [{output_sections}]\n"
        + "theorem origin_eq : input = output := by\n"
        + f"  simp only [input, output, {bridges}]\n"
        + "#print axioms origin_eq\n"
        + f"end OriginChunk{index}\n"
        + "end InitECandidate.Proofs.BackendStages.TargetChecks\n"
    )
    (base / f"OriginChunk{index}.lean").write_text(text)

print(f"Prepared {(len(labels) + 31) // 32} origin chunks for {len(labels)} sections")
