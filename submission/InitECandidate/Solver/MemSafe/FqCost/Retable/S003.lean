import InitECandidate.Solver.MemSafe.FqCost.Retable.S002
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.FqCost.Retable
variable {σ : Type}
def body_u256_div := (declPair Guest.Software.guestFn_u256_div).2.2
def b_u256_div : Nat := 100036893488147419103338
theorem cost_u256_div : Cost σ guestCtx body_u256_div b_u256_div := FqCost.CombCore.analyze_sound table2_sound (by cbv)
theorem cc_u256_div : CalleeCost σ guestCtx (nm "u256_div") b_u256_div := by
 have hc : guestCode (nm "u256_div") = some ((declPair Guest.Software.guestFn_u256_div).2.1,body_u256_div,(fnEntry Guest.Software.guestFn_u256_div).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 70) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_u256_div
def table3 := FqCost.CombCore.extend table2 (nm "u256_div") b_u256_div
theorem table3_sound : TblSound σ guestCtx table3 := FqCost.CombCore.extend_sound table2_sound cc_u256_div
#print axioms cc_u256_div
end InitECandidate.Solver.MemSafe.FqCost.Retable
