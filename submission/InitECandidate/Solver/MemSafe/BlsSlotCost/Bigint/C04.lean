import InitECandidate.Solver.MemSafe.BlsSlotCost.Bigint.C03
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BlsSlotCost.Bigint
variable {σ : Type}
def body_modexp := (declPair Guest.Software.guestFn_modexp).2.2
def b_modexp : Nat := 62771017377250833860492953722508285925502549694126292468160
theorem cost_modexp : Cost σ guestCtx body_modexp b_modexp := BlsSlotCost.Core.analyze_sound table3_sound (by cbv)
theorem cc_modexp : CalleeCost σ guestCtx (nm "modexp") b_modexp := by
 have hc : ∃ rs, guestCode (nm "modexp") = some ((declPair Guest.Software.guestFn_modexp).2.1,body_modexp,rs) :=
  declPair_valid (List.getElem_mem (n := 630) (by decide)) ⟨_,rfl⟩
 obtain ⟨rs,hc⟩ := hc
 exact BlsSlotCost.Core.callee_of_body hc cost_modexp
def table4 := BlsSlotCost.Core.extend table3 (nm "modexp") b_modexp
theorem table4_sound : TblSound σ guestCtx table4 := BlsSlotCost.Core.extend_sound table3_sound cc_modexp
#print axioms cc_modexp
end InitECandidate.Solver.MemSafe.BlsSlotCost.Bigint
