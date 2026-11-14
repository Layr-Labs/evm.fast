import InitECandidate.Solver.MemSafe.FqCost.Retable.S053
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.FqCost.Retable
variable {σ : Type}
def body_pre_alt_bn128_add := (declPair Guest.Software.guestFn_pre_alt_bn128_add).2.2
def b_pre_alt_bn128_add : Nat := 73786994611802217192
theorem cost_pre_alt_bn128_add : Cost σ guestCtx body_pre_alt_bn128_add b_pre_alt_bn128_add := FqCost.CombCore.analyze_sound table53_sound (by cbv)
theorem cc_pre_alt_bn128_add : CalleeCost σ guestCtx (nm "pre_alt_bn128_add") b_pre_alt_bn128_add := by
 have hc : guestCode (nm "pre_alt_bn128_add") = some ((declPair Guest.Software.guestFn_pre_alt_bn128_add).2.1,body_pre_alt_bn128_add,(fnEntry Guest.Software.guestFn_pre_alt_bn128_add).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 692) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_pre_alt_bn128_add
def table54 := FqCost.CombCore.extend table53 (nm "pre_alt_bn128_add") b_pre_alt_bn128_add
theorem table54_sound : TblSound σ guestCtx table54 := FqCost.CombCore.extend_sound table53_sound cc_pre_alt_bn128_add
#print axioms cc_pre_alt_bn128_add
end InitECandidate.Solver.MemSafe.FqCost.Retable
