import InitECandidate.Solver.MemSafe.FqCost.Retable.S022
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.FqCost.Retable
variable {σ : Type}
def body_pre_bls_g1_add := (declPair Guest.Software.guestFn_pre_bls_g1_add).2.2
def b_pre_bls_g1_add : Nat := 687200701232
theorem cost_pre_bls_g1_add : Cost σ guestCtx body_pre_bls_g1_add b_pre_bls_g1_add := FqCost.CombCore.analyze_sound table22_sound (by cbv)
theorem cc_pre_bls_g1_add : CalleeCost σ guestCtx (nm "pre_bls_g1_add") b_pre_bls_g1_add := by
 have hc : guestCode (nm "pre_bls_g1_add") = some ((declPair Guest.Software.guestFn_pre_bls_g1_add).2.1,body_pre_bls_g1_add,(fnEntry Guest.Software.guestFn_pre_bls_g1_add).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 814) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_pre_bls_g1_add
def table23 := FqCost.CombCore.extend table22 (nm "pre_bls_g1_add") b_pre_bls_g1_add
theorem table23_sound : TblSound σ guestCtx table23 := FqCost.CombCore.extend_sound table22_sound cc_pre_bls_g1_add
#print axioms cc_pre_bls_g1_add
end InitECandidate.Solver.MemSafe.FqCost.Retable
