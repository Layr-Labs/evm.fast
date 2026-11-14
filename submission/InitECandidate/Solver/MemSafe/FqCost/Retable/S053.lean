import InitECandidate.Solver.MemSafe.FqCost.Retable.S052
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.FqCost.Retable
variable {σ : Type}
def body_bn254_g1_add := (declPair Guest.Software.guestFn_bn254_g1_add).2.2
def b_bn254_g1_add : Nat := 73786994336924310163
theorem cost_bn254_g1_add : Cost σ guestCtx body_bn254_g1_add b_bn254_g1_add := FqCost.CombCore.analyze_sound table52_sound (by cbv)
theorem cc_bn254_g1_add : CalleeCost σ guestCtx (nm "bn254_g1_add") b_bn254_g1_add := by
 have hc : guestCode (nm "bn254_g1_add") = some ((declPair Guest.Software.guestFn_bn254_g1_add).2.1,body_bn254_g1_add,(fnEntry Guest.Software.guestFn_bn254_g1_add).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 689) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_bn254_g1_add
def table53 := FqCost.CombCore.extend table52 (nm "bn254_g1_add") b_bn254_g1_add
theorem table53_sound : TblSound σ guestCtx table53 := FqCost.CombCore.extend_sound table52_sound cc_bn254_g1_add
#print axioms cc_bn254_g1_add
end InitECandidate.Solver.MemSafe.FqCost.Retable
