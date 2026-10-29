#!/usr/bin/env python3
"""Close full native byte equality by symbolic checked fragment regrouping."""
from guest_layout import LAST_LABEL, STOP_LABEL
import pathlib,time,json,subprocess
root=pathlib.Path(__file__).resolve().parents[1];work=root/"work/lean-perf/backend-stages"
ids=[0,1,2,4,5,6]+list(range(64,STOP_LABEL));groups=["Stubs"]+[f"{a}_{min(a+15,LAST_LABEL)}" for a in range(64,STOP_LABEL,16)]
manifest=json.loads((work/"byte-pieces-manifest.json").read_text())
candidate_count=(sum(entry["length"] for entry in manifest)+4095)//4096
for name in [f"ByteSectionAgreement{n}" for n in ids]+[f"ByteCandidate{i:03d}" for i in range(candidate_count)]:
 source=root/f"submission/InitECandidate/Proofs/BackendStages/{name}.lean"
 output=root/f".lake/build/lib/lean/InitECandidate/Proofs/BackendStages/{name}.olean"
 dep=work/f"{name}.check.json"
 while not (source.exists() and output.exists() and dep.exists() and
            output.stat().st_mtime_ns>=source.stat().st_mtime_ns and
            dep.stat().st_mtime_ns>=output.stat().st_mtime_ns):time.sleep(5)
 if json.loads(dep.read_text())["returncode"]:raise RuntimeError(str(dep))
bytesSource=root/"submission/InitECandidate/Proofs/BackendStages/BytesData.lean"
bytesOutput=root/".lake/build/lib/lean/InitECandidate/Proofs/BackendStages/BytesData.olean"
while not (bytesOutput.exists() and bytesOutput.stat().st_mtime_ns>=bytesSource.stat().st_mtime_ns):time.sleep(5)
s="import InitECandidate.Proofs.BackendStages.BytesData\nimport InitECandidate.Program\n"+"".join(f"import InitECandidate.Proofs.BackendStages.ByteSectionAgreement{n}\n" for n in ids)+"".join(f"import InitECandidate.Proofs.BackendStages.ByteCandidate{i:03d}\n" for i in range(candidate_count))
s+="set_option autoImplicit false\nset_option maxRecDepth 1000000\nset_option maxHeartbeats 0\nset_option linter.unusedSimpArgs false\nnamespace InitECandidate.Proofs.BackendStages.BytePieces\n"
s+="theorem nativeCode_eq : ByteData.full = InitECandidate.nativeCode := by\n  simp only ["+", ".join(["ByteData.full"]+[f"ByteData.chunks{i}" for i in range(len(groups)+1)]+[f"BytesChunkData{g}.bytes" for g in groups]+["InitECandidate.nativeCode"]+[f"section{n}_eq" for n in ids]+[f"candidate{i:03d}_eq" for i in range(candidate_count)]+["List.flatten_cons","List.flatten_nil","List.append_assoc","List.append_nil","List.nil_append"])+"]\n#print axioms nativeCode_eq\nend InitECandidate.Proofs.BackendStages.BytePieces\n"
source=root/"submission/InitECandidate/Proofs/BackendStages/ByteAgreement.lean";source.write_text(s);start=time.monotonic()
r=subprocess.run(["rtk","proxy","python3",str(root/"tools/prepare-backend-lean.py"),"-o",str(root/".lake/build/lib/lean/InitECandidate/Proofs/BackendStages/ByteAgreement.olean"),str(source)],cwd=root,text=True,capture_output=True)
(work/"ByteAgreement.check.log").write_text(r.stdout+r.stderr);(work/"ByteAgreement.check.json").write_text(json.dumps(dict(returncode=r.returncode,seconds=time.monotonic()-start)));print(r.stdout+r.stderr);r.check_returncode()
