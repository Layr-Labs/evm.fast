import InitECandidate.Solver.MemSafe.FqCost.Retable.S037
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.FqCost.Retable
variable {σ : Type}
def body_fe_sub := (declPair Guest.Software.guestFn_fe_sub).2.2
def b_fe_sub : Nat := 5368709130
theorem cost_fe_sub : Cost σ guestCtx body_fe_sub b_fe_sub := FqCost.CombCore.analyze_sound table37_sound (by cbv)
theorem cc_fe_sub : CalleeCost σ guestCtx (nm "fe_sub") b_fe_sub := by
 have hc : guestCode (nm "fe_sub") = some ((declPair Guest.Software.guestFn_fe_sub).2.1,body_fe_sub,(fnEntry Guest.Software.guestFn_fe_sub).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 664) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_fe_sub
def table38 := FqCost.CombCore.extend table37 (nm "fe_sub") b_fe_sub
theorem table38_sound : TblSound σ guestCtx table38 := FqCost.CombCore.extend_sound table37_sound cc_fe_sub
#print axioms cc_fe_sub
end InitECandidate.Solver.MemSafe.FqCost.Retable
