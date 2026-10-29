#!/usr/bin/env python3
"""Bound backend proposal/kernel workers with thirty shared advisory slots."""
import fcntl,json,os,pathlib,subprocess,sys,time
root=pathlib.Path(__file__).resolve().parents[1];work=root/"work/lean-perf/backend-stages"
locks=work/"lean-slots";locks.mkdir(exist_ok=True)
held=None
while held is None:
 for n in range(30):
  handle=(locks/f"slot{n}").open("a")
  try:fcntl.flock(handle,fcntl.LOCK_EX|fcntl.LOCK_NB);held=handle;break
  except BlockingIOError:handle.close()
 if held is None:time.sleep(.1)
env=os.environ.copy();env.update(json.loads((work/"lean-env.json").read_text()));env["LAKE_ARTIFACT_CACHE"]="false"
os.sched_setaffinity(0, set(range(30)))
args=sys.argv[1:]
if any(arg.endswith(".lean") and pathlib.Path(arg).resolve().is_relative_to(root / "submission") for arg in args):
 args=["-R",str(root / "submission"),*args]
try:result=subprocess.run([(work/"lean-compiler.txt").read_text().strip(),*args],cwd=root,env=env,timeout=600)
except subprocess.TimeoutExpired:raise SystemExit(124)
raise SystemExit(result.returncode)
