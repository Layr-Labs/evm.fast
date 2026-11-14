import InitECandidate.Solver.MemSafe.RlpCost.Callers.C04
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.RlpCost.Callers
variable {σ : Type}
def body_rlp_encode_bytes := (declPair Guest.Software.guestFn_rlp_encode_bytes).2.2
def b_rlp_encode_bytes : Nat := 36893488284858056746
theorem cost_rlp_encode_bytes : Cost σ guestCtx body_rlp_encode_bytes b_rlp_encode_bytes :=
  ArenaCost.Analyzer.analyze_sound table4_sound (by cbv)
theorem cc_rlp_encode_bytes : CalleeCost σ guestCtx (nm "rlp_encode_bytes") b_rlp_encode_bytes := by
  have hc : ∃ rs, guestCode (nm "rlp_encode_bytes") =
      some ((declPair Guest.Software.guestFn_rlp_encode_bytes).2.1,body_rlp_encode_bytes,rs) :=
    declPair_valid (List.getElem_mem (n := 122) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ArenaCost.Analyzer.callee_of_body hc cost_rlp_encode_bytes
def table5 := ArenaCost.Analyzer.extend table4 (nm "rlp_encode_bytes") b_rlp_encode_bytes
theorem table5_sound : TblSound σ guestCtx table5 := ArenaCost.Analyzer.extend_sound table4_sound cc_rlp_encode_bytes
#print axioms cc_rlp_encode_bytes
end InitECandidate.Solver.MemSafe.RlpCost.Callers
