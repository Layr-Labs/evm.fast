import InitECandidate.Solver.MemSafe.StrideCost.DivRetable.S048
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.StrideCost.DivRetable
variable {σ : Type}
def body_op_blobbasefee := (declPair Guest.Software.guestFn_op_blobbasefee).2.2
def b_op_blobbasefee : Nat := 1844674407371635726533841876929527740129394022154542
theorem cost_op_blobbasefee : Cost σ guestCtx body_op_blobbasefee b_op_blobbasefee :=
 StrideCost.CoreNext.analyze_sound table48_sound (by cbv)
theorem cc_op_blobbasefee : CalleeCost σ guestCtx (nm "op_blobbasefee") b_op_blobbasefee := by
 have hc : guestCode (nm "op_blobbasefee") = some ((declPair Guest.Software.guestFn_op_blobbasefee).2.1,body_op_blobbasefee,(fnEntry Guest.Software.guestFn_op_blobbasefee).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 553) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv
   all_goals rfl)
 exact StrideCost.CoreNext.callee_of_body hc cost_op_blobbasefee
def table49 := StrideCost.CoreNext.extend table48 (nm "op_blobbasefee") b_op_blobbasefee
theorem table49_sound : TblSound σ guestCtx table49 :=
 StrideCost.CoreNext.extend_sound table48_sound cc_op_blobbasefee
#print axioms cc_op_blobbasefee
end InitECandidate.Solver.MemSafe.StrideCost.DivRetable
