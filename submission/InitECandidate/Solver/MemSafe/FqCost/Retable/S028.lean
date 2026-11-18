import InitECandidate.Solver.MemSafe.FqCost.Retable.S027
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.FqCost.Retable
variable {σ : Type}
def body_kzg_point_evaluation_exec := (declPair Guest.Software.guestFn_kzg_point_evaluation_exec).2.2
def b_kzg_point_evaluation_exec : Nat := 197753496205696404731312713783195
theorem cost_kzg_point_evaluation_exec : Cost σ guestCtx body_kzg_point_evaluation_exec b_kzg_point_evaluation_exec := FqCost.CombCore.analyze_sound table27_sound (by cbv)
theorem cc_kzg_point_evaluation_exec : CalleeCost σ guestCtx (nm "kzg_point_evaluation_exec") b_kzg_point_evaluation_exec := by
 have hc : guestCode (nm "kzg_point_evaluation_exec") = some ((declPair Guest.Software.guestFn_kzg_point_evaluation_exec).2.1,body_kzg_point_evaluation_exec,(fnEntry Guest.Software.guestFn_kzg_point_evaluation_exec).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 809) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_kzg_point_evaluation_exec
def table28 := FqCost.CombCore.extend table27 (nm "kzg_point_evaluation_exec") b_kzg_point_evaluation_exec
theorem table28_sound : TblSound σ guestCtx table28 := FqCost.CombCore.extend_sound table27_sound cc_kzg_point_evaluation_exec
#print axioms cc_kzg_point_evaluation_exec
end InitECandidate.Solver.MemSafe.FqCost.Retable
