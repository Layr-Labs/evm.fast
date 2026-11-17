import InitECandidate.Solver.MemSafe.FqCost.Retable.S034
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.FqCost.Retable
variable {σ : Type}
def body_fe_mul_small := (declPair Guest.Software.guestFn_fe_mul_small).2.2
def b_fe_mul_small : Nat := 646392579252
theorem cost_fe_mul_small : Cost σ guestCtx body_fe_mul_small b_fe_mul_small := FqCost.CombCore.analyze_sound table34_sound (by cbv)
theorem cc_fe_mul_small : CalleeCost σ guestCtx (nm "fe_mul_small") b_fe_mul_small := by
 have hc : guestCode (nm "fe_mul_small") = some ((declPair Guest.Software.guestFn_fe_mul_small).2.1,body_fe_mul_small,(fnEntry Guest.Software.guestFn_fe_mul_small).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 666) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_fe_mul_small
def table35 := FqCost.CombCore.extend table34 (nm "fe_mul_small") b_fe_mul_small
theorem table35_sound : TblSound σ guestCtx table35 := FqCost.CombCore.extend_sound table34_sound cc_fe_mul_small
#print axioms cc_fe_mul_small
end InitECandidate.Solver.MemSafe.FqCost.Retable
