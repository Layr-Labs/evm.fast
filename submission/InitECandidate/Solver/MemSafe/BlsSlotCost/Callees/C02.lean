import InitECandidate.Solver.MemSafe.BlsSlotCost.Callees.C01
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BlsSlotCost.Callees
variable {σ : Type}
def body_bn254_pairing_check := (declPair Guest.Software.guestFn_bn254_pairing_check).2.2
def b_bn254_pairing_check : Nat := 7650610313072867357603004400698759711770645297328182695
theorem cost_bn254_pairing_check : Cost σ guestCtx body_bn254_pairing_check b_bn254_pairing_check := BlsSlotCost.Core.analyze_sound table1_sound (by cbv)
theorem cc_bn254_pairing_check : CalleeCost σ guestCtx (nm "bn254_pairing_check") b_bn254_pairing_check := by
 have hc : ∃ rs, guestCode (nm "bn254_pairing_check") = some ((declPair Guest.Software.guestFn_bn254_pairing_check).2.1,body_bn254_pairing_check,rs) :=
  declPair_valid (List.getElem_mem (n := 691) (by decide)) ⟨_,rfl⟩
 obtain ⟨rs,hc⟩ := hc
 exact BlsSlotCost.Core.callee_of_body hc cost_bn254_pairing_check
def table2 := BlsSlotCost.Core.extend table1 (nm "bn254_pairing_check") b_bn254_pairing_check
theorem table2_sound : TblSound σ guestCtx table2 := BlsSlotCost.Core.extend_sound table1_sound cc_bn254_pairing_check
#print axioms cc_bn254_pairing_check
end InitECandidate.Solver.MemSafe.BlsSlotCost.Callees
