import InitECandidate.Solver.MemSafe.ModexpCost.Hole
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
theorem body_cost : Inv.CostP σ guestCtx (InitECandidate.Solver.MemSafe.ModexpCost.Keep.Bound (nm "elen") 1024)
 Mod.mxBody (10^45) := by
 have ht : CalleeCost σ guestCtx (nm "be_top_bit") 36893488147419103234 :=
  BlsCost.Callers.table12_sound _ _ (by cbv; all_goals rfl)
 have hi : Cost σ guestCtx rest 4083388403051261562704193421751210737728 :=
  PairCost.Core.analyze_sound BlsCost.Callers.table12_sound (by cbv; all_goals rfl)
 have hn : Cost σ guestCtx neg 137438953509 :=
  PairCost.Core.analyze_sound BlsCost.Callers.table12_sound (by cbv; all_goals rfl)
 have hc : Cost σ guestCtx copy 137438953509 :=
  PairCost.Core.analyze_sound BlsCost.Callers.table12_sound (by cbv; all_goals rfl)
 have he : Cost σ guestCtx Mod.mxEnd 18446744073709551619 :=
  PairCost.Core.analyze_sound BlsCost.Callers.table12_sound (by cbv; all_goals rfl)
 have hhole := hole_cost (by rfl) ht hi hn hc he
 exact Inv.CostP.mono (σ := σ) (X := guestCtx)
  (P := InitECandidate.Solver.MemSafe.ModexpCost.Keep.Bound (nm "elen") 1024) (p := Mod.mxBody) (B' := 10^45) (by
  unfold Mod.mxBody Mod.mxN Mod.mxAllocs Mod.mxW
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
#print axioms body_cost
end InitECandidate.Solver.MemSafe.ModexpCost
