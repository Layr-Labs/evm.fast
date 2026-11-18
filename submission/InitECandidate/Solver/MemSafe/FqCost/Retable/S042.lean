import InitECandidate.Solver.MemSafe.FqCost.Retable.S041
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.FqCost.Retable
variable {σ : Type}
def body_fe_neg := (declPair Guest.Software.guestFn_fe_neg).2.2
def b_fe_neg : Nat := 4294967304
theorem cost_fe_neg : Cost σ guestCtx body_fe_neg b_fe_neg := FqCost.CombCore.analyze_sound table41_sound (by cbv)
theorem cc_fe_neg : CalleeCost σ guestCtx (nm "fe_neg") b_fe_neg := by
 have hc : guestCode (nm "fe_neg") = some ((declPair Guest.Software.guestFn_fe_neg).2.1,body_fe_neg,(fnEntry Guest.Software.guestFn_fe_neg).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 665) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_fe_neg
def table42 := FqCost.CombCore.extend table41 (nm "fe_neg") b_fe_neg
theorem table42_sound : TblSound σ guestCtx table42 := FqCost.CombCore.extend_sound table41_sound cc_fe_neg
#print axioms cc_fe_neg
end InitECandidate.Solver.MemSafe.FqCost.Retable
