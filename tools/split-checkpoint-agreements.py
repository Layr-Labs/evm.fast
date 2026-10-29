#!/usr/bin/env python3
"""Propose small node agreement lemmas; Lean checks every equality.

Text hashes only select candidate matches. They have no role in the proof.
"""
import argparse
import hashlib
import re
from pathlib import Path

parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument("label", type=int)
parser.add_argument("--parallel-cache", action="store_true")
args = parser.parse_args()
label = args.label
root = Path(__file__).resolve().parents[1]
cache_namespace = f"InitECandidate.Proofs.DeadStages{label}" + (".Parallel.Data" if args.parallel_cache else "")
value_namespace = f"InitECandidate.Proofs.DeadStages{label}" + (".Parallel" if args.parallel_cache else "")
agreement_namespace = f"InitECandidate.Proofs.WordStages.Parallel{label}." + ("AgreementsParallel" if args.parallel_cache else "Agreements")
cache = root / Path(*cache_namespace.split("."))
output = root / Path(*agreement_namespace.split("."))
output.mkdir(parents=True, exist_ok=True)
chunks = sorted(cache.glob("Chunk*.lean"))
values, raw, groups = {}, {}, []
for chunk in chunks:
    text = chunk.read_text()
    values.update(re.findall(r"def (value\d+) : .*? :=\n(.*?)(?=\n\n)", text, re.S))
    nodes = []
    for kind, number, body in re.findall(
        r"theorem (input|output)(\d+)_def : (?:input|output)\d+ = \((.*?)\) := by", text, re.S
    ):
        name = kind + number
        raw[name] = body
        nodes.append(name)
    groups.append(nodes)

# Discarded intermediate outputs need no agreement with the final AST.
# Follow the explicit defining equations from both root nodes instead.
root_number = max(int(re.search(r"\d+$", name)[0]) for name in raw)
needed = set()
pending = [f"input{root_number}", f"output{root_number}"]
while pending:
    name = pending.pop()
    if name in needed:
        continue
    needed.add(name)
    pending.extend(re.findall(r"\b(?:input|output)\d+\b", raw[name]))
groups = [[name for name in nodes if name in needed] for nodes in groups]

ref_pattern = rf"\b(?:word{label}_[23]_\d+|(?:input|output)\d+)\b"
matched = {}
for stage, kind in [(2, "input"), (3, "output")]:
    text = (root / f"submission/InitECandidate/Proofs/WordStages/Parallel{label}/Data{stage}.lean").read_text()
    dense = dict(re.findall(
        rf"def (word{label}_\d+_\d+) : WordLangProgHOL \(BitVec 64\) :=\n(.*?)(?=\n\ndef |\n\ndef pass)",
        text, re.S
    ))
    all_raw = raw | dense

    def signature(body, signatures):
        body = re.sub(r"\bvalue\d+\b", lambda m: "(" + values[m[0]] + ")", body)
        if body.strip() in signatures:
            return signatures[body.strip()]
        if re.match(r"(Flapjack.WordLangProgHOL.call|\.call)\b", body):
            # Some checkpoint calls retain their small literal handlers.
            while re.search(ref_pattern, body):
                body = re.sub(ref_pattern, lambda m: "(" + all_raw[m[0]] + ")", body)
        else:
            body = re.sub(ref_pattern, lambda m: signatures[m[0]], body)
        body = body.replace("Flapjack.", "").replace("WordLangProgHOL.", "")
        body = re.sub(r"[\s().]", "", body)
        return hashlib.sha256(body.encode()).hexdigest()

    dense_signatures, candidates = {}, {}
    for name, body in dense.items():
        key = signature(body, dense_signatures)
        dense_signatures[name] = key
        candidates[key] = name
    cache_signatures = {}
    for name, body in raw.items():
        if not name.startswith(kind):
            continue
        key = signature(body, cache_signatures)
        cache_signatures[name] = key
        if name in needed:
            if key not in candidates:
                raise ValueError(f"No proposed match for required {name}")
            matched[name] = candidates[key]

for index, nodes in enumerate(groups):
    lines = [f"import InitECandidate.Proofs.WordStages.Parallel{label}.Data2",
             f"import InitECandidate.Proofs.WordStages.Parallel{label}.Data3",
             f"import {cache_namespace}.Chunk{index:03}"]
    if index:
        lines.append(f"import {agreement_namespace}.Chunk{index - 1:03}")
    lines += ["", "set_option autoImplicit false", "set_option Elab.async false",
              "set_option maxRecDepth 1000000", "set_option maxHeartbeats 0", "",
              f"namespace {agreement_namespace}"]
    for name in nodes:
        candidate = matched[name]
        lines += [f"theorem {name}_eq : {value_namespace}.{name} =",
                  f"    InitECandidate.Proofs.WordStages.Parallel{label}.{candidate} := by",
                  f"  rw [{value_namespace}.{name}_def]"]
        children = list(dict.fromkeys(re.findall(r"\b(?:input|output)\d+\b", raw[name])))
        if children:
            lines.append("  simp only [" + ", ".join(child + "_eq" for child in children) + "]")
        if raw[name].strip() not in children:
            lines.append("  with_unfolding_all rfl")
        lines.append("")
    if nodes:
        lines.append(f"#print axioms {nodes[-1]}_eq")
    lines.append(f"end {agreement_namespace}")
    (output / f"Chunk{index:03}.lean").write_text("\n".join(lines) + "\n")
print(f"Proposed {len(matched)} checked node agreements in {len(groups)} modules")
