#!/usr/bin/env python3
import pathlib,subprocess
root=pathlib.Path(__file__).resolve().parents[1];work=root/"work/lean-perf/backend-stages"
children=[]
for stage,script in [(s,script) for s in ["Filtered","Encoded"] for script in ["prepare-backend-lab-chunks.py","prepare-backend-lab-full.py"]]:
 log=(work/f"{stage}-{script}-service.log").open("a")
 children.append(subprocess.Popen(["python3",str(root/"tools"/script),stage],cwd=root,stdout=log,stderr=subprocess.STDOUT))
raise SystemExit(any(p.wait()!=0 for p in children))
