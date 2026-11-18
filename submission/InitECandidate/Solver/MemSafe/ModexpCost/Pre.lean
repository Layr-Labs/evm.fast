import InitECandidate.Solver.MemSafe.ModexpCost.Bind
import InitECandidate.Solver.MemSafe.ModexpCost.Guard
import InitECandidate.Solver.MemSafe.BlsCost.Callers.C12
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ModexpCost
variable {σ : Type}
def bSat : Nat := (BlsCost.Callers.table12 (nm "sat_word")).getD 0
theorem pre_whole_cost
 (htail : Inv.CostP σ guestCtx (InitECandidate.Solver.MemSafe.ModexpCost.Keep.Bound (nm "elen") 1024) preTail (10^46)) :
 Cost σ guestCtx preBody (10^47) := by
 have hsat : CalleeCost σ guestCtx (nm "sat_word") bSat := BlsCost.Callers.table12_sound _ _ (by cbv)
 have hbind : Cost σ guestCtx preBind (1+bSat+10^46) := by
  rw [pre_bind_eq]
  exact guard_bind_cost hsat htail
 conv at hbind in preBind => cbv
 exact Cost.mono (σ := σ) (X := guestCtx) (p := preBody) (B' := 10^47) (by
  conv in preBody => cbv
  repeat' first
   | assumption
   | (apply cost_decCall)
   | (apply cost_dec)
   | (apply cost_seq)
   | (apply cost_ite)
   | (exact BlsCost.Callers.table12_sound _ _ (by cbv; all_goals rfl))
   | (exact PairCost.Core.analyze_sound BlsCost.Callers.table12_sound (by cbv; all_goals rfl))
 ) (by decide_cbv)
#print axioms pre_whole_cost
end InitECandidate.Solver.MemSafe.ModexpCost
