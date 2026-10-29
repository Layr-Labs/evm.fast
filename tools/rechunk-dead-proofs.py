#!/usr/bin/env python3
"""Rebatch generated opaque certificates without recomputing any proposals."""
from pathlib import Path
import argparse
import re
TAIL = r"  (?:try \(conv => lhs; cbv\)|conv => lhs; cbv|all_goals \(conv => lhs; cbv\))\n  (?:try rfl|all_goals rfl)"
def compact_dead(s):
 s=re.sub(TAIL,'  kernel_rfl',s)
 defs={m[1]:m[2] for m in re.finditer(r'theorem output(\d+)_def : .*? = \((.*?)\) := by',s,re.S)}
 def alias(m):
  match=re.fullmatch(r'[\s()]*output(\d+)[\s()]*',defs.get(m[2],''))
  if not match:return m[0]
  return m[1]+m[3].replace('  kernel_rfl','  exact output'+match[1]+'_skip')
 s=re.sub(r'(@\[cbv_eval\] theorem output(\d+)_skip[^\n]* := by\n)(.*?)(?=\n(?:theorem\b|@\[[^\n]*\]\s*theorem\b)|\n\n|$)',alias,s,flags=re.S)
 # Remove only our generated hint to keep this conversion idempotent.
 s=re.sub(r'^  (?:try )?simp only \[Flapjack.WordAlloc.join(?:Seq|Ite)[^\n]*\]\n','',s,flags=re.M)
 parts=re.split(r'(?=^theorem )',s,flags=re.M)
 for i,part in enumerate(parts):
  if 'kernel_rfl' not in part:continue
  children=list(dict.fromkeys(re.findall(r'rw \[(?:child|node)(\d+)(?:_eq)?\]',part)))
  if children:
   hints=', '.join('output'+x+'_skip' for x in children)
   parts[i]=part.replace('  kernel_rfl','  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, '+hints+']\n  kernel_rfl')
 return ''.join(parts)

p = argparse.ArgumentParser()
p.add_argument("label", type=int)
p.add_argument("nodes_per_chunk", type=int)
a = p.parse_args()
if a.nodes_per_chunk < 1:
    p.error("nodes_per_chunk must be positive")
root = Path(__file__).resolve().parent.parent
base = root / f"submission/InitECandidate/Proofs/DeadStages{a.label}"
files = sorted(base.glob("Chunk*.lean"))
namespace = f"namespace InitECandidate.Proofs.DeadStages{a.label}\n"
first = files[0].read_text()
header = first[first.index("import InitECandidate.Proofs.ComputationCache"):first.index(namespace)+len(namespace)]
bodies = []
for path in files:
    s = path.read_text()
    bodies.append(s[s.index(namespace)+len(namespace):s.rindex("#print axioms")])
body = compact_dead("".join(bodies))
starts = list(re.finditer(r"^@\[irreducible, cbv_opaque\] def input(\d+)\b", body, re.M))
indices = [int(m.group(1)) for m in starts]
assert indices == list(range(len(indices))), "input certificates must be consecutive"
cuts = [0] + [starts[i].start() for i in range(a.nodes_per_chunk, len(starts), a.nodes_per_chunk)] + [len(body)]
for n, (lo, hi) in enumerate(zip(cuts, cuts[1:])):
    imp = "import InitECandidate.Proofs.CompactComputation\nimport InitECandidate.Proofs.DeadBranchComputation\n" if n == 0 else f"import InitECandidate.Proofs.CompactComputation\nimport InitECandidate.Proofs.DeadStages{a.label}.Chunk{n-1:03d}\n"
    endnode = min((n+1)*a.nodes_per_chunk, len(starts))-1
    (base / f"Chunk{n:03d}.lean").write_text(imp + header + body[lo:hi] +
        f"#print axioms node{endnode}_eq\nend InitECandidate.Proofs.DeadStages{a.label}\n")
count = len(cuts)-1
for old in files[count:]:
    old.unlink()
(root / f"submission/InitECandidate/Proofs/DeadStages{a.label}.lean").write_text(
    f"import InitECandidate.Proofs.DeadStages{a.label}.Chunk{count-1:03d}\n\n#print axioms InitECandidate.Proofs.DeadStages{a.label}.node{len(starts)-1}_eq\n")
print(f"Rebatched {len(starts)} opaque certificates into {count} modules")
