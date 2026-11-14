import InitECandidate.Solver.MemSafe.BlsSlotCost.Seed
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BlsSlotCost.Callees
variable {σ : Type}
def body_bn254_pairing := (declPair Guest.Software.guestFn_bn254_pairing).2.2
def b_bn254_pairing : Nat := 91955865142512884799436339607728198252506352
theorem cost_bn254_pairing : Cost σ guestCtx body_bn254_pairing b_bn254_pairing := BlsSlotCost.Core.analyze_sound table0_sound (by cbv)
theorem cc_bn254_pairing : CalleeCost σ guestCtx (nm "bn254_pairing") b_bn254_pairing := by
 have hc : ∃ rs, guestCode (nm "bn254_pairing") = some ((declPair Guest.Software.guestFn_bn254_pairing).2.1,body_bn254_pairing,rs) :=
  declPair_valid (List.getElem_mem (n := 685) (by decide)) ⟨_,rfl⟩
 obtain ⟨rs,hc⟩ := hc
 exact BlsSlotCost.Core.callee_of_body hc cost_bn254_pairing
def table1 := BlsSlotCost.Core.extend table0 (nm "bn254_pairing") b_bn254_pairing
theorem table1_sound : TblSound σ guestCtx table1 := BlsSlotCost.Core.extend_sound table0_sound cc_bn254_pairing
#print axioms cc_bn254_pairing
end InitECandidate.Solver.MemSafe.BlsSlotCost.Callees
