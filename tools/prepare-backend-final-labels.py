#!/usr/bin/env python3
"""Certify local label tables after final alignment for target aggregate composition."""
from guest_layout import LAST_LABEL, STOP_LABEL
import pathlib,subprocess,json,time,re,concurrent.futures
root=pathlib.Path(__file__).resolve().parents[1];work=root/"work/lean-perf/backend-stages"
def process(n):
 name=f"AlignmentLabels{n}";cert=work/f"{name}.check.json"
 alignment=root/f"submission/InitECandidate/Proofs/BackendStages/Alignment{n}.lean"
 prior=root/f".lake/build/lib/lean/InitECandidate/Proofs/BackendStages/Alignment{n}.olean"
 alignmentCert=work/f"Alignment{n}.check.json"
 while not (alignment.exists() and prior.exists() and alignmentCert.exists() and
            prior.stat().st_mtime_ns>=alignment.stat().st_mtime_ns and
            alignmentCert.stat().st_mtime_ns>=prior.stat().st_mtime_ns and
            json.loads(alignmentCert.read_text()).get("returncode")==0):time.sleep(5)
 source=root/f"submission/InitECandidate/Proofs/BackendStages/{name}.lean"
 output=root/f".lake/build/lib/lean/InitECandidate/Proofs/BackendStages/{name}.olean"
 if (cert.exists() and source.exists() and output.exists() and
     json.loads(cert.read_text()).get("returncode")==0 and
     source.stat().st_mtime_ns>=alignment.stat().st_mtime_ns and
     output.stat().st_mtime_ns>=source.stat().st_mtime_ns and cert.stat().st_mtime_ns>=output.stat().st_mtime_ns):return
 original=alignment.read_text();position=int(re.search(r"linesUpdLabLen (\d+)",original).group(1))
 runner=work/f"GenerateAlignmentLabels{n}.lean"
 runner.write_text(f"import Tools.GenBackendStages\nimport InitECandidate.Proofs.BackendStages.Alignment{n}\nopen Lean Flapjack Flapjack.Compiler.Backend\nrun_meta do\n  let env ← Lean.getEnv\n  let (next, labels) := LabToTarget.sectionLabels {position} InitECandidate.Proofs.BackendStages.Alignment{n}.lines []\n  let text ← liftM (renderWordStage env (toExpr labels))\n  liftM (IO.FS.writeFile \"submission/InitECandidate/Proofs/BackendStages/{name}.lean\" (\"import InitECandidate.Proofs.BackendStages.Alignment{n}\\nset_option maxRecDepth 1000000\\nset_option maxHeartbeats 0\\nopen Flapjack Flapjack.Compiler.Backend\\nnamespace InitECandidate.Proofs.BackendStages\\ndef localLabelsFinal_{n} : List (Nat × Nat) :=\\n\" ++ text ++ s!\"\\ntheorem localLabelsFinal_{n}_eq : LabToTarget.sectionLabels {position} Alignment{n}.lines [] = ({{next}}, localLabelsFinal_{n}) := by\\n  with_unfolding_all rfl\\n#print axioms localLabelsFinal_{n}_eq\\nend InitECandidate.Proofs.BackendStages\\n\"))\n")
 for label,source,out in [(f"GenerateAlignmentLabels{n}",runner,None),(name,root/f"submission/InitECandidate/Proofs/BackendStages/{name}.lean",root/f".lake/build/lib/lean/InitECandidate/Proofs/BackendStages/{name}.olean")]:
  command=["rtk","proxy","python3",str(root/"tools/prepare-backend-lean.py")]
  if out:command += ["-o",str(out)]
  start=time.monotonic();r=subprocess.run(command+[str(source)],cwd=root,text=True,capture_output=True)
  (work/f"{label}.check.log").write_text(r.stdout+r.stderr);(work/f"{label}.check.json").write_text(json.dumps(dict(returncode=r.returncode,seconds=time.monotonic()-start)));print(label,r.returncode,flush=True);r.check_returncode()

with concurrent.futures.ThreadPoolExecutor(max_workers=4) as pool:
 list(pool.map(process,[0,1,2,4,5,6]+list(range(64,STOP_LABEL))))
