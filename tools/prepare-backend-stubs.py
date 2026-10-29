#!/usr/bin/env python3
"""Check six inserted initial sections under the same bounded backend admission."""
import pathlib,subprocess,sys,json
root=pathlib.Path(__file__).resolve().parents[1];work=root/"work/lean-perf/backend-stages";wrapper=root/"tools/prepare-backend-lean.py"
r=subprocess.run(["rtk","proxy","python3",str(wrapper),str(work/"GenerateInitialStubs.lean")],cwd=root,text=True,capture_output=True);print(r.stdout+r.stderr,flush=True);r.check_returncode()
for n in [0,1,2,4,5,6]:
 r=subprocess.run(["rtk","proxy","python3",str(wrapper),"-o",str(root/f".lake/build/lib/lean/InitECandidate/Proofs/BackendStages/Section{n}.olean"),str(root/f"submission/InitECandidate/Proofs/BackendStages/Section{n}.lean")],cwd=root,text=True,capture_output=True);print(r.stdout+r.stderr,flush=True);r.check_returncode()
 (work/f"Section{n}.check.json").write_text(json.dumps({"label":n,"returncode":r.returncode}))
for stage in ["Filtered","Encoded"]:
 r=subprocess.run(["rtk","proxy","python3",str(root/"tools/prepare-backend-lab.py"),stage,"0","1","2","4","5","6","--workers","1"],cwd=root);r.check_returncode()
