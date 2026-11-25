import InitECandidate.Solver.Improvements.BlsMillerPrice
import InitECandidate.Solver.Spec.Mpt.Fill.Cost
import InitECandidate.Solver.Spec.Mpt.Callees

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 2000000
namespace ScalarFour
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type}
abbrev four (s : PanSemStateFiniteExact 64 σ) : Prop :=
  s.locals.lookup (nm "n") = some (.val (.word 4))

theorem decCall {rn f : MlS} {args : List (ExpHOL 64)} {k : ProgHOL 64} {b c : Nat}
    (hne : rn ≠ nm "n") (h : CalleeCost σ guestCtx f b)
    (hk : Inv.CostP σ guestCtx four k c) :
    Inv.CostP σ guestCtx four (.decCall rn .one f args k) (1+b+c) := by
  apply Mpt.costP_decCall h (funSpec_true _)
  intro s hs hp vs hvs callee v st _ _
  apply hk.pre
  rintro t _ rfl
  simpa [four, setVarHOLFinite, HolFiniteMapExact.lookup_update, FUPDATE, hne, Ne.symm hne] using hp

theorem seqCall {f : MlS} {args : List (ExpHOL 64)} {k : ProgHOL 64} {b c : Nat}
    (h : CalleeCost σ guestCtx f b) (hk : Inv.CostP σ guestCtx four k c) :
    Inv.CostP σ guestCtx four (.seq (.call (some (none,none)) f args) k) ((1+b)+c) := by
  refine Inv.costP_seq (Inv.costP_of_cost (cost_call (Bh := 0) h (by intro _ _ _ _ he; cases he))) ?_ hk
  apply hoare_callD (P := four) (Q := fun r t => r = none → four t) (X := guestCtx) (f := f) (args := args) (funSpec_true _)
  exact fun _ _ hn _ _ _ _ _ _ _ _ => hn

theorem loop {guard : ExpHOL 64} {body tail : ProgHOL 64} {b c : Nat}
    (hguard : NonzeroCond σ (nm "i") guard) (hstep : Steps σ (nm "i") (· - 1) body)
    (hb : Cost σ guestCtx body b) (ht : Cost σ guestCtx tail c) :
    Inv.CostP σ guestCtx four
      (.dec (nm "i") .one (.panop .mul [.var .local (nm "n"), .const 64])
        (.dec (nm "started") .one (.const 0) (.seq (.while guard body) tail)))
      (256 * (b + 1) + c) := by
  apply Inv.costP_dec
  intro s hs hn v hv _
  have en : ev s (.var .local (nm "n")) = some (.val (.word 4)) := hn
  have hi := ev_mul2 en (ev_const (s := s) (64 : BitVec 64))
  rw [hi] at hv
  cases hv
  apply Inv.costP_dec
  rintro t _ rfl v' _ _
  apply (Inv.costP_seq (R := fun _ => True) (BoundedCountdown.loop_cost (cap := 256) hguard hstep hb)
    (fun _ _ _ _ _ => trivial) (Inv.costP_of_cost ht)).pre
  rintro u _ rfl
  have hne : nm "started" ≠ nm "i" := by decide
  simp [wordOf, setVarHOLFinite, HolFiniteMapExact.lookup_update, FUPDATE, hne]
  
theorem price_le {p : ProgHOL 64} {b : Nat}
    (h : (match CompactCostReplay.price Shards.finalState p with
      | some n => decide (n ≤ b) | none => false) = true) :
    Cost σ guestCtx p b := by
  cases hprice : CompactCostReplay.price Shards.finalState p with
  | none => simp [hprice] at h
  | some n =>
    exact (CompactCostReplay.program_cost Shards.finalState_sound_guest hprice).mono
      (of_decide_eq_true (by simpa only [hprice] using h))
end ScalarFour
