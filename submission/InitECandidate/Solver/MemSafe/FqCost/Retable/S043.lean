import InitECandidate.Solver.MemSafe.FqCost.Retable.S042
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.FqCost.Retable
variable {σ : Type}
def body_bn254_miller_raw := (declPair Guest.Software.guestFn_bn254_miller_raw).2.2
def b_bn254_miller_raw : Nat := 1217419995000708405225532602354591
theorem cost_bn254_miller_raw : Cost σ guestCtx body_bn254_miller_raw b_bn254_miller_raw := FqCost.CombCore.analyze_sound table42_sound (by cbv)
theorem cc_bn254_miller_raw : CalleeCost σ guestCtx (nm "bn254_miller_raw") b_bn254_miller_raw := by
 have hc : guestCode (nm "bn254_miller_raw") = some ((declPair Guest.Software.guestFn_bn254_miller_raw).2.1,body_bn254_miller_raw,(fnEntry Guest.Software.guestFn_bn254_miller_raw).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 684) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_bn254_miller_raw
def table43 := FqCost.CombCore.extend table42 (nm "bn254_miller_raw") b_bn254_miller_raw
theorem table43_sound : TblSound σ guestCtx table43 := FqCost.CombCore.extend_sound table42_sound cc_bn254_miller_raw
#print axioms cc_bn254_miller_raw
end InitECandidate.Solver.MemSafe.FqCost.Retable
