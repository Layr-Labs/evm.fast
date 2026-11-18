import InitECandidate.Solver.MemSafe.ArrayCost.InitExtras.C06
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ArrayCost.InitExtras
variable {σ : Type}
def body_decode_host_input := (declPair Guest.Software.guestFn_decode_host_input).2.2
def b_decode_host_input : Nat := 387381626406894043552
theorem cost_decode_host_input : Cost σ guestCtx body_decode_host_input b_decode_host_input := ArrayCost.Core.analyze_sound table6_sound (by cbv)
theorem cc_decode_host_input : CalleeCost σ guestCtx (nm "decode_host_input") b_decode_host_input := by
  have hc : ∃ rs, guestCode (nm "decode_host_input") = some ((declPair Guest.Software.guestFn_decode_host_input).2.1,body_decode_host_input,rs) :=
    declPair_valid (List.getElem_mem (n := 200) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ArrayCost.Core.callee_of_body hc cost_decode_host_input
def table7 := ArrayCost.Core.extend table6 (nm "decode_host_input") b_decode_host_input
theorem table7_sound : TblSound σ guestCtx table7 := ArrayCost.Core.extend_sound table6_sound cc_decode_host_input
#print axioms cc_decode_host_input
end InitECandidate.Solver.MemSafe.ArrayCost.InitExtras
