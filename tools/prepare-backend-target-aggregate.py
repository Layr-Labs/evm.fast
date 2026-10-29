#!/usr/bin/env python3
"""Prepare parametric 32-section target chunks without changing checked leaves."""
import argparse,csv,re
from pathlib import Path
root=Path(__file__).resolve().parents[1]; base=root/"submission/InitECandidate/Proofs/BackendStages/TargetChecks"
parser=argparse.ArgumentParser();parser.add_argument("--correct",action="store_true");parser.add_argument("--labels",nargs="*",type=int);parser.add_argument("--tag",default="");parser.add_argument("--mixed",action="store_true",help="Use original valid leaves through595 and corrected leaves thereafter");args=parser.parse_args();prefix="Correct" if args.correct else ""
ids=[int(r[0]) for r in csv.reader((root/"tools/target-encoding/Positions0.csv").open())]
if args.labels:ids=[n for n in ids if n in args.labels]
header="set_option autoImplicit false\nset_option maxHeartbeats 0\nset_option maxRecDepth 1000000\nopen Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target\nopen InitECandidate.Proofs.BackendStages\nnamespace InitECandidate.Proofs.BackendStages.TargetChecks\n"
if args.correct:header=header.replace("namespace InitECandidate.Proofs.BackendStages.TargetChecks\n","namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct\n")
def chain(xs,tail):return "("+" :: ".join(xs+[tail])+")"
def lst(xs):return "["+", ".join(xs)+"]"
def leaf_prefix(n):return "" if args.mixed and n<=595 else prefix
def ref(n,name):return "InitECandidate.Proofs.BackendStages.TargetChecks."+name if args.mixed and n<=595 else name
for phase in [0,1]:
 entries=[]
 for n in ids:
  text=(base/f"{leaf_prefix(n)}Encode{phase}_{n}.lean").read_text()
  m=re.search(r"Target.ffis (\d+) riscvConfig.encode .* = \(Reencode\d+_\d+.lines, (\d+), (true|false)\)",text)
  if not m:raise ValueError(n)
  entries.append((n,int(m[1]),int(m[2]),m[3]))
 for first,second in zip(entries,entries[1:]):
  if first[2]!=second[1]:raise ValueError(f"Encoding position discontinuity: {first} -> {second}")
 chunks=[entries[k:k+32] for k in range(0,len(entries),32)]
 for k,chunk in enumerate(chunks):
  prev=lambda n:ref(n,f"Initial{n}" if phase==0 else f"Reencode0_{n}")
  output=lambda n:ref(n,f"Reencode{phase}_{n}")
  flag="false" if any(e[3]=="false" for e in chunk) else "true"
  imports="".join(f"import InitECandidate.Proofs.BackendStages.TargetChecks.{leaf_prefix(n)}Phase{phase}_{n}\n" for n,_,_,_ in chunk)
  s=imports+"import InitECandidate.Proofs.BackendStages.TargetChecks.Composition\n"+header
  s+=f"namespace Phase{phase}.{args.tag}Chunk{k}\ndef input : LabSem.LabProgHOL 64 := {lst([prev(e[0]) for e in chunk])}\ndef output : LabSem.LabProgHOL 64 := {lst([output(e[0]) for e in chunk])}\n"
  s+=f"theorem encode_append (rest result : LabSem.LabProgHOL 64) (ok : Bool)\n (tail : LabToTarget.encSecsAgain {chunk[-1][2]} Target.labels{phase} Target.ffis riscvConfig.encode rest = (result, ok)) :\n LabToTarget.encSecsAgain {chunk[0][1]} Target.labels{phase} Target.ffis riscvConfig.encode (input ++ rest) = (output ++ result, {flag} && ok) := by\n simpa only [input, output, List.cons_append, List.nil_append, Bool.true_and, Bool.false_and] using\n"
  for j,(n,pos,nxt,good) in enumerate(chunk):
   rem=chunk[j+1:]; tailok="ok"
   for e in reversed(rem):tailok=f"({e[3]} && {tailok})"
   s+=f"  (section_cons {pos} {nxt} Target.labels{phase} Target.ffis riscvConfig.encode {prev(n)} {output(n)}\n   {chain([prev(e[0]) for e in rem],"rest")} {chain([output(e[0]) for e in rem],"result")} {good} {tailok}\n   (by rfl) {ref(n,f"Reencode{phase}_{n}_eq")}\n"
  s+="   tail"+")"*len(chunk)+"\n#print axioms encode_append\n"+f"end Phase{phase}.{args.tag}Chunk{k}\nend InitECandidate.Proofs.BackendStages.TargetChecks{".Correct" if args.correct else ""}\n"
  (base/f"{prefix}Encode{args.tag}Chunk{phase}_{k}.lean").write_text(s)
print(f"Prepared {len(chunks)*2} parametric target encoding chunks")

if args.correct and args.mixed and not args.labels and not args.tag:
 def cat(xs):
  result="[]"
  for x in reversed(xs):result=f"({x} ++ {result})"
  return result
 for phase in [0,1]:
  chunks=[entries[k:k+32] for k in range(0,len(entries),32)] if phase==1 else None
  # Read each generated chunk's certified boundary and concrete flag.
  info=[]
  for k in range(26):
   text=(base/f"CorrectEncodeChunk{phase}_{k}.lean").read_text()
   match=re.search(r"encSecsAgain (\d+) Target.labels.*\(input \+\+ rest\) = \(output \+\+ result, (true|false) && ok\)",text)
   if not match:raise ValueError(k)
   info.append(match[2])
  q=lambda k:f"Correct.Phase{phase}.Chunk{k}"
  imports="".join(f"import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectEncodeChunk{phase}_{k}\n" for k in range(26))
  text=imports+header.replace("namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct\n","namespace InitECandidate.Proofs.BackendStages.TargetChecks\n")
  if phase==0:text+=f"namespace Initial\ndef program : LabSem.LabProgHOL 64 := {cat([q(k)+'.input' for k in range(26)])}\nend Initial\n"
  else:text+="" # Phase0 supplies the input program.
  if phase==1:text="import InitECandidate.Proofs.BackendStages.TargetChecks.Phase0\n"+text
  text+=f"namespace Phase{phase}\ndef program : LabSem.LabProgHOL 64 := {cat([q(k)+'.output' for k in range(26)])}\n"
  source="Initial.program" if phase==0 else "Phase0.program"
  flag="false" if "false" in info else "true"
  text+=f"theorem encode_eq : LabToTarget.encSecsAgain 0 Target.labels{phase} Target.ffis riscvConfig.encode {source} = (program, {flag}) := by\n"
  # Phase1 input chunk values coincide with Phase0 output aliases.
  unfolds=[source,"program"]+[f"Correct.Phase0.Chunk{k}.output" for k in range(26)] if phase==1 else [source,"program"]
  if phase==1:unfolds += [q(k)+".input" for k in range(26)]
  text+="  simpa only ["+", ".join(unfolds+["List.append_nil","Bool.true_and","Bool.false_and"])+"] using\n"
  for k in range(26):
   ok="true"
   for good in reversed(info[k+1:]):ok=f"({good} && {ok})"
   text+=f"  ({q(k)}.encode_append {cat([q(j)+'.input' for j in range(k+1,26)])} {cat([q(j)+'.output' for j in range(k+1,26)])} {ok}\n"
  text+="   (by rfl)"+")"*26+f"\n#print axioms encode_eq\nend Phase{phase}\nend InitECandidate.Proofs.BackendStages.TargetChecks\n"
  (base/f"Phase{phase}.lean").write_text(text)
 print("Prepared canonical Phase0/Phase1 program endpoints")
