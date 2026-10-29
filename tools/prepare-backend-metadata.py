#!/usr/bin/env python3
"""Generate metadata proposals or check available section certificates, at most four workers."""
import argparse, concurrent.futures, fcntl, json, os, pathlib, signal, subprocess, time
root=pathlib.Path(__file__).resolve().parents[1]
work=root/'work/lean-perf/backend-metadata'
work.mkdir(parents=True,exist_ok=True)
backend=root/'work/lean-perf/backend-stages'
env=dict(os.environ,**json.loads((backend/'lean-env.json').read_text()))
env['LAKE_ARTIFACT_CACHE']='false'
compiler=(backend/'lean-compiler.txt').read_text().strip()
parser=argparse.ArgumentParser()
parser.add_argument('--generate',action='store_true')
parser.add_argument('--timeout',type=int,default=180)
parser.add_argument('--labels',nargs='*',type=int)
parser.add_argument('--modules',nargs='+')
parser.add_argument('--watch-seconds',type=int,default=0)
a=parser.parse_args()
def run_bounded(command,log):
    locks=work/'lean-slots';locks.mkdir(exist_ok=True)
    held=None
    while held is None:
        for n in range(4):
            candidate=(locks/f'slot{n}').open('a')
            try:fcntl.flock(candidate,fcntl.LOCK_EX|fcntl.LOCK_NB);held=candidate;break
            except BlockingIOError:candidate.close()
        if held is None:time.sleep(.1)
    process=subprocess.Popen(command,cwd=root,env=env,stdout=log,stderr=subprocess.STDOUT,start_new_session=True,pass_fds=(held.fileno(),))
    try:return process.wait(timeout=a.timeout)
    except subprocess.TimeoutExpired:
        os.killpg(process.pid,signal.SIGTERM)
        try:process.wait(timeout=5)
        except subprocess.TimeoutExpired:
            os.killpg(process.pid,signal.SIGKILL);process.wait()
        return 124
    finally:held.close()

def check(module):
    name=module.rsplit('.',1)[-1]
    source=root/("submission" if module.startswith("InitECandidate.") else ".")/(module.replace('.','/')+'.lean')
    output=root/'.lake/build/lib/lean'/(module.replace('.','/')+'.olean')
    output.parent.mkdir(parents=True,exist_ok=True)
    state=work/(name+'.json')
    dependencies=[source]
    for line in source.read_text().splitlines():
        if line.startswith('import '):
            for dependency in line[7:].split():
                local=root/'.lake/build/lib/lean'/(dependency.replace('.','/')+'.olean')
                if dependency.startswith('InitECandidate.Proofs.BackendStages.') and \
                   dependency.rsplit('.',1)[-1].startswith(('Data','Padded','Filtered')):
                    dependency_source=root/'submission'/(dependency.replace('.','/')+'.lean')
                    if dependency_source.exists():
                        while not local.exists() or local.stat().st_mtime_ns<dependency_source.stat().st_mtime_ns:
                            time.sleep(1)
                if local.exists():dependencies.append(local)
    if output.exists() and state.exists() and json.loads(state.read_text()).get('returncode')==0 and output.stat().st_mtime_ns>=max(p.stat().st_mtime_ns for p in dependencies):return 0
    start=time.monotonic()
    root_args=['-R','submission'] if module.startswith('InitECandidate.') else []
    with (work/(name+'.log')).open('w') as log:
        code=run_bounded(['taskset','-c','12-15','/usr/bin/time','-v','-o',str(work/(name+'.time')),compiler,*root_args,'-o',str(output),str(source)],log)
    (work/(name+'.json')).write_text(json.dumps({'returncode':code,'wall_seconds':time.monotonic()-start}))
    print(name,code,round(time.monotonic()-start,2),flush=True)
    return code
if a.generate:
    subprocess.run(['rtk','lake','build','Tools.GenBackendMetadata'],cwd=root,env=env,
                   check=True,stdout=subprocess.DEVNULL)
    driver=work/'Generate.lean'
    driver.write_text('import Tools.GenBackendMetadata\nimport InitECandidate.Proofs.BackendStages.Native\nset_option autoImplicit false\nrun_elab do\n  let env ← Lean.getEnv\n  liftM <| InitE.BackendMetadataGenerator.prepare env InitECandidate.Proofs.BackendStages.Native.stack\n')
    with (work/'generate.log').open('w') as log:
        subprocess.run(['taskset','-c','12-15',compiler,str(driver)],cwd=root,env=env,stdout=log,stderr=subprocess.STDOUT,timeout=a.timeout,check=True)
elif a.modules:
    with concurrent.futures.ThreadPoolExecutor(max_workers=4) as pool:
        results=list(pool.map(check,a.modules))
    if any(results):raise SystemExit(1)
else:
    data=root/'submission/InitECandidate/Proofs/BackendStages/Metadata'
    labels=a.labels if a.labels else sorted(int(p.stem[4:]) for p in data.glob('Data*.lean'))
    def check_section(n):
        if check(f'InitECandidate.Proofs.BackendStages.Metadata.Data{n}'):return 1
        results=[]
        for stage,dependency in [('Ffi','Filtered'),('Shmem','Padded')]:
            if (root/f'.lake/build/lib/lean/InitECandidate/Proofs/BackendStages/{dependency}{n}.olean').exists():
                results.append(check(f'InitECandidate.Proofs.BackendStages.Metadata.{stage}{n}'))
        return int(any(results))
    started=time.monotonic()
    while True:
        with concurrent.futures.ThreadPoolExecutor(max_workers=4) as pool:
            results=list(pool.map(check_section,labels))
        if any(results):raise SystemExit(1)
        completed=sum((work/(stage+str(n)+'.json')).exists() and json.loads((work/(stage+str(n)+'.json')).read_text()).get('returncode')==0 for n in labels for stage in ['Ffi','Shmem'])
        print('metadata certificate progress',completed,'/',2*len(labels),flush=True)
        if completed==2*len(labels) or time.monotonic()-started>=a.watch_seconds:break
        time.sleep(10)
