import InitECandidate.Solver.MemSafe.FqCost.Retable.S035
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.FqCost.Retable
variable {σ : Type}
def body_fe_mul := (declPair Guest.Software.guestFn_fe_mul).2.2
def b_fe_mul : Nat := 343597404156
theorem cost_fe_mul : Cost σ guestCtx body_fe_mul b_fe_mul := FqCost.CombCore.analyze_sound table35_sound (by cbv)
theorem cc_fe_mul : CalleeCost σ guestCtx (nm "fe_mul") b_fe_mul := by
 have hc : guestCode (nm "fe_mul") = some ((declPair Guest.Software.guestFn_fe_mul).2.1,body_fe_mul,(fnEntry Guest.Software.guestFn_fe_mul).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 661) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_fe_mul
def table36 := FqCost.CombCore.extend table35 (nm "fe_mul") b_fe_mul
theorem table36_sound : TblSound σ guestCtx table36 := FqCost.CombCore.extend_sound table35_sound cc_fe_mul
#print axioms cc_fe_mul
end InitECandidate.Solver.MemSafe.FqCost.Retable
