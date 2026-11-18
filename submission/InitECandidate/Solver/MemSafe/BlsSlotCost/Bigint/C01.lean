import InitECandidate.Solver.MemSafe.BlsSlotCost.BigSeed
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BlsSlotCost.Bigint
variable {σ : Type}
def body_bn_mul := (declPair Guest.Software.guestFn_bn_mul).2.2
def b_bn_mul : Nat := 633825300298582141554166595603
theorem cost_bn_mul : Cost σ guestCtx body_bn_mul b_bn_mul := BlsSlotCost.Core.analyze_sound table0_sound (by cbv)
theorem cc_bn_mul : CalleeCost σ guestCtx (nm "bn_mul") b_bn_mul := by
 have hc : ∃ rs, guestCode (nm "bn_mul") = some ((declPair Guest.Software.guestFn_bn_mul).2.1,body_bn_mul,rs) :=
  declPair_valid (List.getElem_mem (n := 626) (by decide)) ⟨_,rfl⟩
 obtain ⟨rs,hc⟩ := hc
 exact BlsSlotCost.Core.callee_of_body hc cost_bn_mul
def table1 := BlsSlotCost.Core.extend table0 (nm "bn_mul") b_bn_mul
theorem table1_sound : TblSound σ guestCtx table1 := BlsSlotCost.Core.extend_sound table0_sound cc_bn_mul
#print axioms cc_bn_mul
end InitECandidate.Solver.MemSafe.BlsSlotCost.Bigint
