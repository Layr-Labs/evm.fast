#!/usr/bin/env python3
"""Migrate old loop checkpoint proofs to explicit small context equations.

Only proofs change. Opaque program values and their defining equations remain
unchanged. New native proposals already emit this form.
"""
from pathlib import Path
import re
root = Path(__file__).resolve().parent.parent
count = 0
for base in (root / "submission" / "InitECandidate" / "Proofs").glob("DeadStages*/Parallel"):
    loop_nodes = {}
    for data in (base / "Data").glob("Chunk*.lean"):
        for node, before, child, after in re.findall(
            r"theorem input(\d+)_def : input\d+ = \(\.loop (value\d+) input(\d+) (value\d+)\)",
            data.read_text()):
            loop_nodes[node] = before, child, after
    for path in (base / "Conditional").glob("Chunk*.lean"):
        text = path.read_text()
        blocks = re.split(r"(?=^theorem )", text, flags=re.M)
        changed = False
        for i, block in enumerate(blocks):
            head = re.match(r"theorem node(\d+)_cond_eq", block)
            if not head or head[1] not in loop_nodes:
                continue
            if "have context_eq" in block or "have loop_context_eq" in block:
                continue
            node = head[1]
            before, child, after = loop_nodes[node]
            parent = re.search(rf"removeDeadStructural input{node} (value\d+) (value\d+) (value\d+)", block)
            child_type = re.search(rf"child{child} : .*?removeDeadStructural input{child} (value\d+) (value\d+) (value\d+)", block)
            assert parent and child_type, (path, node)
            replacement = (
                f"  have loop_context_eq : {child_type[3]} = ({before}, {after}) :: {parent[3]} := by rfl\n"
                f"  have loop_stores_eq : {child_type[2]} = [] := by rfl\n"
                f"  have loop_child := child{child}\n"
                "  rw [loop_context_eq, loop_stores_eq] at loop_child\n  rw [loop_child]\n"
            )
            block, n = re.subn(rf"^  (?:with_unfolding_all )?rw \[child{child}\]\n", replacement, block, flags=re.M)
            assert n == 1, (path, node, n)
            blocks[i] = block
            changed = True
            count += 1
        if changed:
            path.write_text("".join(blocks))
print(f"Updated {count} loop context certificates without changing data")
