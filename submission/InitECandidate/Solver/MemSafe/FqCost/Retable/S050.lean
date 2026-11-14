import InitECandidate.Solver.MemSafe.FqCost.Retable.S049
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.FqCost.Retable
variable {σ : Type}
def body_bn254_g1_to_bytes := (declPair Guest.Software.guestFn_bn254_g1_to_bytes).2.2
def b_bn254_g1_to_bytes : Nat := 137440542846
theorem cost_bn254_g1_to_bytes : Cost σ guestCtx body_bn254_g1_to_bytes b_bn254_g1_to_bytes := FqCost.CombCore.analyze_sound table49_sound (by cbv)
theorem cc_bn254_g1_to_bytes : CalleeCost σ guestCtx (nm "bn254_g1_to_bytes") b_bn254_g1_to_bytes := by
 have hc : guestCode (nm "bn254_g1_to_bytes") = some ((declPair Guest.Software.guestFn_bn254_g1_to_bytes).2.1,body_bn254_g1_to_bytes,(fnEntry Guest.Software.guestFn_bn254_g1_to_bytes).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 688) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_bn254_g1_to_bytes
def table50 := FqCost.CombCore.extend table49 (nm "bn254_g1_to_bytes") b_bn254_g1_to_bytes
theorem table50_sound : TblSound σ guestCtx table50 := FqCost.CombCore.extend_sound table49_sound cc_bn254_g1_to_bytes
#print axioms cc_bn254_g1_to_bytes
end InitECandidate.Solver.MemSafe.FqCost.Retable
