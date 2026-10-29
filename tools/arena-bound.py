#!/usr/bin/env python3
"""arena-bound.py [--items base|stack|mem|all] [GAS ...] -- upper bound on the frame-memory plus scratch arena
one transaction can use, for docs/ALLOC-AUDIT.md ("Frame arena bound").

Model: a chain of nested call frames, depth at most 1024. Each frame costs 100 gas
plus a little for the CALL, may additionally pay for a stack grown to a chosen
doubling step (PUSH0 at 2 gas each) and for EVM memory grown to a chosen
power-of-two capacity (worst doubling slack: length just above a power of two),
and forwards (gas - spent) * 63/64 to its child. Frame base size is the setup
structs plus a jumpdest bitmap for 64 KiB code. Requires numpy.

--items restricts what a frame may pay for: base (the fixed setup and bitmap
only), stack (base plus stack growth), mem (base plus EVM memory growth) or all
(the default), which gives the per-item arena figures in ALLOC-AUDIT.md.

Re-run when the frame layout (EV_SIZE, MSG_SIZE, CK_SIZE, STACK_INIT_CAP, the
1,024-byte initial frame memory), MAX_CODE_SIZE, or the 63/64 rule changes.
"""
import sys
import numpy as np

# frame struct, stack (32 words), message, continuation record, logs list,
# delete table, initial 1 KiB memory, then the jumpdest bitmap (code_n/8 + 8)
BASE = 280 + 1024 + 176 + 104 + 56 + 270 + 1024 + (65536 // 8 + 8)
# (gas, extra bytes): PUSH0 count that triggers each stack doubling, 2 gas each
STACK = [(0, 0), (66, 2048), (130, 6144), (258, 14336), (514, 30720), (1026, 63488)]
MEM = [(0, 0)]
for k in range(12):
    w = 32 * 2 ** k + 1                       # words for length 1024 * 2^k + 32
    MEM.append((3 * w + w * w // 512, 1024 * 2 ** (k + 1) - 1024))
CALL_GAS = 100 + 40


def build(items):
    stack = STACK if items in ("stack", "all") else STACK[:1]
    mem = MEM if items in ("mem", "all") else MEM[:1]
    opts = [(CALL_GAS + sg + mg, BASE + sb + mb) for sg, sb in stack for mg, mb in mem]
    return (np.array([o[0] for o in opts], float),
            np.array([o[1] for o in opts], float))


def solve(gas, items="all", depth=1024, npts=6000):
    og, ob = build(items)
    grid = np.geomspace(100, gas, npts)
    v = np.zeros_like(grid)
    for _ in range(depth):
        best = np.zeros_like(grid)
        for g_i, b_i in zip(og, ob):
            fwd = (grid - g_i) * 63 / 64
            cand = np.where(grid >= g_i, b_i + np.interp(fwd, grid, v, left=0.0), 0.0)
            best = np.maximum(best, cand)
        v = best
    return v[-1]


if __name__ == "__main__":
    args = sys.argv[1:]
    items = "all"
    if args[:1] == ["--items"]:
        items, args = args[1], args[2:]
    gases = [int(a.replace("_", "")) for a in args] or [
        16_777_216 - 21_000, 30_000_000, 5_000_000, 1_000_000, 200_000]
    for g in gases:
        b = solve(g, items)
        print(f"{items:5} gas {g:>11,}: arena {b / 1e6:7.1f} MB  = {b / g:5.1f} B/gas")
