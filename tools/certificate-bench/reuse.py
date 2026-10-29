#!/usr/bin/env python3
"""Compare repeated evaluation with reused proofs of a real guest pass equation."""
import argparse
import json
import os
from pathlib import Path
import re
import subprocess
import time
from intermediates import ROOT, HEADER, definitions, group

def main():
    ap=argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--work",type=Path,default=ROOT/"work/lean-perf/guest-equation-reuse")
    ap.add_argument("--trials",type=int,default=3)
    ap.add_argument("--copies",type=int,nargs="+",default=[1,4])
    args=ap.parse_args()
    if args.trials<1 or any(n<1 or n>8 for n in args.copies):ap.error("positive trials and copies in 1..8 required")
    os.chdir(ROOT)
    out=args.work.resolve();out.mkdir(parents=True,exist_ok=True)
    if any(out.iterdir()):ap.error("use an empty work directory")
    ds,hashes=definitions();ds=group(ds,2048)
    text=HEADER+"namespace ReuseData\n"+"\n".join(f"noncomputable def {name} : WordLangProgHOL (BitVec 64) :=\n{body}\n" for name,body in ds)+"end ReuseData\n"
    (out/"ReuseData.lean").write_text(text)
    metadata=dict(source_sha256=hashes,copies=args.copies,trials=args.trials,scope="Controlled repeated obligations on guest function 79; no claim that the full guest currently repeats this whole-function equation.")
    (out/"metadata.json").write_text(json.dumps(metadata,indent=2)+'\n')
    cases=[]
    for n in args.copies:
        for mode in ["Recompute","Reuse"]:
            case=mode+str(n);cases.append(case)
            lines=["import ReuseData",HEADER,"open ReuseData","abbrev P : Prop := WordCopy.copyProp (WordCse.wordCommonSubexpElim pass79_3) = pass79_5"]
            for i in range(n):
                body="by kernel_rfl" if mode=="Recompute" or i==0 else "checked0"
                lines.append(f"theorem checked{i} : P := {body}")
            goal=" ∧ ".join(["P"]*n)
            body="checked0" if n==1 else "⟨"+", ".join(f"checked{i}" for i in range(n))+"⟩"
            lines+=[f"theorem certificate : {goal} := {body}","#print axioms certificate"]
            (out/(case+".lean")).write_text("\n".join(lines)+"\n")
    base=subprocess.check_output(["lake","env","printenv","LEAN_PATH"],text=True).strip()
    lean=subprocess.check_output(["lake","env","which","lean"],text=True).strip()
    exp=ROOT/"verifier/.tools/comparator/.lake/packages/lean4export/.lake/build"
    env=os.environ.copy();env['LEAN_PATH']=str(out)+':'+str(exp/'lib/lean')+':'+base
    rows=[]
    def run(case,trial,command,artifact):
        stem=f"{case}-{trial}";tf=out/(stem+'.time');start=time.monotonic()
        with (out/(stem+'.log')).open('w') as log:
            r=subprocess.run(['/usr/bin/time','-v','-o',str(tf),'timeout','180',*command],env=env,stdout=log,stderr=subprocess.STDOUT)
        text=(out/(stem+'.log')).read_text();timing=tf.read_text()
        def value(key):
            m=re.search(re.escape(key)+r':\s*([0-9.]+)',timing)
            return float(m.group(1)) if m else None
        row=dict(case=case,trial=trial,exit=r.returncode,wall=time.monotonic()-start,user=value('User time (seconds)'),system=value('System time (seconds)'),peak_kib=value('Maximum resident set size (kbytes)'),artifact_bytes=artifact.stat().st_size if artifact.exists() else None,log=text)
        rows.append(row);(out/'results.json').write_text(json.dumps(rows,indent=2)+'\n');print(json.dumps(row),flush=True)
        if r.returncode:raise RuntimeError(stem+' failed')
        for closure in re.findall(r'depends on axioms: \[([^\]]*)\]',text):
            assert {a.strip() for a in closure.split(',') if a.strip()} <= {'propext','Classical.choice','Quot.sound'}
    def build(case,trial='setup'):
        artifact=out/(case+'.olean')
        run(case,trial,[lean,'-j1','-o',str(artifact),str(out/(case+'.lean'))],artifact)
    build('ReuseData')
    for trial in range(args.trials):
        for case in cases if trial%2==0 else cases[::-1]:build(case,trial)
    for case in cases:
        file=out/(case+'.export.jsonl')
        with file.open('wb') as dst,(out/(case+'.export.log')).open('wb') as err:
            subprocess.run(['timeout','180',str(exp/'bin/lean4export'),case,'--','certificate'],env=env,stdout=dst,stderr=err,check=True)
        for trial in range(args.trials):
            run(case+'Replay',trial,[lean,'-j1','--run',str(Path(__file__).with_name('Replay.lean')),str(file)],file)

if __name__=='__main__':main()
