import InitECandidate.Solver.MemSafe.FqCost.Retable.S058
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.FqCost.Retable
variable {σ : Type}
def body_pre_ecrecover := (declPair Guest.Software.guestFn_pre_ecrecover).2.2
def b_pre_ecrecover : Nat := 633825906718049080304606955034
theorem cost_pre_ecrecover : Cost σ guestCtx body_pre_ecrecover b_pre_ecrecover := FqCost.CombCore.analyze_sound table58_sound (by cbv)
theorem cc_pre_ecrecover : CalleeCost σ guestCtx (nm "pre_ecrecover") b_pre_ecrecover := by
 have hc : guestCode (nm "pre_ecrecover") = some ((declPair Guest.Software.guestFn_pre_ecrecover).2.1,body_pre_ecrecover,(fnEntry Guest.Software.guestFn_pre_ecrecover).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 825) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_pre_ecrecover
def table59 := FqCost.CombCore.extend table58 (nm "pre_ecrecover") b_pre_ecrecover
theorem table59_sound : TblSound σ guestCtx table59 := FqCost.CombCore.extend_sound table58_sound cc_pre_ecrecover
#print axioms cc_pre_ecrecover
end InitECandidate.Solver.MemSafe.FqCost.Retable
