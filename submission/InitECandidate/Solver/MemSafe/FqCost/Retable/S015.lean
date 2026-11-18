import InitECandidate.Solver.MemSafe.FqCost.Retable.S014
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.FqCost.Retable
variable {σ : Type}
def body_pre_bls_pairing := (declPair Guest.Software.guestFn_pre_bls_pairing).2.2
def b_pre_bls_pairing : Nat := 6578792688551468277965337382572374693303
theorem cost_pre_bls_pairing : Cost σ guestCtx body_pre_bls_pairing b_pre_bls_pairing := FqCost.CombCore.analyze_sound table14_sound (by cbv)
theorem cc_pre_bls_pairing : CalleeCost σ guestCtx (nm "pre_bls_pairing") b_pre_bls_pairing := by
 have hc : guestCode (nm "pre_bls_pairing") = some ((declPair Guest.Software.guestFn_pre_bls_pairing).2.1,body_pre_bls_pairing,(fnEntry Guest.Software.guestFn_pre_bls_pairing).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 818) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_pre_bls_pairing
def table15 := FqCost.CombCore.extend table14 (nm "pre_bls_pairing") b_pre_bls_pairing
theorem table15_sound : TblSound σ guestCtx table15 := FqCost.CombCore.extend_sound table14_sound cc_pre_bls_pairing
#print axioms cc_pre_bls_pairing
end InitECandidate.Solver.MemSafe.FqCost.Retable
