import InitECandidate.Solver.MemSafe.DivCost.Stride
import InitECandidate.Solver.MemSafe.DivCost.Qhat
import InitECandidate.Solver.MemSafe.DivCost.Scalar
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.DivCost.Main
open Helpers
variable {σ : Type}
theorem dvL3a_cost : Cost σ guestCtx dvL3a (10^11) := by
 unfold dvL3a
 exact Cost.mono (InitECandidate.Solver.MemSafe.DivCost.Read.factor_sound guestCtx_bounded (by decide_cbv) (by
  repeat' first | apply cost_dec | apply cost_seq | exact cost_store _ _ | exact cost_assign _ _ _
 )) (by decide_cbv)
theorem dvL3b_cost : Cost σ guestCtx dvL3b (10^11) := by
 unfold dvL3b
 exact Cost.mono (InitECandidate.Solver.MemSafe.DivCost.Read.factor_sound guestCtx_bounded (by decide_cbv) (by
  repeat' first | apply cost_dec | apply cost_seq | exact cost_store _ _ | exact cost_assign _ _ _
 )) (by decide_cbv)
theorem inner_cost : Cost σ guestCtx dvInner (2*10^11) := by
 exact Cost.mono (by
  unfold dvInner dvTneg dvTnegSt dvTpos
  repeat' first
   | exact dvL3a_cost
   | exact dvL3b_cost
   | apply cost_dec
   | apply cost_seq
   | apply cost_ite
   | exact cost_store _ _
   | exact cost_assign _ _ _
 ) (by decide_cbv)
theorem body3_cost : Cost σ guestCtx dvBody3 (3*10^11) := by
 exact Cost.mono (by
  unfold dvBody3
  repeat' first
   | exact InitECandidate.Solver.MemSafe.DivCost.Qhat.hole_cost guestCtx_code inner_cost
   | apply cost_dec
   | apply cost_seq
   | exact cost_assign _ _ _
 ) (by decide_cbv)
theorem l3_cost : Cost σ guestCtx dvL3 ((2^64+1)*(3*10^11+1)) := by
 unfold dvL3
 exact loopOkBasic_sound (by decide_cbv) body3_cost
def table := PairCost.Core.extend BlsCost.Callers.table12 (nm "div64by32") 33
theorem table_sound : TblSound σ guestCtx table :=
 PairCost.Core.extend_sound BlsCost.Callers.table12_sound (InitECandidate.Solver.MemSafe.DivCost.Div32.callee_cost guestCtx_code)
theorem body_cost : Cost σ guestCtx divBody (10^32) := by
 exact Cost.mono (by
  unfold divBody dvK
  repeat' first
   | exact l3_cost
   | apply cost_seq
   | apply cost_dec
   | apply cost_decCall
   | exact table_sound _ _ (by cbv; all_goals rfl)
   | exact PairCost.Core.analyze_sound table_sound (by cbv; all_goals rfl)
 ) (by decide_cbv)
theorem cc_divmnu : CalleeCost σ guestCtx (nm "divmnu") (10^32) :=
 PairCost.Core.callee_of_body code_divmnu body_cost
#print axioms body_cost
#print axioms cc_divmnu
end InitECandidate.Solver.MemSafe.DivCost.Main
