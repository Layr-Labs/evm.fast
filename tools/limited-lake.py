#!/usr/bin/env python3
"""Run Lake (or an entire verifier command) with project-local Lean admission locks.

Example: python3 tools/limited-lake.py --slots 16 -- lake build InitECandidate.Proofs.WordBackend.FunctionsFacts
The installed toolchain is read only. This controls external Lean processes, not
proof evaluation, trust levels, or native proposals. Child Lake phases that retain
the launcher environment share its locks. Verifiers that sanitize environments
must explicitly propagate the limiter variables; wrapping them alone is insufficient. Waiting native launchers are cheap; use TasksMax16384 for a large
fresh verifier because Lake still creates waiting processes and I/O threads.
"""
import argparse
import hashlib
import json
import os
from pathlib import Path
import subprocess
import tempfile

parser=argparse.ArgumentParser(description=__doc__)
parser.add_argument("--slots",type=int,default=30,choices=range(1,33))
parser.add_argument("--work-dir",type=Path)
parser.add_argument("--project-dir",type=Path,help="Project root when running a copied trusted helper")
parser.add_argument("command",nargs=argparse.REMAINDER)
args=parser.parse_args()
root=(args.project_dir or Path(__file__).resolve().parents[1]).resolve()
work=(args.work_dir or root/"work/lean-perf/small-optimizer/limiter").resolve()
if not work.is_relative_to(root):
    raise SystemExit("Limiter work directory must stay inside the project")
work.mkdir(parents=True,exist_ok=True)
# Nested launches use the actual underlying compiler and reuse the same locks.
underlying=os.environ.get("LEAN_LIMIT_REAL")
if underlying:
    actual=Path(underlying).resolve()
    real=actual.parent.parent
    if actual.name!="lean" or actual.parent.name!="bin" or not (real/"bin/lake").is_file():
        raise SystemExit("Invalid inherited underlying compiler; refusing nested invocation")
else:
    # Elan selects the pinned toolchain; no config/dependency update.
    selected=subprocess.check_output(["lean","--print-prefix"],cwd=root,text=True).strip()
    actual=(Path(selected)/"bin/lean").resolve()
    if actual.name!="lean" or actual.parent.name!="bin":
        raise SystemExit("Selected virtual/wrapped compiler lacks LEAN_LIMIT_REAL; refusing recursion")
    real=actual.parent.parent
if not (real/"bin/lean").is_file():
    raise SystemExit(f"Invalid selected toolchain: {real}")
source=Path(__file__).resolve().with_name("lean-process-limit.c")
digest=hashlib.sha256(source.read_bytes()).hexdigest()
binary=work/("lean-limit-"+digest[:16])
if not binary.exists():
    pending=work/(binary.name+f".tmp-{os.getpid()}")
    subprocess.run(["cc","-O2","-std=c11","-Wall","-Wextra","-Werror",str(source),"-o",str(pending)],check=True,cwd=root)
    pending.replace(binary)
# Stable virtual sysroot keeps paths/cache traces stable across invocations.
identity=hashlib.sha256(str(real).encode()).hexdigest()[:16]
sysroot=work/("toolchain-"+identity)
sysroot.mkdir(exist_ok=True)
bin_dir=sysroot/"bin"
bin_dir.mkdir(exist_ok=True)
def link(target,path):
    if path.is_symlink():
        if path.resolve()==target.resolve(): return
        path.unlink()
    elif path.exists():
        raise SystemExit(f"Refusing to replace non-symlink {path}")
    path.symlink_to(target,target_is_directory=target.is_dir())
for entry in real.iterdir():
    if entry.name!="bin": link(entry,sysroot/entry.name)
for entry in (real/"bin").iterdir():
    if entry.name!="lean": link(entry,bin_dir/entry.name)
link(binary,bin_dir/"lean")
inherited_locks=os.environ.get("LEAN_LIMIT_LOCK_DIR")
if underlying and inherited_locks:
    run=Path(inherited_locks).resolve()
    try: inherited_slots=int(os.environ["LEAN_LIMIT_SLOTS"])
    except (KeyError,ValueError): raise SystemExit("Invalid inherited slot count")
    if not run.is_dir() or not run.is_relative_to(root) or inherited_slots not in range(1,33):
        raise SystemExit("Invalid inherited project-local locks")
    args.slots=min(args.slots,inherited_slots)
    metadata_name=f"nested-{os.getpid()}.json"
else:
    run=Path(tempfile.mkdtemp(prefix="run-",dir=work))
    metadata_name="run.json"
for slot in range(args.slots): (run/f"slot-{slot}.lock").touch(mode=0o600)
env=os.environ.copy()
env.update({"LAKE_OVERRIDE_LEAN":"1","LEAN_SYSROOT":str(sysroot),
    "LEAN_LIMIT_REAL":str(real/"bin/lean"),"LEAN_LIMIT_LOCK_DIR":str(run),
    "LEAN_LIMIT_SLOTS":str(args.slots)})
command=args.command
if command and command[0]=="--": command=command[1:]
if not command: parser.error("Supply -- lake build <targets> or a verifier command")
if command[0]=="lake": command[0]=str(real/"bin/lake")
metadata={"slots":args.slots,"real_toolchain":str(real),"virtual_toolchain":str(sysroot),
    "wrapper_source_sha256":digest,"launcher_source_sha256":hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
    "command":command,"lock_directory":str(run)}
(run/metadata_name).write_text(json.dumps(metadata,indent=2)+"\n")
result=subprocess.run(command,cwd=root,env=env)
raise SystemExit(result.returncode)
