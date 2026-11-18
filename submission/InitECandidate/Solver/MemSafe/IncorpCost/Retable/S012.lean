import InitECandidate.Solver.MemSafe.IncorpCost.Retable.S011
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.IncorpCost.Retable
variable {σ : Type}
def body_add_nonce_change := (declPair Guest.Software.guestFn_add_nonce_change).2.2
def b_add_nonce_change : Nat := 18446746444531499719
theorem cost_add_nonce_change : Cost σ guestCtx body_add_nonce_change b_add_nonce_change := FqCost.CombCore.analyze_sound table11_sound (by cbv)
theorem cc_add_nonce_change : CalleeCost σ guestCtx (nm "add_nonce_change") b_add_nonce_change := by
 have hc : guestCode (nm "add_nonce_change") = some ((declPair Guest.Software.guestFn_add_nonce_change).2.1,body_add_nonce_change,(fnEntry Guest.Software.guestFn_add_nonce_change).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 417) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_add_nonce_change
def table12 := FqCost.CombCore.extend table11 (nm "add_nonce_change") b_add_nonce_change
theorem table12_sound : TblSound σ guestCtx table12 := FqCost.CombCore.extend_sound table11_sound cc_add_nonce_change
#print axioms cc_add_nonce_change
end InitECandidate.Solver.MemSafe.IncorpCost.Retable
