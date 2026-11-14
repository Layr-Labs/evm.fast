import InitECandidate.Solver.MemSafe.BlsSlotCost.Callees.C08
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BlsSlotCost.Callees
variable {σ : Type}
def body_pre_bls_pairing := (declPair Guest.Software.guestFn_pre_bls_pairing).2.2
def b_pre_bls_pairing : Nat := 2526256316879675431025258352092361097500105
theorem cost_pre_bls_pairing : Cost σ guestCtx body_pre_bls_pairing b_pre_bls_pairing := BlsSlotCost.Core.analyze_sound table8_sound (by cbv)
theorem cc_pre_bls_pairing : CalleeCost σ guestCtx (nm "pre_bls_pairing") b_pre_bls_pairing := by
 have hc : ∃ rs, guestCode (nm "pre_bls_pairing") = some ((declPair Guest.Software.guestFn_pre_bls_pairing).2.1,body_pre_bls_pairing,rs) :=
  declPair_valid (List.getElem_mem (n := 818) (by decide)) ⟨_,rfl⟩
 obtain ⟨rs,hc⟩ := hc
 exact BlsSlotCost.Core.callee_of_body hc cost_pre_bls_pairing
def table9 := BlsSlotCost.Core.extend table8 (nm "pre_bls_pairing") b_pre_bls_pairing
theorem table9_sound : TblSound σ guestCtx table9 := BlsSlotCost.Core.extend_sound table8_sound cc_pre_bls_pairing
#print axioms cc_pre_bls_pairing
end InitECandidate.Solver.MemSafe.BlsSlotCost.Callees
