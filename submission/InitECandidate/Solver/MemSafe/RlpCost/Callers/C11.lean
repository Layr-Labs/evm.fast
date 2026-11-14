import InitECandidate.Solver.MemSafe.RlpCost.Callers.C10
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.RlpCost.Callers
variable {σ : Type}
def body_rlp_list_to_slices := (declPair Guest.Software.guestFn_rlp_list_to_slices).2.2
def b_rlp_list_to_slices : Nat := 87806501837999026739438
theorem cost_rlp_list_to_slices : Cost σ guestCtx body_rlp_list_to_slices b_rlp_list_to_slices :=
  ArenaCost.Analyzer.analyze_sound table10_sound (by cbv)
theorem cc_rlp_list_to_slices : CalleeCost σ guestCtx (nm "rlp_list_to_slices") b_rlp_list_to_slices := by
  have hc : ∃ rs, guestCode (nm "rlp_list_to_slices") =
      some ((declPair Guest.Software.guestFn_rlp_list_to_slices).2.1,body_rlp_list_to_slices,rs) :=
    declPair_valid (List.getElem_mem (n := 115) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ArenaCost.Analyzer.callee_of_body hc cost_rlp_list_to_slices
def table11 := ArenaCost.Analyzer.extend table10 (nm "rlp_list_to_slices") b_rlp_list_to_slices
theorem table11_sound : TblSound σ guestCtx table11 := ArenaCost.Analyzer.extend_sound table10_sound cc_rlp_list_to_slices
#print axioms cc_rlp_list_to_slices
end InitECandidate.Solver.MemSafe.RlpCost.Callers
