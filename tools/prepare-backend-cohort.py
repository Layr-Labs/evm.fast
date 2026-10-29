#!/usr/bin/env python3
"""Persistent lower-backend scheduler; child Lean admission is shared/bounded."""
import json,os,pathlib,subprocess,time
root=pathlib.Path(__file__).resolve().parents[1];work=root/"work/lean-perf/backend-stages"
commands=[
 ["prepare-backend-lower.py","Alloc","--all","--check","--workers","1"],
 ["prepare-backend-lower.py","Removed","--all","--check","--workers","1"],
 ["prepare-backend-lower.py","Named","--all","--check","--workers","1"],
 ["prepare-backend-sections.py","--all","--check","--workers","1"],
 ["prepare-backend-lab.py","Filtered","--all","--workers","1"],
 ["prepare-backend-lab.py","Encoded","--all","--workers","1"],
 ["prepare-backend-raw-chunks.py"],
 ["prepare-backend-lower-chunks.py","Alloc"],
 ["prepare-backend-lower-chunks.py","Removed"],
 ["prepare-backend-lower-chunks.py","Named"],
 ["prepare-backend-section-chunks.py"],
 ["prepare-backend-raw-full.py"],
 ["prepare-backend-lower-full.py","Alloc"],
 ["prepare-backend-lower-full.py","Removed"],
 ["prepare-backend-lower-full.py","Named"],
 ["prepare-backend-sections-full.py"]]
children=[]
for index,args in enumerate(commands):
 log=(work/f"cohort-{index}.log").open("a")
 command=["python3",str(root/"tools"/args[0]),*args[1:]]
 child=subprocess.Popen(command,cwd=root,stdout=log,stderr=subprocess.STDOUT)
 children.append((child,args,log))
(work/"cohort-pids.json").write_text(json.dumps([dict(pid=p.pid,command=args) for p,args,_ in children],indent=2))
while any(p.poll() is None for p,_,_ in children):
 (work/"cohort-state.json").write_text(json.dumps([dict(pid=p.pid,command=args,returncode=p.poll()) for p,args,_ in children],indent=2))
 time.sleep(10)
failed=[args for p,args,_ in children if p.returncode]
print(f"Complete; failed cohorts: {failed}",flush=True)
raise SystemExit(bool(failed))
