import InitECandidate.Solver.MemSafe.FqCost.Retable.S005
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.FqCost.Retable
variable {σ : Type}
def body_fn_mul := (declPair Guest.Software.guestFn_fn_mul).2.2
def b_fn_mul : Nat := 300110680464442257309895
theorem cost_fn_mul : Cost σ guestCtx body_fn_mul b_fn_mul := FqCost.CombCore.analyze_sound table5_sound (by cbv)
theorem cc_fn_mul : CalleeCost σ guestCtx (nm "fn_mul") b_fn_mul := by
 have hc : guestCode (nm "fn_mul") = some ((declPair Guest.Software.guestFn_fn_mul).2.1,body_fn_mul,(fnEntry Guest.Software.guestFn_fn_mul).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 162) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_fn_mul
def table6 := FqCost.CombCore.extend table5 (nm "fn_mul") b_fn_mul
theorem table6_sound : TblSound σ guestCtx table6 := FqCost.CombCore.extend_sound table5_sound cc_fn_mul
#print axioms cc_fn_mul
end InitECandidate.Solver.MemSafe.FqCost.Retable
