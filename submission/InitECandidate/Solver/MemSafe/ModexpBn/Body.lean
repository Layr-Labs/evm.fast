import InitECandidate.Solver.MemSafe.BnCost.Main
import InitECandidate.Solver.MemSafe.ModexpBn.Hole
import InitECandidate.Solver.MemSafe.BlsCost.Callers.C12
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ModexpBn
variable {σ : Type}
theorem body_cost : Inv.CostP σ guestCtx (InitECandidate.Solver.MemSafe.ModexpBn.Keep.Bound (nm "elen") 1024)
 Mod.mxBody ((10^31)) := by
 have ht : CalleeCost σ guestCtx (nm "be_top_bit") 36893488147419103234 :=
  BnCost.tblMod_sound _ _ (by cbv; all_goals rfl)
 have hi : Cost σ guestCtx rest 2000200000000000000000004 :=
  PairCost.Core.analyze_sound BnCost.tblMod_sound (by cbv; all_goals rfl)
 have hn : Cost σ guestCtx neg 137438953509 :=
  PairCost.Core.analyze_sound BnCost.tblMod_sound (by cbv; all_goals rfl)
 have hc : Cost σ guestCtx copy 137438953509 :=
  PairCost.Core.analyze_sound BnCost.tblMod_sound (by cbv; all_goals rfl)
 have he : Cost σ guestCtx Mod.mxEnd 18446744073709551619 :=
  PairCost.Core.analyze_sound BnCost.tblMod_sound (by cbv; all_goals rfl)
 have hhole := hole_cost (by rfl) ht hi hn hc he
 exact Inv.CostP.mono (σ := σ) (X := guestCtx)
  (P := InitECandidate.Solver.MemSafe.ModexpBn.Keep.Bound (nm "elen") 1024) (p := Mod.mxBody) (B' := (10^31)) (by
  unfold Mod.mxBody Mod.mxN Mod.mxAllocs Mod.mxW
  repeat' first
   | assumption
   | (apply InitECandidate.Solver.MemSafe.ModexpBn.Keep.decCall)
   | (apply InitECandidate.Solver.MemSafe.ModexpBn.Keep.dec)
   | (apply InitECandidate.Solver.MemSafe.ModexpBn.Keep.seq)
   | (apply InitECandidate.Solver.MemSafe.ModexpBn.Keep.ite)
   | (apply keepsB_sound; decide_cbv)
   | (exact BnCost.tblMod_sound _ _ (by cbv; all_goals rfl))
   | decide_cbv
   | (apply Inv.costP_of_cost
      exact PairCost.Core.analyze_sound BnCost.tblMod_sound (by cbv; all_goals rfl))

 ) (by decide_cbv)
#print axioms body_cost
end InitECandidate.Solver.MemSafe.ModexpBn
