import InitECandidate.Solver.MemSafe.ArrayCost.InitExtras.C11
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ArrayCost.InitExtras
variable {σ : Type}
def body_serialize_result := (declPair Guest.Software.guestFn_serialize_result).2.2
def b_serialize_result : Nat := 137438953512
theorem cost_serialize_result : Cost σ guestCtx body_serialize_result b_serialize_result := ArrayCost.Core.analyze_sound table11_sound (by cbv)
theorem cc_serialize_result : CalleeCost σ guestCtx (nm "serialize_result") b_serialize_result := by
  have hc : ∃ rs, guestCode (nm "serialize_result") = some ((declPair Guest.Software.guestFn_serialize_result).2.1,body_serialize_result,rs) :=
    declPair_valid (List.getElem_mem (n := 219) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ArrayCost.Core.callee_of_body hc cost_serialize_result
def table12 := ArrayCost.Core.extend table11 (nm "serialize_result") b_serialize_result
theorem table12_sound : TblSound σ guestCtx table12 := ArrayCost.Core.extend_sound table11_sound cc_serialize_result
#print axioms cc_serialize_result
end InitECandidate.Solver.MemSafe.ArrayCost.InitExtras
