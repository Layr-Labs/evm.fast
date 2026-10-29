#!/usr/bin/env python3
"""Generate and certify final alignment/re-encoding/padding independently per section."""
from guest_layout import LAST_LABEL, STOP_LABEL
import pathlib,json,subprocess,time,concurrent.futures,sys
root=pathlib.Path(__file__).resolve().parents[1];work=root/"work/lean-perf/backend-stages"
def run(name,source,out=None):
 args=["rtk","proxy","/usr/bin/time","-v","-o",str(work/f"{name}.timing.log"),"python3",str(root/"tools/prepare-backend-lean.py")]
 if out:args += ["-o",str(out)]
 start=time.monotonic();r=subprocess.run(args+[str(source)],cwd=root,text=True,capture_output=True)
 (work/f"{name}.check.log").write_text(r.stdout+r.stderr);(work/f"{name}.check.json").write_text(json.dumps(dict(returncode=r.returncode,seconds=time.monotonic()-start)));print(name,r.returncode,flush=True);r.check_returncode()
def process(n):
 stages=["Alignment","FinalReencode","Padded"]
 corrected = n >= 596
 dataModule = f"CorrectData1_{n}" if corrected else f"Data1_{n}"
 inputName = f"Correct.Reencode1_{n}" if corrected else f"Reencode1_{n}"
 dataSource=root/f"submission/InitECandidate/Proofs/BackendStages/TargetChecks/{dataModule}.lean"
 dep=root/f".lake/build/lib/lean/InitECandidate/Proofs/BackendStages/TargetChecks/{dataModule}.olean"
 labelSource=root/"submission/InitECandidate/Proofs/BackendStages/TargetLabelsFinal.lean"
 labelOutput=root/".lake/build/lib/lean/InitECandidate/Proofs/BackendStages/TargetLabelsFinal.olean"
 while not (dep.exists() and dep.stat().st_mtime_ns >= dataSource.stat().st_mtime_ns and
            labelOutput.exists() and labelOutput.stat().st_mtime_ns >= labelSource.stat().st_mtime_ns):
  time.sleep(1)
 required=max(dataSource.stat().st_mtime_ns,labelSource.stat().st_mtime_ns)
 alignmentSource = root/f"submission/InitECandidate/Proofs/BackendStages/Alignment{n}.lean"
 stale=any(not (root/f"submission/InitECandidate/Proofs/BackendStages/{stage}{n}.lean").exists() or
           (root/f"submission/InitECandidate/Proofs/BackendStages/{stage}{n}.lean").stat().st_mtime_ns < required
           for stage in stages)
 stale=stale or (corrected and alignmentSource.exists() and "TargetChecks.CorrectData1_" not in alignmentSource.read_text())
 if stale:
  for stage in stages:
   for path in [root/f"submission/InitECandidate/Proofs/BackendStages/{stage}{n}.lean", work/f"{stage}{n}.check.json"]:
    if path.exists():path.unlink()
 def checked(stage):
  source=root/f"submission/InitECandidate/Proofs/BackendStages/{stage}{n}.lean"
  output=root/f".lake/build/lib/lean/InitECandidate/Proofs/BackendStages/{stage}{n}.olean"
  p=work/f"{stage}{n}.check.json"
  return (source.exists() and output.exists() and p.exists() and
          output.stat().st_mtime_ns>=source.stat().st_mtime_ns and
          p.stat().st_mtime_ns>=output.stat().st_mtime_ns and
          json.loads(p.read_text()).get("returncode")==0)
 if all(checked(s) for s in stages):return
 if not all((root/f"submission/InitECandidate/Proofs/BackendStages/{s}{n}.lean").exists() for s in stages):
  source=work/f"GenerateFinal{n}.lean"
  source.write_text(f"import Tools.GenBackendStages\nimport InitECandidate.Proofs.BackendStages.TargetChecks.{dataModule}\nimport InitECandidate.Proofs.BackendStages.TargetLabelsFinal\nimport InitECandidate.Proofs.BackendStages.TargetFfis\nopen Flapjack Flapjack.Compiler.Backend\nrun_meta do\n  let env ← Lean.getEnv\n  let input := InitECandidate.Proofs.BackendStages.TargetChecks.{inputName}\n  let position := ((sptLookup input.sectionId InitECandidate.Proofs.BackendStages.Target.labelsFinal).bind (sptLookup 0)).getD 0\n  liftM (InitE.BackendGenerator.generateAlignmentSection env position input)\n  let (lines, _) := LabToTarget.linesUpdLabLen position input.lines []\n  liftM (InitE.BackendGenerator.generateFinalSection env position InitECandidate.Proofs.BackendStages.Target.labelsFinal InitECandidate.Proofs.BackendStages.Target.ffis {{input with lines := lines}})\n")
  run(f"GenerateFinal{n}",source)
  if corrected:
   p=root/f"submission/InitECandidate/Proofs/BackendStages/Alignment{n}.lean"
   text=p.read_text().replace(f"TargetChecks.Data1_{n}",f"TargetChecks.CorrectData1_{n}").replace(f"TargetChecks.Reencode1_{n}",f"TargetChecks.Correct.Reencode1_{n}")
   p.write_text(text)
 for stage in stages:
  if checked(stage):continue
  name=f"{stage}{n}";run(name,root/f"submission/InitECandidate/Proofs/BackendStages/{name}.lean",root/f".lake/build/lib/lean/InitECandidate/Proofs/BackendStages/{name}.olean")
ids=[0,1,2,4,5,6]+list(range(64,STOP_LABEL))
with concurrent.futures.ThreadPoolExecutor(max_workers=4) as pool:list(pool.map(process,ids))
