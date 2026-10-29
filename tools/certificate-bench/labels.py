#!/usr/bin/env python3
"""Measure actual backend label certificates with shared first-pass prerequisites."""
import argparse, json, os, re, subprocess, time
from pathlib import Path
import sys
sys.path.insert(0,str(Path(__file__).resolve().parents[1]))
from reuse_backend_labels import ROOT, BASE, reused_source, original_source, eligible

def main():
    ap=argparse.ArgumentParser(description=__doc__)
    ap.add_argument('--work',type=Path,required=True)
    ap.add_argument('--labels',type=int,nargs='+',default=[79,461])
    ap.add_argument('--trials',type=int,default=3)
    ap.add_argument('--group',action='store_true',help='replay all selected functions together to amortize shared proofs')
    args=ap.parse_args();os.chdir(ROOT)
    out=args.work.resolve();out.mkdir(parents=True,exist_ok=True)
    if any(out.iterdir()):ap.error('use an empty work directory')
    assert args.trials>0 and all(eligible(n) for n in args.labels)
    base=subprocess.check_output(['lake','env','printenv','LEAN_PATH'],text=True).strip()
    lean=subprocess.check_output(['lake','env','which','lean'],text=True).strip()
    exp=ROOT/'verifier/.tools/comparator/.lake/packages/lean4export/.lake/build'
    env=os.environ.copy();env['LEAN_PATH']=str(out)+':'+str(exp/'lib/lean')+':'+base
    rows=[];cases=[]
    for n in args.labels:
        for mode in ['Original','Reused']:
            case=f'{mode}{n}';cases.append(case)
            s=original_source(n) if mode=='Original' else reused_source(n)
            s=f'import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectLabels0_{n}\nimport InitECandidate.Proofs.BackendStages.TargetChecks.CorrectEncode0_{n}\n'+s
            s=s.replace(f'localLabels1_{n}_eq',f'{case}_eq')
            s+=f'set_option linter.defProp false\nnamespace LabelBench{case}\nopen InitECandidate.Proofs.BackendStages.TargetChecks.Correct\ndef certificate := And.intro Reencode0_{n}_eq (And.intro localLabels0_{n}_eq {case}_eq)\n#print axioms certificate\nend LabelBench{case}\n'
            (out/(case+'.lean')).write_text(s)
    def run(case,trial,cmd,artifact):
        name=f'{case}-{trial}';start=time.monotonic();tf=out/(name+'.time')
        with (out/(name+'.log')).open('w') as log:
            r=subprocess.run(['/usr/bin/time','-v','-o',str(tf),'timeout','240',*cmd],env=env,stdout=log,stderr=subprocess.STDOUT)
        text=(out/(name+'.log')).read_text()
        for axioms in re.findall(r'depends on axioms: \[([^\]]*)\]',text):
            assert {x.strip() for x in axioms.split(',')} <= {'propext','Classical.choice','Quot.sound'}
        timing=tf.read_text()
        def value(key):
            m=re.search(re.escape(key)+r':\s*([0-9.]+)',timing)
            return float(m.group(1)) if m else None
        row=dict(case=case,trial=trial,exit=r.returncode,wall=time.monotonic()-start,user=value('User time (seconds)'),system=value('System time (seconds)'),peak_kib=value('Maximum resident set size (kbytes)'),artifact_bytes=artifact.stat().st_size if artifact.exists() else None,log=text)
        rows.append(row);(out/'results.json').write_text(json.dumps(rows,indent=2)+'\n');print(json.dumps(row),flush=True)
        if r.returncode:raise RuntimeError(name+' failed')
    for trial in range(args.trials):
        for case in cases if trial%2==0 else cases[::-1]:
            artifact=out/(case+'.olean')
            run(case,trial,[lean,'-j1','-o',str(artifact),str(out/(case+'.lean'))],artifact)
    replay_cases=[(case,f'LabelBench{case}.certificate') for case in cases]
    if args.group:
        replay_cases=[]
        for mode in ['Original','Reused']:
            case=mode+'Group'
            names=[f'{mode}{n}' for n in args.labels]
            text=''.join(f'import {name}\n' for name in names)
            proof=f'LabelBench{names[-1]}.certificate'
            for name in reversed(names[:-1]):proof=f'And.intro LabelBench{name}.certificate ({proof})'
            text+=f'set_option linter.defProp false\nnamespace LabelGroup\ndef certificate := {proof}\n#print axioms certificate\nend LabelGroup\n'
            (out/(case+'.lean')).write_text(text)
            artifact=out/(case+'.olean')
            run(case,'setup',[lean,'-j1','-o',str(artifact),str(out/(case+'.lean'))],artifact)
            replay_cases.append((case,'LabelGroup.certificate'))
    for case,certificate in replay_cases:
        file=out/(case+'.export.jsonl')
        with file.open('wb') as dst,(out/(case+'.export.log')).open('wb') as err:
            subprocess.run(['timeout','240',str(exp/'bin/lean4export'),case,'--',certificate],env=env,stdout=dst,stderr=err,check=True)
    for trial in range(args.trials):
        for case,_ in replay_cases if trial%2==0 else replay_cases[::-1]:
            file=out/(case+'.export.jsonl')
            run(case+'Replay',trial,[lean,'-j1','--run',str(Path(__file__).with_name('Replay.lean')),str(file)],file)

if __name__=='__main__':main()
