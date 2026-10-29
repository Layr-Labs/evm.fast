#!/usr/bin/env python3
"""Check final original-config artifact endpoint once all staged dependencies exist."""
import pathlib,time,subprocess,json,re
root=pathlib.Path(__file__).resolve().parents[1];work=root/"work/lean-perf/backend-stages"
source=root/"submission/InitECandidate/Proofs/BackendStages/Artifact.lean"
for module in re.findall(r"^import (.*)$",source.read_text(),re.M):
 while not (root/".lake/build/lib/lean"/(module.replace(".","/")+".olean")).exists():time.sleep(5)
start=time.monotonic()
r=subprocess.run(["rtk","proxy","/usr/bin/time","-v","-o",str(work/"Artifact.timing.log"),"python3",str(root/"tools/prepare-backend-lean.py"),"-o",str(root/".lake/build/lib/lean/InitECandidate/Proofs/BackendStages/Artifact.olean"),str(source)],cwd=root,text=True,capture_output=True)
(work/"Artifact.check.log").write_text(r.stdout+r.stderr);(work/"Artifact.check.json").write_text(json.dumps(dict(returncode=r.returncode,seconds=time.monotonic()-start)));print(r.stdout+r.stderr);r.check_returncode()
