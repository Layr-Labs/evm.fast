#!/usr/bin/env python3
"""Check independent final target prototypes with CPU/memory measurements."""
import pathlib,subprocess,time,json,os
root=pathlib.Path(__file__).resolve().parents[1];work=root/"work/lean-perf/backend-stages"
for n in [66,64,713]:
 for stage in ["Alignment","FinalReencode","Padded"]:
  name=f"{stage}{n}"
  cert=work/f"{name}.check.json"
  if cert.exists() and json.loads(cert.read_text()).get("returncode")==0: continue
  started=time.monotonic()
  r=subprocess.run(["rtk","proxy","/usr/bin/time","-v","-o",str(work/f"{name}.timing.log"),"python3",str(root/"tools/prepare-backend-lean.py"),"-o",str(root/f".lake/build/lib/lean/InitECandidate/Proofs/BackendStages/{name}.olean"),str(root/f"submission/InitECandidate/Proofs/BackendStages/{name}.lean")],cwd=root,env=dict(os.environ,LAKE_ARTIFACT_CACHE="false"),text=True,capture_output=True)
  (work/f"{name}.check.log").write_text(r.stdout+r.stderr);(work/f"{name}.check.json").write_text(json.dumps(dict(returncode=r.returncode,seconds=time.monotonic()-started)));print(f"{name}: {r.returncode} {time.monotonic()-started:.2f}s\n{r.stdout+r.stderr}",flush=True);r.check_returncode()
