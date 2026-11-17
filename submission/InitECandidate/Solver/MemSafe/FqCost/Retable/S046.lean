import InitECandidate.Solver.MemSafe.FqCost.Retable.S045
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.FqCost.Retable
variable {σ : Type}
def body_fe_add := (declPair Guest.Software.guestFn_fe_add).2.2
def b_fe_add : Nat := 5368709130
theorem cost_fe_add : Cost σ guestCtx body_fe_add b_fe_add := FqCost.CombCore.analyze_sound table45_sound (by cbv)
theorem cc_fe_add : CalleeCost σ guestCtx (nm "fe_add") b_fe_add := by
 have hc : guestCode (nm "fe_add") = some ((declPair Guest.Software.guestFn_fe_add).2.1,body_fe_add,(fnEntry Guest.Software.guestFn_fe_add).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 663) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_fe_add
def table46 := FqCost.CombCore.extend table45 (nm "fe_add") b_fe_add
theorem table46_sound : TblSound σ guestCtx table46 := FqCost.CombCore.extend_sound table45_sound cc_fe_add
#print axioms cc_fe_add
end InitECandidate.Solver.MemSafe.FqCost.Retable
