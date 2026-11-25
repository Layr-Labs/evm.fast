import InitECandidate.Solver.Improvements.ScalarFourRules

set_option autoImplicit false
namespace ScalarFour
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open AcceptedCostOverrideRules
variable {σ : Type}

theorem literalCall {f : MlS} {b : Nat} {a c d : ExpHOL 64}
    (hf : Inv.CalleeCostP σ guestCtx f (fun vs _ => vs[3]? = some (.val (.word 4))) b) :
    Cost σ guestCtx (.call (some (none, none)) f [a,c,d,.const 4]) (1+b) := by
  apply Inv.cost_of_costP_true
  apply Inv.costP_callD hf
  intro s _ _ vs hvs _
  obtain ⟨_,r1,rfl,_,h1⟩ := evs_cons_inv hvs
  obtain ⟨_,r2,rfl,_,h2⟩ := evs_cons_inv h1
  obtain ⟨_,r3,rfl,_,h3⟩ := evs_cons_inv h2
  rw [evs_cons (ev_const (s := s) 4) evs_nil] at h3
  cases h3
  rfl

theorem installedCost {p : Entry} {B : Nat}
    (hi : Installed p) (hc : Cost σ guestCtx p.2.2 B) : CalleeCost σ guestCtx p.1 B := by
  intro vs body callee shape hLookup
  obtain ⟨params, hCode⟩ := lookupCode_some hLookup
  obtain ⟨ret, hi⟩ := hi
  rw [guestCtx_code, hi] at hCode
  have he : body = p.2.2 := (congrArg (fun row => row.2.1) (Option.some.inj hCode)).symm
  exact he ▸ hc

end ScalarFour
