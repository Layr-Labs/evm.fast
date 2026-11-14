import InitECandidate.Solver.MemSafe.RlpCost.UncheckedDispatch
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.Spec.Mpt.Leaves
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.RlpCost.Unchecked
variable {σ : Type}
theorem body_cost : Cost σ guestCtx ituBody 22 := by
  apply Inv.cost_of_costP_true
  unfold ituBody
  refine Inv.costP_dec fun s hs hp v hv hsh => ?_
  obtain ⟨P,hpP,-⟩ := ev_loadByte_hit hv
  obtain ⟨B,rfl,hB⟩ := ev_loadByte_word hv
  exact (dispatch_cost P B s.memory s.be hB).pre (fun t ht heq => by
    subst t
    refine ⟨?_,lk_set_self _ _ _,rfl,rfl⟩
    rw [lk_set_ne _ _ (by decide)]
    exact hpP)
theorem callee_cost : CalleeCost σ guestCtx (nm "rlp_item_total_unchecked") 22 := by
  intro vs body callee rs hl
  rw [guestCtx_code] at hl
  have he := CryptoCost.Analyzer.lookupCode_body code_rlp_item_total_unchecked hl
  subst body
  exact body_cost
#print axioms body_cost
#print axioms callee_cost
end InitECandidate.Solver.MemSafe.RlpCost.Unchecked
