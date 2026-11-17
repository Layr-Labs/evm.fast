import InitECandidate.Solver.MemSafe.RlpCost.Callers.C09
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.RlpCost.Callers
variable {σ : Type}
def body_rlp_item := (declPair Guest.Software.guestFn_rlp_item).2.2
def b_rlp_item : Nat := 174764453448607414104502
theorem cost_rlp_item : Cost σ guestCtx body_rlp_item b_rlp_item :=
  ArenaCost.Analyzer.analyze_sound table9_sound (by cbv)
theorem cc_rlp_item : CalleeCost σ guestCtx (nm "rlp_item") b_rlp_item := by
  have hc : ∃ rs, guestCode (nm "rlp_item") =
      some ((declPair Guest.Software.guestFn_rlp_item).2.1,body_rlp_item,rs) :=
    declPair_valid (List.getElem_mem (n := 107) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ArenaCost.Analyzer.callee_of_body hc cost_rlp_item
def table10 := ArenaCost.Analyzer.extend table9 (nm "rlp_item") b_rlp_item
theorem table10_sound : TblSound σ guestCtx table10 := ArenaCost.Analyzer.extend_sound table9_sound cc_rlp_item
#print axioms cc_rlp_item
end InitECandidate.Solver.MemSafe.RlpCost.Callers
