#!/usr/bin/env python3
"""Benchmark cached encoding equations on ordinary asm lines extracted from a real guest function.

The ordered ordinary-asm subsequence is a small real subset, not a complete encSec proof.
All shared cache, assembly data, and flattening proofs are included in exported replay.
"""
import argparse, hashlib, json, os, re, subprocess, time
from pathlib import Path
ROOT = Path(__file__).resolve().parents[2]
HEADER = """import InitECandidate.Proofs.CompactComputation
import Flapjack.Compiler.Encoders.RiscV.Target.Configuration
import Flapjack.Compiler.Backend.LabToTarget.Encoding
import Flapjack.Compiler.Backend.LabSem.State
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
abbrev L := LabSem.LabLineHOL 64
def encodeLine : L → L := LabToTarget.encLine riscvConfig.encode 4
"""
def asm_lines(s):
    result=[];start=0
    while True:
        i=s.find('Flapjack.Compiler.Backend.LabLang.Line.asm',start)
        if i<0:return result
        a=s.find('(',i); depth=0
        for j in range(a,len(s)):
            if s[j]=='(':depth+=1
            elif s[j]==')':
                depth-=1
                if depth==0:break
        end=re.match(r'\s*\[[^\]]*\]\s*\d+',s[j+1:])
        if not end:raise ValueError('unrecognized asm byte list')
        stop=j+1+end.end();result.append(re.sub(r'\s+',' ',s[i:stop]));start=stop
    
def main():
    ap=argparse.ArgumentParser(description=__doc__)
    ap.add_argument('--work',type=Path,required=True)
    ap.add_argument('--function',type=int,default=461)
    ap.add_argument('--count',type=int,default=256)
    ap.add_argument('--trials',type=int,default=3)
    ap.add_argument('--generate-only',action='store_true')
    args=ap.parse_args();os.chdir(ROOT)
    out=args.work.resolve();out.mkdir(parents=True,exist_ok=True)
    if any(out.iterdir()):ap.error('use an empty work directory')
    src=ROOT/f'submission/InitECandidate/Proofs/BackendStages/Filtered{args.function}.lean';tgt=ROOT/f'submission/InitECandidate/Proofs/BackendStages/Encoded{args.function}.lean'
    inputs=asm_lines(src.read_text());outputs=asm_lines(tgt.read_text())
    assert len(inputs)==len(outputs) and 0<args.count<=len(inputs)
    inputs=inputs[:args.count];outputs=outputs[:args.count]
    pairs=list(dict.fromkeys(zip(inputs,outputs)));indices=[pairs.index(pair) for pair in zip(inputs,outputs)]
    metadata=dict(function=args.function,count=args.count,distinct=len(pairs),source_sha256={str(p.relative_to(ROOT)):hashlib.sha256(p.read_bytes()).hexdigest() for p in [src,tgt]},scope='Ordered ordinary-asm subsequence of actual Filtered/Encoded function; excludes labels and jumps. Complete cache and source/target bridges are exported.')
    (out/'metadata.json').write_text(json.dumps(metadata,indent=2)+'\n')
    ds=[HEADER,'namespace EncodingData']
    for i,(a,b) in enumerate(pairs):ds+=[f'noncomputable def s{i} : L := {a}',f'noncomputable def t{i} : L := {b}']
    ds+=['noncomputable def input : List L := ['+', '.join(inputs)+']','noncomputable def output : List L := ['+', '.join(outputs)+']','end EncodingData']
    (out/'EncodingData.lean').write_text('\n'.join(ds)+'\n')
    (out/'Original.lean').write_text('import EncodingData\nopen EncodingData\ntheorem certificate : input.map encodeLine = output := by kernel_rfl\n#print axioms certificate\n')
    ss=['import EncodingData','open EncodingData','namespace EncodingReuse',
        'theorem join (a b c d : List L) (h1 : a.map encodeLine = c) (h2 : b.map encodeLine = d) : (a ++ b).map encodeLine = c ++ d := (List.map_append (f := encodeLine) (l₁ := a) (l₂ := b)).trans ((congrArg (fun x => x ++ b.map encodeLine) h1).trans (congrArg (List.append c) h2))']
    for i in range(len(pairs)):
        ss += [f'theorem cache{i} : encodeLine s{i} = t{i} := by kernel_rfl',f'theorem leaf{i} : [s{i}].map encodeLine = [t{i}] := congrArg List.singleton cache{i}']
    nodes={};counter=[0]
    def tree(ids):
        key=tuple(ids)
        if len(ids)==1:return f'[s{ids[0]}]',f'[t{ids[0]}]',f'leaf{ids[0]}'
        if key in nodes:return nodes[key]
        mid=len(ids)//2;a,c,ha=tree(ids[:mid]);b,d,hb=tree(ids[mid:]);i=counter[0];counter[0]+=1
        ss.extend([f'noncomputable def sn{i} : List L := {a} ++ {b}',f'noncomputable def tn{i} : List L := {c} ++ {d}',f'theorem node{i} : sn{i}.map encodeLine = tn{i} := join {a} {b} {c} {d} {ha} {hb}'])
        nodes[key]=(f'sn{i}',f'tn{i}',f'node{i}');return nodes[key]
    a,b,h=tree(indices)
    ss += [f'theorem input_eq : input = {a} := by kernel_rfl',f'theorem output_eq : output = {b} := by kernel_rfl',f'theorem certificate : input.map encodeLine = output := (congrArg (List.map encodeLine) input_eq).trans ({h}.trans output_eq.symm)','#print axioms certificate','end EncodingReuse']
    (out/'Reused.lean').write_text('\n'.join(ss)+'\n')
    if args.generate_only:return
    execute(out,args.trials)

def execute(out,trials):
    os.chdir(ROOT)
    base=subprocess.check_output(['lake','env','printenv','LEAN_PATH'],text=True).strip()
    lean=subprocess.check_output(['lake','env','which','lean'],text=True).strip()
    exp=ROOT/'verifier/.tools/comparator/.lake/packages/lean4export/.lake/build'
    env=os.environ.copy();env['LEAN_PATH']=str(out)+':'+str(exp/'lib/lean')+':'+base
    rows=[]
    def run(case,trial,cmd,artifact):
        stem=f'{case}-{trial}';tf=out/(stem+'.time');start=time.monotonic()
        with (out/(stem+'.log')).open('w') as log:
            r=subprocess.run(['/usr/bin/time','-v','-o',str(tf),'timeout','240',*cmd],env=env,stdout=log,stderr=subprocess.STDOUT)
        log=(out/(stem+'.log')).read_text();timing=tf.read_text()
        def value(key):
            m=re.search(re.escape(key)+r':\s*([0-9.]+)',timing);return float(m.group(1)) if m else None
        row=dict(case=case,trial=trial,exit=r.returncode,wall=time.monotonic()-start,user=value('User time (seconds)'),system=value('System time (seconds)'),peak_kib=value('Maximum resident set size (kbytes)'),artifact_bytes=artifact.stat().st_size if artifact.exists() else None,log=log)
        rows.append(row);(out/'results.json').write_text(json.dumps(rows,indent=2)+'\n');print(json.dumps(row),flush=True)
        if r.returncode:raise RuntimeError(stem+' failed')
        for closure in re.findall(r'depends on axioms: \[([^\]]*)\]',log):
            assert {a.strip() for a in closure.split(',') if a.strip()} <= {'propext','Classical.choice','Quot.sound'}
    run('EncodingData','setup',[lean,'-j1','-o',str(out/'EncodingData.olean'),str(out/'EncodingData.lean')],out/'EncodingData.olean')
    for trial in range(trials):
        for case in ['Original','Reused'] if trial%2==0 else ['Reused','Original']:
            run(case,trial,[lean,'-j1','-o',str(out/(case+'.olean')),str(out/(case+'.lean'))],out/(case+'.olean'))
    for case,cert in [('Original','certificate'),('Reused','EncodingReuse.certificate')]:
        f=out/(case+'.export.jsonl')
        with f.open('wb') as dst,(out/(case+'.export.log')).open('wb') as err:
            subprocess.run(['timeout','240',str(exp/'bin/lean4export'),case,'--',cert],env=env,stdout=dst,stderr=err,check=True)
    for trial in range(trials):
        for case in ['Original','Reused'] if trial%2==0 else ['Reused','Original']:
            f=out/(case+'.export.jsonl');run(case+'Replay',trial,[lean,'-j1','--run',str(Path(__file__).with_name('Replay.lean')),str(f)],f)
if __name__=='__main__':main()
