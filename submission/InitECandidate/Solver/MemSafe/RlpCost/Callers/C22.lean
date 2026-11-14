import InitECandidate.Solver.MemSafe.RlpCost.Callers.C21
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.RlpCost.Callers
variable {σ : Type}
def body_decode_authorizations := (declPair Guest.Software.guestFn_decode_authorizations).2.2
def b_decode_authorizations : Nat := 24188291500885193477876332019025631275748866
theorem cost_decode_authorizations : Cost σ guestCtx body_decode_authorizations b_decode_authorizations :=
  ArenaCost.Analyzer.analyze_sound table21_sound (by cbv)
theorem cc_decode_authorizations : CalleeCost σ guestCtx (nm "decode_authorizations") b_decode_authorizations := by
  have hc : ∃ rs, guestCode (nm "decode_authorizations") =
      some ((declPair Guest.Software.guestFn_decode_authorizations).2.1,body_decode_authorizations,rs) :=
    declPair_valid (List.getElem_mem (n := 305) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ArenaCost.Analyzer.callee_of_body hc cost_decode_authorizations
def table22 := ArenaCost.Analyzer.extend table21 (nm "decode_authorizations") b_decode_authorizations
theorem table22_sound : TblSound σ guestCtx table22 := ArenaCost.Analyzer.extend_sound table21_sound cc_decode_authorizations
#print axioms cc_decode_authorizations
end InitECandidate.Solver.MemSafe.RlpCost.Callers
