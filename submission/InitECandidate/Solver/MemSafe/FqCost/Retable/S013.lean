import InitECandidate.Solver.MemSafe.FqCost.Retable.S012
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.FqCost.Retable
variable {σ : Type}
def body_pre_p256verify := (declPair Guest.Software.guestFn_pre_p256verify).2.2
def b_pre_p256verify : Nat := 78264944391815847219450122360843973183041
theorem cost_pre_p256verify : Cost σ guestCtx body_pre_p256verify b_pre_p256verify := FqCost.CombCore.analyze_sound table12_sound (by cbv)
theorem cc_pre_p256verify : CalleeCost σ guestCtx (nm "pre_p256verify") b_pre_p256verify := by
 have hc : guestCode (nm "pre_p256verify") = some ((declPair Guest.Software.guestFn_pre_p256verify).2.1,body_pre_p256verify,(fnEntry Guest.Software.guestFn_pre_p256verify).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 645) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_pre_p256verify
def table13 := FqCost.CombCore.extend table12 (nm "pre_p256verify") b_pre_p256verify
theorem table13_sound : TblSound σ guestCtx table13 := FqCost.CombCore.extend_sound table12_sound cc_pre_p256verify
#print axioms cc_pre_p256verify
end InitECandidate.Solver.MemSafe.FqCost.Retable
