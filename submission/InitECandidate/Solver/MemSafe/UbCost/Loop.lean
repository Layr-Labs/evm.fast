import InitECandidate.Solver.Band6.UbCost
import InitECandidate.Solver.MemSafe.CsrCost.DataLoop
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Bal
open InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Stor
open InitECandidate.Solver.Band6
namespace InitECandidate.Solver.MemSafe.UbCost
variable {σ : Type}
def countMax : Nat := 4127616
def CapBound (s : State σ) : Prop := ∃ C : BitVec 64,
  s.locals.lookup (nm "cap") = some (.val (.word C)) ∧ C.toNat ≤ countMax
def loop2B : Nat := (countMax+1)*(bL2B+1)

theorem loop2_cost {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}
    (hGT : Types.guestC.GT.lookup (nm "ws") = some (.nptr Types.tWSR))
    (Ent : UbEnt Γ0 s0 p0) (hgs : HGS σ) {E : Env} (hfr : ∀ x ∈ ubNames4, E x = none)
    {IDX : BitVec 64} (hidx : E (nm "idx") = some (.val (.word IDX))) (OW : BitVec 64) :
    Inv.CostP σ guestCtx
      (fun s => PE ubc Γ0 s0 p0 (EL2 E OW (BitVec.ofNat 64 0)) (FL2 OW) s ∧ CapBound s)
      ubLoop2 loop2B := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  have hkeep : Keeps σ (nm "cap") ubL2Body := keepsB_sound _ _ (by decide_cbv)
  let I : State σ → Prop := fun s => ∃ IW, PE ubc Γ0 s0 p0 (EL2 E OW IW) (FL2 OW) s ∧ CapBound s
  have hc : Inv.CostP σ guestCtx
      (fun s => I s ∧ InitECandidate.Solver.MemSafe.CsrCost.DataLoop.CounterAtMost (nm "i") countMax s)
      ubLoop2 loop2B := by
    unfold ubLoop2 loop2B
    refine InitECandidate.Solver.MemSafe.CsrCost.DataLoop.costP_while_bounded_guard
      (by decide : countMax < 2^63) (fun s ⟨IW,hpe,hcap⟩ => ⟨IW,pe_clk hH hpe,hcap⟩)
      (fun s hs ⟨⟨IW,hpe,hcap⟩,hcond⟩ hg => c_l2_body hGT Ent hgs hfr hidx OW IW s hs hpe hg)
      ?_ (noContB_sound _ (by decide_cbv)) (stepsB_sound (nm "i") true _ (by decide_cbv))
      (fun s hs ⟨IW,hpe,C,hcap,hCM⟩ => ⟨C,hcap,hCM⟩)
    intro s hs ⟨⟨IW,hpe,hcap⟩,hcond⟩ ht hr
    have hp' := inv_of_hoareG (ub_l2_body Ent hgs hfr hidx OW IW) s hs hpe ht hr
    refine ⟨_,hp',?_⟩
    obtain ⟨C,hcap,hCM⟩ := hcap
    exact ⟨C,(hkeep s (Or.inl hr)).trans hcap,hCM⟩
  refine hc.pre fun s hs ⟨hpe,hcap⟩ => ?_
  refine ⟨⟨0,hpe,hcap⟩,0,?_,Nat.zero_le _⟩
  obtain ⟨Γ,hIV,hLL,hFF⟩ := hpe
  exact hLL _ _ (by simp (config := {decide := true}) [EL2,Env.set])
#print axioms loop2_cost
end InitECandidate.Solver.MemSafe.UbCost
