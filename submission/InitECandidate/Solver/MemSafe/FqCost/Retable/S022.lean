import InitECandidate.Solver.MemSafe.FqCost.Retable.S021
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.FqCost.Retable
variable {σ : Type}
def body_bls_g1_add_exec := (declPair Guest.Software.guestFn_bls_g1_add_exec).2.2
def b_bls_g1_add_exec : Nat := 687200701227
theorem cost_bls_g1_add_exec : Cost σ guestCtx body_bls_g1_add_exec b_bls_g1_add_exec := FqCost.CombCore.analyze_sound table21_sound (by cbv)
theorem cc_bls_g1_add_exec : CalleeCost σ guestCtx (nm "bls_g1_add_exec") b_bls_g1_add_exec := by
 have hc : guestCode (nm "bls_g1_add_exec") = some ((declPair Guest.Software.guestFn_bls_g1_add_exec).2.1,body_bls_g1_add_exec,(fnEntry Guest.Software.guestFn_bls_g1_add_exec).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 802) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_bls_g1_add_exec
def table22 := FqCost.CombCore.extend table21 (nm "bls_g1_add_exec") b_bls_g1_add_exec
theorem table22_sound : TblSound σ guestCtx table22 := FqCost.CombCore.extend_sound table21_sound cc_bls_g1_add_exec
#print axioms cc_bls_g1_add_exec
end InitECandidate.Solver.MemSafe.FqCost.Retable
