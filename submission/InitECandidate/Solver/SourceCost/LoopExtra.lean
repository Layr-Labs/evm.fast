import InitECandidate.Solver.SourceCost.OrbitShapes
import InitECandidate.Solver.SourceCost.LoopExtra.ShiftLoops
import InitECandidate.Solver.SourceCost.LoopExtra.FlagLoop
import InitECandidate.Solver.SourceCost.LoopExtra.PureOrbit
import InitECandidate.Solver.SourceCost.LoopExtra.WalkLoop
import InitECandidate.Solver.SourceCost.LoopExtra.AddrLoop
import InitECandidate.Solver.SourceCost.LoopExtra.GroupArith
import InitECandidate.Solver.SourceCost.LoopExtra.GroupData

/-!
# Extra loop shapes (hand-proved)

Extension point for loops that need a dedicated argument. Each new shape adds a
recognizer disjunct to `loopOkExtra` and a case to `loopOkExtra_sound`, which must
prove the loop's cost is at most `(2 ^ width + 1) * (B + 1)` given body cost `B`
(use `Cost.mono` when the real bound is smaller).

Shapes:
* `loopOkShiftAmt` (`LoopExtra/ShiftLoops.lean`): `while (... (X << d) ...) { d = d + 1 }`
  (`ceil_log2`); a true condition forces `d < width`.
* `loopOkShr` (`LoopExtra/ShiftLoops.lean`): `while v != 0 { v = v >>> k; ... }` with
  `k ≠ 0` (`rlp_be_len`), also through a temporary `var t = v >>> k; ...; v = t`
  (`merkleize`), under any comparison of `v` with a constant that fails at `0`;
  measure `v`.
* `loopOkKnuthD` (`LoopExtra/FlagLoop.lean`): the `qhat` correction loop of `divmnu`
  and `bn_divmnu`; measure `qhat + 1` while `again == 1`.
* `loopOkOrbitPure` (`LoopExtra/PureOrbit.lean`): orbit loops whose body is a spine of
  `if ... { return ... }` guards ending in `i = i + k` (`memeq`); the body may return,
  but whether it does depends only on the counter, so the orbit argument still applies.
* `loopOkWalk` (`LoopExtra/WalkLoop.lean`): loops on a comparison with a local `n` whose
  body is clock-free and memory-read-only (`skip`, `break`, local assignments, `ite`,
  `seq`, `dec`) and reads no other local it assigns (`htab_find_leaf`, `htab_set`,
  `nodedb_build`): the next `n` is a function of the current one, so by pigeonhole a good
  run makes at most `2 ^ width + 1` iterations.
* `loopOkAddr` (`LoopExtra/AddrLoop.lean`): loops whose body starts with a memory access at
  `base + i` (`!ldw w, base + i` in `input_blob`, `var op = ld8 (base + i)` in
  `compute_jumpdests`), keeps a local `base`, and steps `i` by an amount in
  `[1, addrStepMax]` (a constant, or a local whose range a guard-aware range analysis
  bounds: `pc = pc + adv`). The access succeeds only inside the fixed, bounded memory
  domain (`DomBounded`), so the access offsets increase strictly without wrapping.
  This is the only shape that needs `DomBounded X`.
* `loopOkArith` (`LoopExtra/GroupArith.lean`) and `loopOkData` (`LoopExtra/GroupData.lean`,
  which also takes `efz`, the callees that cannot escape when argument `1` is zero, for
  `loopOkGeo`).

Rules outside this contract, tried by `costA` (`Analyzer.lean`): `loopArithF` (factor
`F`, not `2 ^ width + 1`) after `loopOk` fails, and the `sort_elems` merge statement
(`cost_dec_merge`), whose loop is bounded only from its entry state.
-/

namespace InitECandidate.Solver.SourceCost
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)

variable {width : Nat} [NeZero width] {σ : Type} {X : Ctx width}

/-- The shapes in order of evaluation cost (lazily: see `orL`); the Arith rule, whose
recognizer is the most expensive to evaluate in the kernel check, comes last. -/
def loopOkExtra (_ef efz : MlS → Bool) (c : ExpHOL width) (b : ProgHOL width) : Bool :=
  orL (loopOkShiftAmt c b) fun _ => orL (loopOkShr c b) fun _ =>
  orL (loopOkKnuthD c b) fun _ => orL (loopOkOrbitPure c b) fun _ =>
  orL (loopOkWalk c b) fun _ => orL (loopOkAddr b) fun _ =>
  orL (loopOkData _ef efz c b) fun _ => loopOkArith _ef c b

theorem loopOkExtra_sound {ef efz : MlS → Bool} (_hef : EfSound σ X.code ef)
    (hefz : ∀ f, efz f = true → EfArgZero σ X.code f 1) (hX : DomBounded X)
    {c : ExpHOL width} {b : ProgHOL width} {B : Nat} (h : loopOkExtra ef efz c b = true)
    (hb : Cost σ X b B) :
    Cost σ X (.while c b) ((2 ^ width + 1) * (B + 1)) := by
  unfold loopOkExtra at h
  rcases orL_cases h with h | h
  · exact loopOkShiftAmt_sound h hb
  rcases orL_cases h with h | h
  · exact loopOkShr_sound h hb
  rcases orL_cases h with h | h
  · exact loopOkKnuthD_sound h hb
  rcases orL_cases h with h | h
  · exact loopOkOrbitPure_sound h hb
  rcases orL_cases h with h | h
  · exact loopOkWalk_sound h hb
  rcases orL_cases h with h | h
  · exact loopOkAddr_sound hX h hb
  rcases orL_cases h with h | h
  · exact loopOkData_sound _hef hefz hX h hb
  · exact loopOkArith_sound _hef hX h hb

end InitECandidate.Solver.SourceCost
