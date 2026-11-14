import InitECandidate.Solver.MemSafe.DivCost.Main
import InitECandidate.Solver.MemSafe.DivCost.Reverse.Loop
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.DivCost.Reverse
open Helpers
variable {σ : Type}
theorem l3_cost : Cost σ guestCtx dvL3 (10^22) :=
 Cost.mono (InitECandidate.Solver.MemSafe.DivCost.Reverse.cost guestCtx_bounded InitECandidate.Solver.MemSafe.DivCost.Main.body3_cost) (by decide_cbv)
theorem body_cost : Cost σ guestCtx divBody (10^23) := by
 exact Cost.mono (by
  unfold divBody dvK
  repeat' first
   | exact l3_cost
   | apply cost_seq
   | apply cost_dec
   | apply cost_decCall
   | exact InitECandidate.Solver.MemSafe.DivCost.Main.table_sound _ _ (by cbv; all_goals rfl)
   | exact PairCost.Core.analyze_sound InitECandidate.Solver.MemSafe.DivCost.Main.table_sound (by cbv; all_goals rfl)
 ) (by decide_cbv)
theorem cc_divmnu : CalleeCost σ guestCtx (nm "divmnu") (10^23) :=
 PairCost.Core.callee_of_body code_divmnu body_cost
#print axioms body_cost
#print axioms cc_divmnu
end InitECandidate.Solver.MemSafe.DivCost.Reverse
