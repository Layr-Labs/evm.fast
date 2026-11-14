import InitECandidate.Solver.MemSafe.ArrayCost.InitExtras.C03
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ArrayCost.InitExtras
variable {σ : Type}
def body_decode_stateless_input := (declPair Guest.Software.guestFn_decode_stateless_input).2.2
def b_decode_stateless_input : Nat := 387381626063296659717
theorem cost_decode_stateless_input : Cost σ guestCtx body_decode_stateless_input b_decode_stateless_input := ArrayCost.Core.analyze_sound table3_sound (by cbv)
theorem cc_decode_stateless_input : CalleeCost σ guestCtx (nm "decode_stateless_input") b_decode_stateless_input := by
  have hc : ∃ rs, guestCode (nm "decode_stateless_input") = some ((declPair Guest.Software.guestFn_decode_stateless_input).2.1,body_decode_stateless_input,rs) :=
    declPair_valid (List.getElem_mem (n := 207) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ArrayCost.Core.callee_of_body hc cost_decode_stateless_input
def table4 := ArrayCost.Core.extend table3 (nm "decode_stateless_input") b_decode_stateless_input
theorem table4_sound : TblSound σ guestCtx table4 := ArrayCost.Core.extend_sound table3_sound cc_decode_stateless_input
#print axioms cc_decode_stateless_input
end InitECandidate.Solver.MemSafe.ArrayCost.InitExtras
