import InitECandidate.Solver.MemSafe.BlsSlotCost.Bigint.C01
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BlsSlotCost.Bigint
variable {σ : Type}
def body_bn_mod := (declPair Guest.Software.guestFn_bn_mod).2.2
def b_bn_mod : Nat := 1701411834604692317667361174834200445019
theorem cost_bn_mod : Cost σ guestCtx body_bn_mod b_bn_mod := BlsSlotCost.Core.analyze_sound table1_sound (by cbv)
theorem cc_bn_mod : CalleeCost σ guestCtx (nm "bn_mod") b_bn_mod := by
 have hc : ∃ rs, guestCode (nm "bn_mod") = some ((declPair Guest.Software.guestFn_bn_mod).2.1,body_bn_mod,rs) :=
  declPair_valid (List.getElem_mem (n := 628) (by decide)) ⟨_,rfl⟩
 obtain ⟨rs,hc⟩ := hc
 exact BlsSlotCost.Core.callee_of_body hc cost_bn_mod
def table2 := BlsSlotCost.Core.extend table1 (nm "bn_mod") b_bn_mod
theorem table2_sound : TblSound σ guestCtx table2 := BlsSlotCost.Core.extend_sound table1_sound cc_bn_mod
#print axioms cc_bn_mod
end InitECandidate.Solver.MemSafe.BlsSlotCost.Bigint
