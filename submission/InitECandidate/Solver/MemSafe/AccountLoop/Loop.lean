import InitECandidate.Solver.MemSafe.UbInnerCost.Rest
import InitECandidate.Solver.MemSafe.CsrCost.DataLoop
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Bal InitECandidate.Solver.Band3
open InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.Band6
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Stor
namespace InitECandidate.Solver.MemSafe.AccountLoop
variable {σ : Type} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}
def countMax : Nat := 4127616
theorem loop_cost (Ent : UbEnt Γ0 s0 p0) (IDX AW CW : BitVec 64)
 (hCW : CW.toNat ≤ countMax) :
 Inv.CostP σ guestCtx (PE ubc Γ0 s0 p0 (EL IDX AW CW 0) (FL AW)) ubLoop1
 ((countMax+1)*(bL1+1)) := by
 have hH := (Rec.foldOK_guestR (σ := σ)).hH
 let I : State σ → Prop := fun s => ∃ IW, PE ubc Γ0 s0 p0 (EL IDX AW CW IW) (FL AW) s
 have hc : Inv.CostP σ guestCtx
  (fun s => I s ∧ CsrCost.DataLoop.CounterAtMost (nm "i") countMax s)
  ubLoop1 ((countMax+1)*(bL1+1)) := by
  unfold ubLoop1
  refine CsrCost.DataLoop.costP_while_bounded_guard
   (by decide : countMax < 2^63) (fun s ⟨IW,h⟩ => ⟨IW,pe_clk hH h⟩)
   (fun s hs ⟨⟨IW,hpe⟩,hc⟩ hg => Inv.costP_of_cost cost_l1 s hs hpe hg) ?_
   (noContB_sound _ (by decide_cbv)) (stepsB_sound (nm "i") true _ (by decide_cbv)) ?_
  · intro s hs ⟨⟨IW,hpe⟩,hc⟩ ht hr
    exact ⟨_, inv_of_hoareG (ub_l1_body Ent IDX AW CW IW) s hs hpe ht hr⟩
  · intro s hs ⟨IW,Γ,hIV,hLL,hFF⟩
    exact ⟨CW,hLL _ _ (by simp (config := {decide := true}) [EL,Env.set]),hCW⟩
 refine hc.pre fun s hs hpe => ?_
 refine ⟨⟨0,hpe⟩,0,?_,Nat.zero_le _⟩
 obtain ⟨Γ,hIV,hLL,hFF⟩ := hpe
 exact hLL _ _ (by simp (config := {decide := true}) [EL,Env.set])
#print axioms loop_cost
end InitECandidate.Solver.MemSafe.AccountLoop
