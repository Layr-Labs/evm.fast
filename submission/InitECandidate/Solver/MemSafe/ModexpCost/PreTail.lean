import InitECandidate.Solver.MemSafe.ModexpCost.Parts
import InitECandidate.Solver.MemSafe.ModexpCost.Callee
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
theorem pre_tail_cost (hmod : Inv.CalleeCostP σ guestCtx (nm "modexp") ArgPre (10^45)) :
 Inv.CostP σ guestCtx (InitECandidate.Solver.MemSafe.ModexpCost.Keep.Bound (nm "elen") 1024) preTail (10^46) := by
 have hcall : Inv.CostP σ guestCtx (InitECandidate.Solver.MemSafe.ModexpCost.Keep.Bound (nm "elen") 1024)
   (callD (nm "modexp") [lv (nm "bp"),lv (nm "blen"),lv (nm "ep"),lv (nm "elen"),
     lv (nm "mp"),lv (nm "mlen"),lv (nm "out")]) (1+10^45+0) := by
  apply Inv.costP_callD hmod
  intro s hs hp vs hvs callee
  exact call_pre hp hvs _
 exact Inv.CostP.mono (σ := σ) (X := guestCtx)
  (P := InitECandidate.Solver.MemSafe.ModexpCost.Keep.Bound (nm "elen") 1024) (p := preTail) (B' := 10^46) (by
  conv in preTail => cbv
  repeat' first
   | assumption
   | (apply InitECandidate.Solver.MemSafe.ModexpCost.Keep.decCall)
   | (apply InitECandidate.Solver.MemSafe.ModexpCost.Keep.dec)
   | (apply InitECandidate.Solver.MemSafe.ModexpCost.Keep.seq)
   | (apply InitECandidate.Solver.MemSafe.ModexpCost.Keep.ite)
   | (apply keepsB_sound; decide_cbv)
   | (exact BlsCost.Callers.table12_sound _ _ (by cbv; all_goals rfl))
   | decide_cbv
   | (apply Inv.costP_of_cost
      exact PairCost.Core.analyze_sound BlsCost.Callers.table12_sound (by cbv; all_goals rfl))

 ) (by decide_cbv)
#print axioms pre_tail_cost
end InitECandidate.Solver.MemSafe.ModexpCost
