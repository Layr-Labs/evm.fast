import InitECandidate.Solver.MemSafe.FqCost.Retable.S036
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.FqCost.Retable
variable {σ : Type}
def body_fe_sqr := (declPair Guest.Software.guestFn_fe_sqr).2.2
def b_fe_sqr : Nat := 687194808553
theorem cost_fe_sqr : Cost σ guestCtx body_fe_sqr b_fe_sqr := FqCost.CombCore.analyze_sound table36_sound (by cbv)
theorem cc_fe_sqr : CalleeCost σ guestCtx (nm "fe_sqr") b_fe_sqr := by
 have hc : guestCode (nm "fe_sqr") = some ((declPair Guest.Software.guestFn_fe_sqr).2.1,body_fe_sqr,(fnEntry Guest.Software.guestFn_fe_sqr).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 662) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_fe_sqr
def table37 := FqCost.CombCore.extend table36 (nm "fe_sqr") b_fe_sqr
theorem table37_sound : TblSound σ guestCtx table37 := FqCost.CombCore.extend_sound table36_sound cc_fe_sqr
#print axioms cc_fe_sqr
end InitECandidate.Solver.MemSafe.FqCost.Retable
