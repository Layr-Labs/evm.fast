import InitECandidate.Solver.Improvements.AcceptedExactWhileCost
import InitECandidate.Solver.SourceCost.Analyzer
import InitECandidate.Solver.Spec.Inv.CostI

/-! A fixed initialized countdown consumes its actual initial counter,
including a tick for each iteration that returns or raises an exception. -/

set_option autoImplicit false
set_option maxRecDepth 100000

namespace BoundedCountdown
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

theorem loop_cost {i : MlS} {guard : ExpHOL 64} {body : ProgHOL 64} {cap B : Nat}
    (hguard : NonzeroCond σ i guard) (hstep : Steps σ i (· - 1) body)
    (hbody : Cost σ X body B) :
    Inv.CostP σ X (fun s => wordOf s i ≤ cap) (.while guard body) (cap * (B + 1)) := by
  have positive : ∀ (s : PanSemStateFiniteExact 64 σ), CondTrue s guard → 0 < wordOf s i := by
    intro s h
    obtain ⟨v, hv, hv0⟩ := hguard s h
    simp only [wordOf, hv]
    exact Nat.pos_of_ne_zero (fun hn => hv0 (BitVec.eq_of_toNat_eq (by simpa using hn)))
  have decreases : ∀ (s : PanSemStateFiniteExact 64 σ), CondTrue s guard →
      (evaluateHOLFiniteState s body).1 = none ∨
        (evaluateHOLFiniteState s body).1 = some .continue →
      wordOf (evaluateHOLFiniteState s body).2 i < wordOf s i := by
    intro s hg hexit
    obtain ⟨v, hv, _⟩ := hguard s hg
    have hpos := positive s hg
    simp only [wordOf, hv] at hpos
    have hone : (1 : BitVec 64) ≤ v := by
      rw [BitVec.le_def]
      change 1 ≤ v.toNat
      omega
    simp only [wordOf, hstep s v hv hexit, hv, BitVec.toNat_sub_of_le hone]
    change v.toNat - 1 < v.toNat
    omega
  refine AcceptedExactWhileCost.costP_while_exact (fun s => wordOf s i) cap
    (fun _ h => h) (fun _ => rfl) (AcceptedLoopRules.costP_of_cost hbody) ?_ ?_ ?_ ?_
  · rintro s _ ⟨hcap, hg⟩ _ hexit
    exact Nat.le_trans (Nat.le_of_lt (decreases s hg hexit)) hcap
  · exact fun _ _ hcap _ => hcap
  · exact fun s _ _ hg => positive s hg
  · rintro k s _ ⟨_, hg, rfl⟩ _ hexit
    exact decreases s hg hexit

theorem initialized_cost {i : MlS} {guard : ExpHOL 64} {body tail : ProgHOL 64}
    {B Bt : Nat} (initial : BitVec 64)
    (hguard : NonzeroCond σ i guard) (hstep : Steps σ i (· - 1) body)
    (hbody : Cost σ X body B) (htail : Cost σ X tail Bt) :
    Cost σ X (.dec i .one (.const initial) (.seq (.while guard body) tail))
      (initial.toNat * (B + 1) + Bt) := by
  apply Inv.cost_of_costP_true
  refine Inv.costP_dec ?_
  intro s _ _ v hv _
  have evc : ev s (.const initial) = some (.val (.word initial)) := ev_const _
  rw [evc] at hv
  have value := Option.some.inj hv
  subst v
  have hc := loop_cost (cap := initial.toNat) hguard hstep hbody
  apply Inv.CostP.pre (Inv.costP_seq (R := fun _ => True) hc
    (fun _ _ _ _ _ => trivial) (Inv.costP_of_cost htail))
  rintro t _ rfl
  simp [wordOf, setVarHOLFinite, HolFiniteMapExact.lookup_update, FUPDATE]

#print axioms initialized_cost
end BoundedCountdown
