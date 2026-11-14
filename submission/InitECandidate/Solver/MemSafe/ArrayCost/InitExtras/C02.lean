import InitECandidate.Solver.MemSafe.ArrayCost.InitExtras.C01
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ArrayCost.InitExtras
variable {σ : Type}
def body_decode_payload := (declPair Guest.Software.guestFn_decode_payload).2.2
def b_decode_payload : Nat := 55340232324207870001
theorem cost_decode_payload : Cost σ guestCtx body_decode_payload b_decode_payload := ArrayCost.Core.analyze_sound table1_sound (by cbv)
theorem cc_decode_payload : CalleeCost σ guestCtx (nm "decode_payload") b_decode_payload := by
  have hc : ∃ rs, guestCode (nm "decode_payload") = some ((declPair Guest.Software.guestFn_decode_payload).2.1,body_decode_payload,rs) :=
    declPair_valid (List.getElem_mem (n := 204) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ArrayCost.Core.callee_of_body hc cost_decode_payload
def table2 := ArrayCost.Core.extend table1 (nm "decode_payload") b_decode_payload
theorem table2_sound : TblSound σ guestCtx table2 := ArrayCost.Core.extend_sound table1_sound cc_decode_payload
#print axioms cc_decode_payload
end InitECandidate.Solver.MemSafe.ArrayCost.InitExtras
