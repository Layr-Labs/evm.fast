import InitECandidate.Solver.MemSafe.IncorpCost.Retable.S003
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.IncorpCost.Retable
variable {σ : Type}
def body_lst_upsert_idx := (declPair Guest.Software.guestFn_lst_upsert_idx).2.2
def b_lst_upsert_idx : Nat := 18446744211148505130
theorem cost_lst_upsert_idx : Cost σ guestCtx body_lst_upsert_idx b_lst_upsert_idx := FqCost.CombCore.analyze_sound table3_sound (by cbv)
theorem cc_lst_upsert_idx : CalleeCost σ guestCtx (nm "lst_upsert_idx") b_lst_upsert_idx := by
 have hc : guestCode (nm "lst_upsert_idx") = some ((declPair Guest.Software.guestFn_lst_upsert_idx).2.1,body_lst_upsert_idx,(fnEntry Guest.Software.guestFn_lst_upsert_idx).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 413) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_lst_upsert_idx
def table4 := FqCost.CombCore.extend table3 (nm "lst_upsert_idx") b_lst_upsert_idx
theorem table4_sound : TblSound σ guestCtx table4 := FqCost.CombCore.extend_sound table3_sound cc_lst_upsert_idx
#print axioms cc_lst_upsert_idx
end InitECandidate.Solver.MemSafe.IncorpCost.Retable
