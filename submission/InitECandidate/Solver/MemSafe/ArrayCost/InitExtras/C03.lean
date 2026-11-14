import InitECandidate.Solver.MemSafe.ArrayCost.InitExtras.C02
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ArrayCost.InitExtras
variable {σ : Type}
def body_decode_requests := (declPair Guest.Software.guestFn_decode_requests).2.2
def b_decode_requests : Nat := 92233720471626973253
theorem cost_decode_requests : Cost σ guestCtx body_decode_requests b_decode_requests := ArrayCost.Core.analyze_sound table2_sound (by cbv)
theorem cc_decode_requests : CalleeCost σ guestCtx (nm "decode_requests") b_decode_requests := by
  have hc : ∃ rs, guestCode (nm "decode_requests") = some ((declPair Guest.Software.guestFn_decode_requests).2.1,body_decode_requests,rs) :=
    declPair_valid (List.getElem_mem (n := 205) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ArrayCost.Core.callee_of_body hc cost_decode_requests
def table3 := ArrayCost.Core.extend table2 (nm "decode_requests") b_decode_requests
theorem table3_sound : TblSound σ guestCtx table3 := ArrayCost.Core.extend_sound table2_sound cc_decode_requests
#print axioms cc_decode_requests
end InitECandidate.Solver.MemSafe.ArrayCost.InitExtras
