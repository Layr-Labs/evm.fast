#!/usr/bin/env python3
"""Inline small single-use typed Word subterms; keep shared/large subterms named.

This changes proposed source layout only. Compiler equalities in the resulting
proof modules still require independent kernel checking.
"""
from pathlib import Path
import argparse
import re
from collections import Counter
p=argparse.ArgumentParser()
p.add_argument("label", type=int)
p.add_argument("--bytes", type=int, default=1024)
a=p.parse_args()
root=Path(__file__).resolve().parent.parent
source=root/f"submission/InitECandidate/Proofs/WordStages/Parallel{a.label}"
output=root/f"submission/InitECandidate/Proofs/WordStages/Sparse{a.label}"
output.mkdir(exist_ok=True)
token=re.compile(rf"\bword{a.label}_\d+_\d+\b")
for n in range(11):
    data=(source/f"Data{n}.lean").read_text()
    counts=Counter(token.findall(data))
    pattern=re.compile(rf"^def (word{a.label}_\d+_\d+) : WordLangProgHOL \(BitVec 64\) :=\n(.*?)(?=^def |^end )", re.M|re.S)
    inline={}
    depths={}
    kept=0
    def replace(m):
        global kept
        name,body=m.group(1),m.group(2).strip()
        children=token.findall(body)
        depth=1+max((depths.get(c,0) for c in children),default=0)
        body=token.sub(lambda t:inline.get(t.group(),t.group()),body)
        if counts[name]==2 and len(body.encode())<=a.bytes and depth<=32:
            inline[name]="("+body+")"
            depths[name]=depth
            return ""
        kept+=1
        return f"def {name} : WordLangProgHOL (BitVec 64) :=\n{body}\n\n"
    data=pattern.sub(replace,data)
    data=token.sub(lambda t:inline.get(t.group(),t.group()),data)
    data=data.replace(f"Shared{a.label}",f"Sparse{a.label}").replace(f"Parallel{a.label}",f"Sparse{a.label}")
    (output/f"Data{n}.lean").write_text(data)
    proof=(source/f"Proof{n}.lean").read_text().replace(f"Parallel{a.label}",f"Sparse{a.label}")
    (output/f"Proof{n}.lean").write_text(proof)
    print(f"Pass {n}: kept {kept} definitions, inlined {len(inline)}; {len(data.encode())} bytes")
