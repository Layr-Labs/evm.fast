import InitECandidate.Solver.MemSafe.FqCost.Retable.S023
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.FqCost.Retable
variable {σ : Type}
def body_g2_neg := (declPair Guest.Software.guestFn_g2_neg).2.2
def b_g2_neg : Nat := 274877907027
theorem cost_g2_neg : Cost σ guestCtx body_g2_neg b_g2_neg := FqCost.CombCore.analyze_sound table23_sound (by cbv)
theorem cc_g2_neg : CalleeCost σ guestCtx (nm "g2_neg") b_g2_neg := by
 have hc : guestCode (nm "g2_neg") = some ((declPair Guest.Software.guestFn_g2_neg).2.1,body_g2_neg,(fnEntry Guest.Software.guestFn_g2_neg).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 773) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_g2_neg
def table24 := FqCost.CombCore.extend table23 (nm "g2_neg") b_g2_neg
theorem table24_sound : TblSound σ guestCtx table24 := FqCost.CombCore.extend_sound table23_sound cc_g2_neg
#print axioms cc_g2_neg
end InitECandidate.Solver.MemSafe.FqCost.Retable
