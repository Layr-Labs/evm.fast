#!/usr/bin/env python3
"""Refresh symbolic byte partitions and final-stage bounds after leaf regeneration.
Generated equations are checked by the candidate's ordinary Lean build.
"""
import json
import re
from pathlib import Path
from guest_layout import LAST_LABEL, STOP_LABEL

ROOT = Path(__file__).resolve().parents[1]
BASE = ROOT / "submission/InitECandidate/Proofs/BackendStages"
WORK = ROOT / "work/lean-perf/backend-stages"
IDS = [0, 1, 2, 4, 5, 6] + list(range(64, STOP_LABEL))
GROUPS = [(IDS[:6], "Stubs")] + [
    (list(range(a, min(a + 16, STOP_LABEL))), f"{a}_{min(a + 15, LAST_LABEL)}")
    for a in range(64, STOP_LABEL, 16)
]
HEADER = ("set_option autoImplicit false\nset_option maxRecDepth 1000000\n"
          "set_option maxHeartbeats 0\nnamespace InitECandidate.Proofs.BackendStages.BytePieces\n")
END = "end InitECandidate.Proofs.BackendStages.BytePieces\n"
positions = []
for ids, suffix in GROUPS:
    first = (BASE / f"Alignment{ids[0]}.lean").read_text()
    last = (BASE / f"Alignment{ids[-1]}.lean").read_text()
    start = int(re.search(r"linesUpdLabLen (\d+)", first)[1])
    end = int(re.search(r"Alignment\d+\.lines, (\d+)\)", last)[1])
    positions.append(start)
    path = BASE / f"FinalChunk{suffix}.lean"
    text = path.read_text()
    for operation in ["updLabLen", "encSecsAgain"]:
        bounds = iter([end, start])
        text = re.sub(rf"(LabToTarget\.{operation} )\d+", lambda m: m[1] + str(next(bounds)), text)
    if text != path.read_text():
        path.write_text(text)
positions.append(end)
path = BASE / "Final.lean"
lines = path.read_text().splitlines()
for i, line in enumerate(lines):
    m = re.match(r"theorem (?:alignment|rewrite)(\d+)_eq", line)
    if m:
        lines[i] = re.sub(r"(LabToTarget\.(?:updLabLen|encSecsAgain) )\d+",
                          lambda z: z[1] + str(positions[int(m[1])]), line)
updated_final = "\n".join(lines) + "\n"
if updated_final != path.read_text():
    path.write_text(updated_final)

position = 0
chunks = {}
manifest = []
for n in IDS:
    values = [int(v) for v in re.findall(r"(\d+)#8", (BASE / f"BytesData{n}.lean").read_text())]
    pieces = []
    cursor = 0
    text = "import InitECandidate.Proofs.ComputationCache\nimport Std\n" + HEADER
    while cursor < len(values):
        index = position // 4096
        size = min(4096 - position % 4096, len(values) - cursor)
        piece = f"piece{n}_{len(pieces)}"
        raw = f"raw{n}_{len(pieces)}"
        literal = "[" + ", ".join(f"{v}#8" for v in values[cursor:cursor + size]) + "]"
        text += f"def {raw} : List (BitVec 8) := {literal}\n"
        text += f"def {piece} : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue {raw}).val\n"
        text += f"theorem {piece}_eq : {piece} = {raw} := InitECandidate.Proofs.ComputationCache.boxedValue_eq {raw}\n"
        chunks.setdefault(index, []).append((n, piece))
        pieces.append(piece)
        cursor += size
        position += size
    path = BASE / f"BytePiecesData{n}.lean"
    updated = text + END
    if not path.exists() or path.read_text() != updated:
        path.write_text(updated)
    text = (f"import InitECandidate.Proofs.BackendStages.BytesData{n}\n"
            f"import InitECandidate.Proofs.BackendStages.BytePiecesData{n}\n" + HEADER)
    text += f"theorem section{n}_eq : ByteData.bytes{n} = [" + ", ".join(pieces) + "].flatten := by\n"
    if pieces:
        text += "  rw [" + ", ".join(p + "_eq" for p in pieces) + "]\n"
    text += f"  rfl\n#print axioms section{n}_eq\n" + END
    path = BASE / f"ByteSectionAgreement{n}.lean"
    if not path.exists() or path.read_text() != text:
        path.write_text(text)
    manifest.append(dict(identifier=n, length=len(values), pieces=pieces, start=position-len(values)))
for index, entries in chunks.items():
    text = "".join(f"import InitECandidate.Proofs.BackendStages.BytePiecesData{n}\n"
                   for n in dict.fromkeys(n for n, _ in entries))
    text += f"import InitECandidate.Bytes{index:03d}\n" + HEADER
    pieces = [p for _, p in entries]
    text += f"theorem candidate{index:03d}_eq : InitECandidate.bytes{index:03d} = [" + ", ".join(pieces) + "].flatten := by\n"
    text += "  rw [" + ", ".join(p + "_eq" for p in pieces) + "]\n"
    text += f"  rfl\n#print axioms candidate{index:03d}_eq\n" + END
    path = BASE / f"ByteCandidate{index:03d}.lean"
    if not path.exists() or path.read_text() != text:
        path.write_text(text)
WORK.mkdir(parents=True, exist_ok=True)
(WORK / "byte-pieces-manifest.json").write_text(json.dumps(manifest, indent=2) + "\n")
print(f"Prepared {position} native bytes in {len(chunks)} submitted chunks")
