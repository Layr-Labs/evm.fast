import InitECandidate.Solver.MemSafe.BlsSlotCost.Bigint.C02
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BlsSlotCost.Bigint
variable {σ : Type}
def body_be_top_bit := (declPair Guest.Software.guestFn_be_top_bit).2.2
def b_be_top_bit : Nat := 68719476754
theorem cost_be_top_bit : Cost σ guestCtx body_be_top_bit b_be_top_bit := BlsSlotCost.Core.analyze_sound table2_sound (by cbv)
theorem cc_be_top_bit : CalleeCost σ guestCtx (nm "be_top_bit") b_be_top_bit := by
 have hc : ∃ rs, guestCode (nm "be_top_bit") = some ((declPair Guest.Software.guestFn_be_top_bit).2.1,body_be_top_bit,rs) :=
  declPair_valid (List.getElem_mem (n := 629) (by decide)) ⟨_,rfl⟩
 obtain ⟨rs,hc⟩ := hc
 exact BlsSlotCost.Core.callee_of_body hc cost_be_top_bit
def table3 := BlsSlotCost.Core.extend table2 (nm "be_top_bit") b_be_top_bit
theorem table3_sound : TblSound σ guestCtx table3 := BlsSlotCost.Core.extend_sound table2_sound cc_be_top_bit
#print axioms cc_be_top_bit
end InitECandidate.Solver.MemSafe.BlsSlotCost.Bigint
