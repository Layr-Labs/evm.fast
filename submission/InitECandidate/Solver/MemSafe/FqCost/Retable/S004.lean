import InitECandidate.Solver.MemSafe.FqCost.Retable.S003
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.FqCost.Retable
variable {σ : Type}
def body_u256_mod := (declPair Guest.Software.guestFn_u256_mod).2.2
def b_u256_mod : Nat := 100036893488147419103338
theorem cost_u256_mod : Cost σ guestCtx body_u256_mod b_u256_mod := FqCost.CombCore.analyze_sound table3_sound (by cbv)
theorem cc_u256_mod : CalleeCost σ guestCtx (nm "u256_mod") b_u256_mod := by
 have hc : guestCode (nm "u256_mod") = some ((declPair Guest.Software.guestFn_u256_mod).2.1,body_u256_mod,(fnEntry Guest.Software.guestFn_u256_mod).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 71) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_u256_mod
def table4 := FqCost.CombCore.extend table3 (nm "u256_mod") b_u256_mod
theorem table4_sound : TblSound σ guestCtx table4 := FqCost.CombCore.extend_sound table3_sound cc_u256_mod
#print axioms cc_u256_mod
end InitECandidate.Solver.MemSafe.FqCost.Retable
