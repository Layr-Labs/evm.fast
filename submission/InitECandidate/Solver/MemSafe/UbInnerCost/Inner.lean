import InitECandidate.Solver.MemSafe.UbCost.Facts
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
namespace InitECandidate.Solver.MemSafe.UbInnerCost
variable {σ : Type}
def CapInnerBound (s : State σ) : Prop := ∃ C : BitVec 64,
  s.locals.lookup (nm "icap") = some (.val (.word C)) ∧ C.toNat ≤ UbCost.countMax
def innerLoopB : Nat := (UbCost.countMax+1)*(bL2I+1)
theorem inner_loop_cost {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}
    (hGT : Types.guestC.GT.lookup (nm "ws") = some (.nptr Types.tWSR))
    (Ent : UbEnt Γ0 s0 p0) (hgs : HGS σ) {E : Env} {F : Gam → Prop} (hF : MonoF F)
    (hfr : ∀ x ∈ ubNames3, E x = none) {a2 b2 c2 IDX CIN : BitVec 64}
    (hs2 : E (nm "s2") = some (wv [a2, b2, c2])) (hidx : E (nm "idx") = some (.val (.word IDX)))
    (hk : ∀ Γ, F Γ → (SrcKey Γ b2 20 tHTb20 ∧ SrcKey Γ b2 20 tHTd20) ∧ ∃ S ∈ Γ, S.base = CIN ∧ S.ty = tHTh32) :
    Inv.CostP σ guestCtx (fun s => PE ubc Γ0 s0 p0 (EJ E CIN (BitVec.ofNat 64 0)) F s ∧ CapInnerBound s)
      (.while (.cmp .less (lvv "j") (lvv "icap")) ubL2Inner) innerLoopB := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  have hfe : E (nm "e") = none := hfr _ (by simp [ubNames3])
  have hkeep : Keeps σ (nm "icap") ubL2Inner := keepsB_sound _ _ (by decide_cbv)
  let I : State σ → Prop := fun s => ∃ JW, PE ubc Γ0 s0 p0 (EJ E CIN JW) F s ∧ CapInnerBound s
  have hc : Inv.CostP σ guestCtx
      (fun s => I s ∧ InitECandidate.Solver.MemSafe.CsrCost.DataLoop.CounterAtMost (nm "j") UbCost.countMax s)
      (.while (.cmp .less (lvv "j") (lvv "icap")) ubL2Inner) innerLoopB := by
    unfold innerLoopB
    refine InitECandidate.Solver.MemSafe.CsrCost.DataLoop.costP_while_bounded_guard
      (by decide : UbCost.countMax < 2^63) (fun s ⟨JW,hpe,hcap⟩ => ⟨JW,pe_clk hH hpe,hcap⟩)
      (fun s hs ⟨⟨JW,hpe,hcap⟩,hcond⟩ hg => c_l2_inner_body hGT Ent hF hfe hs2 hk JW s hs hpe hg)
      ?_ (noContB_sound _ (by decide_cbv)) (stepsB_sound (nm "j") true _ (by decide_cbv))
      (fun s hs ⟨JW,hpe,C,hcap,hCM⟩ => ⟨C,hcap,hCM⟩)
    intro s hs ⟨⟨JW,hpe,hcap⟩,hcond⟩ ht hr
    have hp' := inv_of_hoareG (ub_l2_inner_body Ent hgs hF hfr hs2 hidx hk JW) s hs hpe ht hr
    refine ⟨_,hp',?_⟩
    obtain ⟨C,hcap,hCM⟩ := hcap
    exact ⟨C,(hkeep s (Or.inl hr)).trans hcap,hCM⟩
  refine hc.pre fun s hs ⟨hpe,hcap⟩ => ?_
  refine ⟨⟨0,hpe,hcap⟩,0,?_,Nat.zero_le _⟩
  obtain ⟨Γ,hIV,hLL,hFF⟩ := hpe
  exact hLL _ _ (by simp (config := {decide := true}) [EJ,Env.set])
#print axioms inner_loop_cost
end InitECandidate.Solver.MemSafe.UbInnerCost
