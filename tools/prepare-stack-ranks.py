from pathlib import Path
import json
raw=json.loads(Path("work/lean-perf/stack-analysis/calls.json").read_text())
frames={i:f for i,f,p in raw};adj={i:set() for i,_,_ in raw}
def scan(p,out):
 if isinstance(p,list):
  if p[0]=="seq":scan(p[1],out);scan(p[2],out)
  else:
   assert p[1] is not None
   out.add(p[1])
   if p[2] is not None:scan(p[2],out)
   if p[3] is not None:scan(p[3],out)
for i,f,p in raw:scan(p,adj[i])
ranks={};active=set()
def rank(i):
 if i in ranks:return ranks[i]
 assert i not in active,"cycle"
 active.add(i);ranks[i]=max([rank(d)+1 for d in adj[i]]+[0]);active.remove(i);return ranks[i]
for i in frames:rank(i)
def node(l,v,r):
 if v is None:return None if l is None and r is None else (l,None,r)
 return (l,v,r)
def insert(t,k,v):
 l,x,r=t if t is not None else (None,None,None)
 if k==0:return node(l,v,r)
 if k%2==0:l=insert(l,(k-1)//2,v)
 else:r=insert(r,(k-1)//2,v)
 return node(l,x,r)
def lit(t):
 if t is None:return ".ln"
 l,v,r=t
 if l is None and r is None:return f"(.ls {v})"
 if v is None:return f"(.bn {lit(l)} {lit(r)})"
 return f"(.bs {lit(l)} {v} {lit(r)})"
def tree(values):
 t=None
 for k,v in reversed(list(values.items())):t=insert(t,k,v)
 return lit(t)
root=Path("submission/InitECandidate/Proofs/StackAnalysis")
(root/"RankData.lean").write_text("import InitECandidate.Proofs.StackAnalysis.RankedBound\nnamespace InitECandidate.Proofs.StackAnalysis\nopen Flapjack\ndef rankTree : Spt Nat := "+tree(ranks)+"\ndef certificateFrames : Spt Nat := "+tree(frames)+"\ndef callRank (i : Nat) : Nat := (sptLookup i rankTree).getD 0\ndef present (i : Nat) : Bool := (sptLookup i certificateFrames).isSome\nend InitECandidate.Proofs.StackAnalysis\n")
nums=sorted(frames)
for group,start in enumerate(range(0,len(nums),32)):
 selected=nums[start:start+32]
 text="".join(f"import InitECandidate.Proofs.StackAnalysis.Facts{i}\n" for i in selected)+"import InitECandidate.Proofs.StackAnalysis.RankData\nimport Lean\nset_option maxRecDepth 1000000\nset_option maxHeartbeats 0\nset_option cbv.maxSteps 1000000000\nset_option cbv.warning false\nset_option Elab.async false\nnamespace InitECandidate.Proofs.StackAnalysis\n"
 for i in selected:text+=f"theorem ranked{i} : ranked callRank present {i} slim{i} = true := by cbv\n"
 text+=f"#print axioms ranked{selected[-1]}\nend InitECandidate.Proofs.StackAnalysis\n"
 (root/f"RankFacts{group}.lean").write_text(text)
print("ranks",max(ranks.values()),ranks[64],"frames",max(frames.values()))
