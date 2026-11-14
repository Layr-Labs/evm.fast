import InitECandidate.Solver.MemSafe.IncorpCost.Retable.S006
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.IncorpCost.Retable
variable {σ : Type}
def body_remove_storage_write := (declPair Guest.Software.guestFn_remove_storage_write).2.2
def b_remove_storage_write : Nat := 2535301201157435078447204401314
theorem cost_remove_storage_write : Cost σ guestCtx body_remove_storage_write b_remove_storage_write := FqCost.CombCore.analyze_sound table6_sound (by cbv)
theorem cc_remove_storage_write : CalleeCost σ guestCtx (nm "remove_storage_write") b_remove_storage_write := by
 have hc : guestCode (nm "remove_storage_write") = some ((declPair Guest.Software.guestFn_remove_storage_write).2.1,body_remove_storage_write,(fnEntry Guest.Software.guestFn_remove_storage_write).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 426) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_remove_storage_write
def table7 := FqCost.CombCore.extend table6 (nm "remove_storage_write") b_remove_storage_write
theorem table7_sound : TblSound σ guestCtx table7 := FqCost.CombCore.extend_sound table6_sound cc_remove_storage_write
#print axioms cc_remove_storage_write
end InitECandidate.Solver.MemSafe.IncorpCost.Retable
