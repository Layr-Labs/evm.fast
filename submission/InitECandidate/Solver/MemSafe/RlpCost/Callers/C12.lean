import InitECandidate.Solver.MemSafe.RlpCost.Callers.C11
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.RlpCost.Callers
variable {σ : Type}
def body_rlp_decode_fully := (declPair Guest.Software.guestFn_rlp_decode_fully).2.2
def b_rlp_decode_fully : Nat := 174764453448607414104504
theorem cost_rlp_decode_fully : Cost σ guestCtx body_rlp_decode_fully b_rlp_decode_fully :=
  ArenaCost.Analyzer.analyze_sound table11_sound (by cbv)
theorem cc_rlp_decode_fully : CalleeCost σ guestCtx (nm "rlp_decode_fully") b_rlp_decode_fully := by
  have hc : ∃ rs, guestCode (nm "rlp_decode_fully") =
      some ((declPair Guest.Software.guestFn_rlp_decode_fully).2.1,body_rlp_decode_fully,rs) :=
    declPair_valid (List.getElem_mem (n := 108) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ArenaCost.Analyzer.callee_of_body hc cost_rlp_decode_fully
def table12 := ArenaCost.Analyzer.extend table11 (nm "rlp_decode_fully") b_rlp_decode_fully
theorem table12_sound : TblSound σ guestCtx table12 := ArenaCost.Analyzer.extend_sound table11_sound cc_rlp_decode_fully
#print axioms cc_rlp_decode_fully
end InitECandidate.Solver.MemSafe.RlpCost.Callers
