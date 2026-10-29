#!/usr/bin/env python3
"""Wait for section metadata certificates, then check the aggregate endpoints."""
import concurrent.futures,json,pathlib,subprocess,sys,time,os,signal
root=pathlib.Path(__file__).resolve().parents[1]
work=root/'work/lean-perf/backend-metadata'
base=root/'submission/InitECandidate/Proofs/BackendStages/Metadata'
ids=[int(p.stem[4:]) for p in base.glob('Data*.lean')]
start=time.monotonic()
def successful(name):
    p=work/(name+'.json')
    source=base/(name+'.lean')
    output=root/('.lake/build/lib/lean/InitECandidate/Proofs/BackendStages/Metadata/'+name+'.olean')
    stage='Data' if name.startswith('Ffi') else 'Padded'
    label=name[3:] if name.startswith('Ffi') else name[5:]
    dependency=root/('.lake/build/lib/lean/InitECandidate/Proofs/BackendStages/'+('Metadata/' if stage=='Data' else '')+stage+label+'.olean')
    try:return (json.loads(p.read_text()).get('returncode')==0 and
                output.stat().st_mtime_ns>=source.stat().st_mtime_ns and
                output.stat().st_mtime_ns>=dependency.stat().st_mtime_ns)
    except (OSError,json.JSONDecodeError):return False
while not all(successful(stage+str(n)) for n in ids for stage in ['Ffi','Shmem']):
    if time.monotonic()-start>28800:raise SystemExit('metadata sections still pending after eight hours')
    time.sleep(10)
# Give the section watcher time to drain its final two compiler processes.
time.sleep(10)
modules=['InitECandidate.Proofs.BackendStages.Metadata.'+p.stem for p in sorted(base.glob('Chunk*.lean'))]
subprocess.run([sys.executable,str(root/'tools/prepare-backend-metadata.py'),'--modules',*modules],cwd=root,check=True)
subprocess.run([sys.executable,str(root/'tools/prepare-backend-metadata.py'),'--modules','InitECandidate.Proofs.BackendStages.Metadata.FinalData'],cwd=root,check=True)
subprocess.run([sys.executable,str(root/'tools/prepare-backend-metadata.py'),'--modules','InitECandidate.Proofs.BackendStages.Metadata.LiteralFacts','--timeout','600'],cwd=root,check=True)
while not all((root/('.lake/build/lib/lean/InitECandidate/Proofs/BackendStages/'+name+'.olean')).exists() for name in ['Filtered','Final']):
    if time.monotonic()-start>28800:raise SystemExit('canonical Filtered/Final modules still pending after eight hours')
    time.sleep(10)
subprocess.run([sys.executable,str(root/'tools/prepare-backend-metadata.py'),'--modules','InitECandidate.Proofs.BackendStages.Metadata.Facts','--timeout','600'],cwd=root,check=True)
print('METADATA_ALL_ENDPOINTS_PASSED',flush=True)
