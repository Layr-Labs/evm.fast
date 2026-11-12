import InitECandidate.Solver.SourceCost.LoopExtra.AddrLoop
import InitECandidate.Solver.SourceCost.LoopExtra.Arith.ZList

/-!
# The Arith group of hand-proved loops

The loops of the binary extended Euclid inversions (`modinv_bin`, `bls_fp_inv_raw`) and the
P-256 carry folds (`p256_fp_mul`, `p256_fp_sqr`) have pure bodies: they read memory but
change only locals, call only pure functions, and every local they assign has a static
named-free shape. Evaluation is deterministic up to the clock, so the assigned locals
determine the next iteration, and by pigeonhole over their finitely many values a good run
makes at most `2 ^ (width * K) + 1` iterations, `K` the number of words of the assigned
locals (`Arith.cost_while_proj`, `LoopExtra/Arith/Proj.lean`).

* `loopOkArith` (current contract, factor `2 ^ width + 1`): the rule for bodies without
  calls and with at most one word of assigned state.
* `loopArithF` / `loopArithF_sound` (extended contract): the rule with calls to the pure
  functions of `Arith.arithPureTbl`, and the counter-wrap rule for `taylor_exponential`
  (`Arith.cost_while_wrap`, `LoopExtra/Arith/Wrap.lean`: the counter `i` reaches zero within
  `2 ^ width` iterations, and from `i = 0` zero propagation through the callee summaries
  `Arith.arithZTbl` shows the loop condition is false afterwards). It returns the factor `F`
  and proves the bound `F * (B + 1)` under `Arith.ArithTbls σ X.code`, which holds for the
  guest code map (`Arith.guestArithTbls`, `LoopExtra/Arith/GuestPure.lean`).
-/

namespace InitECandidate.Solver.SourceCost
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)

variable {width : Nat} [NeZero width] {σ : Type} {X : Ctx width}

def loopOkArith (_ef : MlS → Bool) (c : ExpHOL width) (b : ProgHOL width) : Bool :=
  match Arith.loopProjF [] c b with
  | some F => decide (F ≤ 2 ^ width + 1)
  | none => false

theorem loopOkArith_sound {ef : MlS → Bool} (_hef : EfSound σ X.code ef) (_hX : DomBounded X)
    {c : ExpHOL width} {b : ProgHOL width} {B : Nat} (h : loopOkArith ef c b = true)
    (hb : Cost σ X b B) :
    Cost σ X (.while c b) ((2 ^ width + 1) * (B + 1)) := by
  unfold loopOkArith at h
  split at h
  · rename_i F hF
    have hle : F ≤ 2 ^ width + 1 := of_decide_eq_true h
    have hpt : Arith.PureTbl σ X.code [] := by intro f sh h; simp at h
    exact (Arith.loopProjF_sound hpt hF hb).mono (Nat.mul_le_mul_right _ hle)
  · cases h

/-- Extended contract: the iteration factor of an Arith loop. The counter-wrap rule
(`Arith.loopWrapB`, factor `2 ^ width + 1`) is tried first, then the projected-locals
pigeonhole (`Arith.loopProjF`, factor `2 ^ (width * K) + 1`). -/
def loopArithF (c : ExpHOL width) (b : ProgHOL width) : Option Nat :=
  match Arith.loopWrapB Arith.arithZTbl c b with
  | true => some (2 ^ width + 1)
  | false => Arith.loopProjF Arith.arithPureTbl c b

theorem loopArithF_sound (ht : Arith.ArithTbls σ X.code)
    {c : ExpHOL width} {b : ProgHOL width} {F B : Nat} (h : loopArithF c b = some F)
    (hb : Cost σ X b B) : Cost σ X (.while c b) (F * (B + 1)) := by
  unfold loopArithF at h
  split at h
  · rename_i hw
    simp only [Option.some.injEq] at h
    subst h
    exact Arith.loopWrapB_sound ht.2 hw hb
  · exact Arith.loopProjF_sound ht.1 h hb

end InitECandidate.Solver.SourceCost
