#!/usr/bin/env python3
import pathlib,subprocess
root=pathlib.Path(__file__).resolve().parents[1];work=root/"work/lean-perf/backend-stages"
children=[]
for stage in ["Filtered","Encoded"]:
 log=(work/f"{stage}-full-service.log").open("a")
 children.append(subprocess.Popen(["python3",str(root/"tools/prepare-backend-lab-full.py"),stage],cwd=root,stdout=log,stderr=subprocess.STDOUT))
results=[p.wait() for p in children]
raise SystemExit(any(results))
