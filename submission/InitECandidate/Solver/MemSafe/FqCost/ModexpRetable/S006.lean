import InitECandidate.Solver.MemSafe.FqCost.ModexpRetable.S005
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.FqCost.ModexpRetable
variable {σ : Type}
def body_op_staticcall := (declPair Guest.Software.guestFn_op_staticcall).2.2
def b_op_staticcall : Nat := 1459564669176823429887246025889708756079493
theorem cost_op_staticcall : Cost σ guestCtx body_op_staticcall b_op_staticcall := FqCost.CombCore.analyze_sound table5_sound (by cbv)
theorem cc_op_staticcall : CalleeCost σ guestCtx (nm "op_staticcall") b_op_staticcall := by
 have hc : guestCode (nm "op_staticcall") = some ((declPair Guest.Software.guestFn_op_staticcall).2.1,body_op_staticcall,(fnEntry Guest.Software.guestFn_op_staticcall).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 606) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_op_staticcall
def table6 := FqCost.CombCore.extend table5 (nm "op_staticcall") b_op_staticcall
theorem table6_sound : TblSound σ guestCtx table6 := FqCost.CombCore.extend_sound table5_sound cc_op_staticcall
#print axioms cc_op_staticcall
end InitECandidate.Solver.MemSafe.FqCost.ModexpRetable
