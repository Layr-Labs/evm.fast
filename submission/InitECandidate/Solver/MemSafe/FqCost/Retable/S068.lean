import InitECandidate.Solver.MemSafe.FqCost.Retable.S067
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.FqCost.Retable
variable {σ : Type}
def body_generic_call := (declPair Guest.Software.guestFn_generic_call).2.2
def b_generic_call : Nat := 100001111115525306961537921504469911935072358930
theorem cost_generic_call : Cost σ guestCtx body_generic_call b_generic_call := FqCost.CombCore.analyze_sound table67_sound (by cbv)
theorem cc_generic_call : CalleeCost σ guestCtx (nm "generic_call") b_generic_call := by
 have hc : guestCode (nm "generic_call") = some ((declPair Guest.Software.guestFn_generic_call).2.1,body_generic_call,(fnEntry Guest.Software.guestFn_generic_call).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 601) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_generic_call
def table68 := FqCost.CombCore.extend table67 (nm "generic_call") b_generic_call
theorem table68_sound : TblSound σ guestCtx table68 := FqCost.CombCore.extend_sound table67_sound cc_generic_call
#print axioms cc_generic_call
end InitECandidate.Solver.MemSafe.FqCost.Retable
