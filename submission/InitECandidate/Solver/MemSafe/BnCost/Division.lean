import InitECandidate.Solver.MemSafe.DivCost.Reverse.Main
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BnCost
variable {σ : Type}
def body := (declPair Guest.Software.guestFn_bn_divmnu).2.2
theorem body_cost : Cost σ guestCtx body (10^23) := by
 have hl := DivCost.Reverse.l3_cost (σ := σ)
 conv at hl in Helpers.dvL3 => cbv
 exact Cost.mono (σ := σ) (X := guestCtx) (p := body) (B' := 10^23) (by
  conv in body => cbv
  repeat' first
   | assumption
   | apply cost_seq
   | apply cost_dec
   | apply cost_decCall
   | exact DivCost.Main.table_sound _ _ (by cbv; all_goals rfl)
   | exact PairCost.Core.analyze_sound DivCost.Main.table_sound (by cbv; all_goals rfl)
 ) (by decide_cbv)
#print axioms body_cost
end InitECandidate.Solver.MemSafe.BnCost
