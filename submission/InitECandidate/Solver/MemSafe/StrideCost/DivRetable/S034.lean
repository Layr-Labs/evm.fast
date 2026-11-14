import InitECandidate.Solver.MemSafe.StrideCost.DivRetable.S033
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.StrideCost.DivRetable
variable {σ : Type}
def body_destroy_storage := (declPair Guest.Software.guestFn_destroy_storage).2.2
def b_destroy_storage : Nat := 680564775674346746577830323499416159022
theorem cost_destroy_storage : Cost σ guestCtx body_destroy_storage b_destroy_storage :=
 StrideCost.CoreNext.analyze_sound table33_sound (by cbv)
theorem cc_destroy_storage : CalleeCost σ guestCtx (nm "destroy_storage") b_destroy_storage := by
 have hc : guestCode (nm "destroy_storage") = some ((declPair Guest.Software.guestFn_destroy_storage).2.1,body_destroy_storage,(fnEntry Guest.Software.guestFn_destroy_storage).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 389) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv
   all_goals rfl)
 exact StrideCost.CoreNext.callee_of_body hc cost_destroy_storage
def table34 := StrideCost.CoreNext.extend table33 (nm "destroy_storage") b_destroy_storage
theorem table34_sound : TblSound σ guestCtx table34 :=
 StrideCost.CoreNext.extend_sound table33_sound cc_destroy_storage
#print axioms cc_destroy_storage
end InitECandidate.Solver.MemSafe.StrideCost.DivRetable
