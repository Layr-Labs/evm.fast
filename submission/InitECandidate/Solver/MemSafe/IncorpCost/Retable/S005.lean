import InitECandidate.Solver.MemSafe.IncorpCost.Retable.S004
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.IncorpCost.Retable
variable {σ : Type}
def body_add_storage_write := (declPair Guest.Software.guestFn_add_storage_write).2.2
def b_add_storage_write : Nat := 18446748677914494265
theorem cost_add_storage_write : Cost σ guestCtx body_add_storage_write b_add_storage_write := FqCost.CombCore.analyze_sound table4_sound (by cbv)
theorem cc_add_storage_write : CalleeCost σ guestCtx (nm "add_storage_write") b_add_storage_write := by
 have hc : guestCode (nm "add_storage_write") = some ((declPair Guest.Software.guestFn_add_storage_write).2.1,body_add_storage_write,(fnEntry Guest.Software.guestFn_add_storage_write).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 414) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_add_storage_write
def table5 := FqCost.CombCore.extend table4 (nm "add_storage_write") b_add_storage_write
theorem table5_sound : TblSound σ guestCtx table5 := FqCost.CombCore.extend_sound table4_sound cc_add_storage_write
#print axioms cc_add_storage_write
end InitECandidate.Solver.MemSafe.IncorpCost.Retable
