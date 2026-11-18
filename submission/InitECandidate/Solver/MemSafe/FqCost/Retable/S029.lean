import InitECandidate.Solver.MemSafe.FqCost.Retable.S028
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.FqCost.Retable
variable {σ : Type}
def body_pre_kzg_point_evaluation := (declPair Guest.Software.guestFn_pre_kzg_point_evaluation).2.2
def b_pre_kzg_point_evaluation : Nat := 197753496205696404731312713783200
theorem cost_pre_kzg_point_evaluation : Cost σ guestCtx body_pre_kzg_point_evaluation b_pre_kzg_point_evaluation := FqCost.CombCore.analyze_sound table28_sound (by cbv)
theorem cc_pre_kzg_point_evaluation : CalleeCost σ guestCtx (nm "pre_kzg_point_evaluation") b_pre_kzg_point_evaluation := by
 have hc : guestCode (nm "pre_kzg_point_evaluation") = some ((declPair Guest.Software.guestFn_pre_kzg_point_evaluation).2.1,body_pre_kzg_point_evaluation,(fnEntry Guest.Software.guestFn_pre_kzg_point_evaluation).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 821) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_pre_kzg_point_evaluation
def table29 := FqCost.CombCore.extend table28 (nm "pre_kzg_point_evaluation") b_pre_kzg_point_evaluation
theorem table29_sound : TblSound σ guestCtx table29 := FqCost.CombCore.extend_sound table28_sound cc_pre_kzg_point_evaluation
#print axioms cc_pre_kzg_point_evaluation
end InitECandidate.Solver.MemSafe.FqCost.Retable
