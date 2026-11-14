import InitECandidate.Solver.MemSafe.FqCost.Retable.S010
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.FqCost.Retable
variable {σ : Type}
def body_op_blobbasefee := (declPair Guest.Software.guestFn_op_blobbasefee).2.2
def b_op_blobbasefee : Nat := 1845354972104797038729527740129394022154542
theorem cost_op_blobbasefee : Cost σ guestCtx body_op_blobbasefee b_op_blobbasefee := FqCost.CombCore.analyze_sound table10_sound (by cbv)
theorem cc_op_blobbasefee : CalleeCost σ guestCtx (nm "op_blobbasefee") b_op_blobbasefee := by
 have hc : guestCode (nm "op_blobbasefee") = some ((declPair Guest.Software.guestFn_op_blobbasefee).2.1,body_op_blobbasefee,(fnEntry Guest.Software.guestFn_op_blobbasefee).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 553) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_op_blobbasefee
def table11 := FqCost.CombCore.extend table10 (nm "op_blobbasefee") b_op_blobbasefee
theorem table11_sound : TblSound σ guestCtx table11 := FqCost.CombCore.extend_sound table10_sound cc_op_blobbasefee
#print axioms cc_op_blobbasefee
end InitECandidate.Solver.MemSafe.FqCost.Retable
