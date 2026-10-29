from pathlib import Path
import json, functools, sys, time
sys.setrecursionlimit(100000)
raw=json.loads(Path("work/lean-perf/stack-analysis/calls.json").read_text())
frames={i:f for i,f,p in raw}; nodes=[]; nodeids={}
def intern(p):
 if isinstance(p,list):
  if p[0]=="seq": p=("seq",intern(p[1]),intern(p[2]))
  else: p=("call",p[1],None if p[2] is None else intern(p[2]),None if p[3] is None else intern(p[3]))
 if p not in nodeids: nodeids[p]=len(nodes);nodes.append(p)
 return nodeids[p]
bodies={i:intern(p) for i,f,p in raw}
count=0
function_contexts=set()
@functools.lru_cache(None)
def depth(deleted,n,ns,node):
 global count
 count+=1
 if node==bodies.get(n):function_contexts.add((deleted,n,ns))
 if count%100000==0: print(count,flush=True)
 p=nodes[node]
 if p=="skip":return 0
 if p=="alloc":return frames[n]
 if p=="install":return None
 if p[0]=="seq":return maximum(depth(deleted,n,ns,p[1]),depth(deleted,n,ns,p[2]))
 _,d,ret,handler=p
 if d is None:return None
 if d in ns and ret is None:return 0
 if d in deleted or d not in bodies:return None
 if ret is None:
  if len(ns)<len(raw):return maximum(frames[d],depth(deleted,d,(d,)+ns,bodies[d]))
  return 0
 new=tuple(sorted(deleted+(d,)))
 child=depth(new,d,(d,),bodies[d])
 cost=frames[n]+frames[d]
 if handler is None:return maximum(cost, None if child is None else frames[n]+child,depth(deleted,n,ns,ret))
 return maximum(cost+3,None if child is None else frames[n]+3+child,depth(deleted,n,ns,handler),depth(deleted,n,ns,ret))
def maximum(*values):return None if None in values else max(values)
t=time.monotonic();result=maximum(frames[64],depth((),64,(64,),bodies[64]));print(dict(result=result,seconds=time.monotonic()-t,calls=count,cache=str(depth.cache_info()),nodes=len(nodes),function_contexts=len(function_contexts)),flush=True)
Path("work/lean-perf/stack-analysis/context-summary.json").write_text(json.dumps(dict(result=result,seconds=time.monotonic()-t,calls=count,nodes=len(nodes),function_contexts=len(function_contexts))))
