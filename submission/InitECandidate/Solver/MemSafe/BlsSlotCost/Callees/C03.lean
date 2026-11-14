import InitECandidate.Solver.MemSafe.BlsSlotCost.Callees.C02
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BlsSlotCost.Callees
variable {σ : Type}
def body_pre_alt_bn128_pairing_check := (declPair Guest.Software.guestFn_pre_alt_bn128_pairing_check).2.2
def b_pre_alt_bn128_pairing_check : Nat := 7650610313072867357603004400698759730217389508476687828
theorem cost_pre_alt_bn128_pairing_check : Cost σ guestCtx body_pre_alt_bn128_pairing_check b_pre_alt_bn128_pairing_check := BlsSlotCost.Core.analyze_sound table2_sound (by cbv)
theorem cc_pre_alt_bn128_pairing_check : CalleeCost σ guestCtx (nm "pre_alt_bn128_pairing_check") b_pre_alt_bn128_pairing_check := by
 have hc : ∃ rs, guestCode (nm "pre_alt_bn128_pairing_check") = some ((declPair Guest.Software.guestFn_pre_alt_bn128_pairing_check).2.1,body_pre_alt_bn128_pairing_check,rs) :=
  declPair_valid (List.getElem_mem (n := 694) (by decide)) ⟨_,rfl⟩
 obtain ⟨rs,hc⟩ := hc
 exact BlsSlotCost.Core.callee_of_body hc cost_pre_alt_bn128_pairing_check
def table3 := BlsSlotCost.Core.extend table2 (nm "pre_alt_bn128_pairing_check") b_pre_alt_bn128_pairing_check
theorem table3_sound : TblSound σ guestCtx table3 := BlsSlotCost.Core.extend_sound table2_sound cc_pre_alt_bn128_pairing_check
#print axioms cc_pre_alt_bn128_pairing_check
end InitECandidate.Solver.MemSafe.BlsSlotCost.Callees
