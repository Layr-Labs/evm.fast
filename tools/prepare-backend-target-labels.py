#!/usr/bin/env python3
"""Generate checked local-label composition chunks without changing leaves."""
import argparse,csv,re,time
from pathlib import Path
p=argparse.ArgumentParser();p.add_argument("--phase",choices=["0","1","Final"],required=True);p.add_argument("--labels",nargs="*",type=int);p.add_argument("--tag",default="");p.add_argument("--watch",action="store_true");a=p.parse_args()
root=Path(__file__).resolve().parents[1];base=root/"submission/InitECandidate/Proofs/BackendStages/TargetChecks"
ids=[int(r[0]) for r in csv.reader((root/"tools/target-encoding/Positions0.csv").open())]
if a.labels:ids=[n for n in ids if n in a.labels]
if a.watch:
 while True:
  missing=[n for n in ids if not (root/f"submission/InitECandidate/Proofs/BackendStages/AlignmentLabels{n}.lean").exists()]
  if not missing:break
  print(f"WAIT final label sources: {len(ids)-len(missing)}/{len(ids)}",flush=True);time.sleep(30)
entries=[]
for n in ids:
 prefix="Correct" if a.phase in {"0", "1"} and n>=596 else ""
 module=f"InitECandidate.Proofs.BackendStages.AlignmentLabels{n}" if a.phase=="Final" else f"InitECandidate.Proofs.BackendStages.TargetChecks.{prefix}Labels{a.phase}_{n}"
 match=re.search(r"sectionLabels (\d+) ([\w.]+).lines \[\] = \((\d+), ([\w.]+)\)",(root/"submission"/(module.replace(".","/")+".lean")).read_text())
 if not match:raise ValueError(module)
 ns="InitECandidate.Proofs.BackendStages" if a.phase=="Final" else "InitECandidate.Proofs.BackendStages.TargetChecks"+(".Correct" if prefix else "")
 sec=f"InitECandidate.Proofs.BackendStages.Alignment{n}" if a.phase=="Final" else (f"InitECandidate.Proofs.BackendStages.TargetChecks.Initial{n}" if a.phase=="0" else ns+f".Reencode0_{n}")
 local=ns+"."+match[4];entries.append((n,int(match[1]),int(match[3]),module,sec,local,local+"_eq"))
for x,y in zip(entries,entries[1:]):
 if x[2]!=y[1]:raise ValueError(f"Label position discontinuity {x[:3]} -> {y[:3]}")
chunks=[entries[k:k+32] for k in range(0,len(entries),32)]
for k,chunk in enumerate(chunks):
 ns=f"Labels{a.phase}.{a.tag}Chunk{k}"
 s="".join(f"import {e[3]}\n" for e in chunk)+"import InitECandidate.Proofs.BackendStages.TargetChecks.Composition\nset_option autoImplicit false\nset_option maxHeartbeats 0\nset_option maxRecDepth 1000000\nopen Flapjack Flapjack.Compiler.Backend\nnamespace InitECandidate.Proofs.BackendStages.TargetChecks\nnamespace "+ns+"\n"
 s+="def input : LabSem.LabProgHOL 64 := ["+", ".join(e[4] for e in chunk)+"]\n"
 before="before"
 for n,pos,nxt,module,sec,local,thm in chunk:before=f"(sptInsert {sec}.sectionId (sptFromAList ((0, {pos}) :: {local})) {before})"
 s+=f"def after (before : Spt (Spt Nat)) : Spt (Spt Nat) := {before}\n"
 s+=f"theorem labels_append (rest : LabSem.LabProgHOL 64) (before : Spt (Spt Nat)) :\n LabToTarget.computeLabelsAlt {chunk[0][1]} (input ++ rest) before =\n LabToTarget.computeLabelsAlt {chunk[-1][2]} rest (after before) := by\n  simp only [input, List.cons_append, List.nil_append]\n"
 before="before"
 for j,(n,pos,nxt,module,sec,local,thm) in enumerate(chunk):
  rem="("+" :: ".join([e[4] for e in chunk[j+1:]]+["rest"])+")"
  s+=f"  rw [labels_section_cons {pos} {nxt} {sec} {rem} {local} {before} {thm}]\n"
  before=f"(sptInsert {sec}.sectionId (sptFromAList ((0, {pos}) :: {local})) {before})"
 s+=f"  rfl\n#print axioms labels_append\nend {ns}\nend InitECandidate.Proofs.BackendStages.TargetChecks\n"
 (base/f"Labels{a.phase}{a.tag}Chunk{k}.lean").write_text(s)
print(f"Prepared {len(chunks)} phase{a.phase} label composition chunks")

if a.phase=="Final" and not a.labels and not a.tag:
 imports="".join(f"import InitECandidate.Proofs.BackendStages.TargetChecks.LabelsFinalChunk{k}\n" for k in range(26))+"import InitECandidate.Proofs.BackendStages.Final\nimport InitECandidate.Proofs.BackendStages.TargetLabelsFinal\n"
 text=imports+"set_option autoImplicit false\nset_option maxHeartbeats 0\nset_option maxRecDepth 1000000\nopen Flapjack Flapjack.Compiler.Backend\nopen InitECandidate.Proofs.BackendStages\nnamespace InitECandidate.Proofs.BackendStages.TargetChecks.FinalLabels\n"
 accumulated="(.ln : Spt (Spt Nat))"
 for k in range(26):accumulated=f"(LabelsFinal.Chunk{k}.after {accumulated})"
 text+=f"def accumulated : Spt (Spt Nat) := {accumulated}\n"
 remaining="[]"
 for k in reversed(range(26)):remaining=f"(LabelsFinal.Chunk{k}.input ++ {remaining})"
 text+=f"theorem fold_eq : LabToTarget.computeLabelsAlt 0 Alignment.program .ln = accumulated := by\n  change LabToTarget.computeLabelsAlt 0 {remaining} .ln = accumulated\n"
 before="(.ln : Spt (Spt Nat))"
 for k in range(26):
  remaining="[]"
  for j in reversed(range(k+1,26)):remaining=f"(LabelsFinal.Chunk{j}.input ++ {remaining})"
  text+=f"  rw [LabelsFinal.Chunk{k}.labels_append {remaining} {before}]\n"
  before=f"(LabelsFinal.Chunk{k}.after {before})"
 text+="  rfl\ntheorem accumulated_eq : accumulated = Target.labelsFinal := by\n  with_unfolding_all rfl\ntheorem compute_eq : LabToTarget.computeLabelsAlt 0 Alignment.program .ln = Target.labelsFinal := fold_eq.trans accumulated_eq\n#print axioms compute_eq\nend InitECandidate.Proofs.BackendStages.TargetChecks.FinalLabels\n"
 (base/"FinalLabelComposition.lean").write_text(text)
 print("Prepared canonical FinalLabels.compute_eq")
