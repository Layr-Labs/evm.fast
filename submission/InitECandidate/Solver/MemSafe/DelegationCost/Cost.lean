import InitECandidate.Solver.MemSafe.DelegationCost.Body
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.DelegationCost
variable {σ : Type}
def fullBody := (declPair Guest.Software.guestFn_set_delegation).2.2
theorem full_cost : Cost σ guestCtx fullBody (10^51) := by
 have hnew : CalleeCost σ guestCtx (nm "htab_new") 12 := Wire.calleeCost_guest rfl
 have hz : CalleeCost σ guestCtx (nm "u256_is_zero") 0 := Wire.calleeCost_guest rfl
 have hl := loop_cost (body_cost (σ := σ))
 conv at hl in cond => cbv
 conv at hl in body => cbv
 exact Cost.mono (σ := σ) (X := guestCtx) (p := fullBody) (B' := 10^51) (by
  conv in fullBody => cbv
  repeat' first
   | exact hl
   | apply cost_seq
   | apply cost_ite
   | apply cost_dec
   | apply cost_decCall hnew
   | apply cost_decCall hz
   | exact PairCost.Core.analyze_sound BlsCost.Callers.table12_sound (by cbv)
 ) (by decide +kernel)
#print axioms full_cost
end InitECandidate.Solver.MemSafe.DelegationCost
