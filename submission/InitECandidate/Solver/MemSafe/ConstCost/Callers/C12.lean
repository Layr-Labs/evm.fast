import InitECandidate.Solver.MemSafe.ConstCost.Callers.C11
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ConstCost.Callers
variable {σ : Type}
def body_pre_alt_bn128_pairing_check := (declPair Guest.Software.guestFn_pre_alt_bn128_pairing_check).2.2
def b_pre_alt_bn128_pairing_check : Nat := 4107616110704071547854714218720366731965947631636605747803461908
theorem cost_pre_alt_bn128_pairing_check : Cost σ guestCtx body_pre_alt_bn128_pairing_check b_pre_alt_bn128_pairing_check :=
  ConstCost.Core.analyze_sound table11_sound (by cbv)
theorem cc_pre_alt_bn128_pairing_check : CalleeCost σ guestCtx (nm "pre_alt_bn128_pairing_check") b_pre_alt_bn128_pairing_check := by
  have hc : ∃ rs, guestCode (nm "pre_alt_bn128_pairing_check") = some ((declPair Guest.Software.guestFn_pre_alt_bn128_pairing_check).2.1,body_pre_alt_bn128_pairing_check,rs) :=
    declPair_valid (List.getElem_mem (n := 694) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ConstCost.Core.callee_of_body hc cost_pre_alt_bn128_pairing_check
def table12 := ConstCost.Core.extend table11 (nm "pre_alt_bn128_pairing_check") b_pre_alt_bn128_pairing_check
theorem table12_sound : TblSound σ guestCtx table12 := ConstCost.Core.extend_sound table11_sound cc_pre_alt_bn128_pairing_check
#print axioms cc_pre_alt_bn128_pairing_check
end InitECandidate.Solver.MemSafe.ConstCost.Callers
