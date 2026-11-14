import InitECandidate.Solver.MemSafe.FqCost.ModexpRetable.S011
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.FqCost.ModexpRetable
variable {σ : Type}
def body_op_create := (declPair Guest.Software.guestFn_op_create).2.2
def b_op_create : Nat := 2332048658328460678594832797666048781065670
theorem cost_op_create : Cost σ guestCtx body_op_create b_op_create := FqCost.CombCore.analyze_sound table11_sound (by cbv)
theorem cc_op_create : CalleeCost σ guestCtx (nm "op_create") b_op_create := by
 have hc : guestCode (nm "op_create") = some ((declPair Guest.Software.guestFn_op_create).2.1,body_op_create,(fnEntry Guest.Software.guestFn_op_create).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 599) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_op_create
def table12 := FqCost.CombCore.extend table11 (nm "op_create") b_op_create
theorem table12_sound : TblSound σ guestCtx table12 := FqCost.CombCore.extend_sound table11_sound cc_op_create
#print axioms cc_op_create
end InitECandidate.Solver.MemSafe.FqCost.ModexpRetable
