import InitECandidate.Solver.MemSafe.UbInnerCost.Then
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
variable {σ : Type} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}
def slotBodyB : Nat := 1 + 0 + (max innerLoopB 0 + 0)

theorem slot_body_cost (hGT : Types.guestC.GT.lookup (nm "ws") = some (.nptr Types.tWSR))
    (Ent : UbEnt Γ0 s0 p0) (hgs : HGS σ) {E : Env} (hfr : ∀ x ∈ ubNames4, E x = none)
    {IDX : BitVec 64} (hidx : E (nm "idx") = some (.val (.word IDX))) (OW IW : BitVec 64) :
    Inv.CostP σ guestCtx (PE ubc Γ0 s0 p0 (EL2 E OW IW) (FL2 OW)) ubL2Body slotBodyB := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  have hfs : E (nm "s2") = none := hfr _ (by simp [ubNames4])
  unfold ubL2Body
  refine citemE hH (rn := nm "s2") (tabv := nm "outer") (iv := nm "i") (th0 := tHTt20) (TW := OW) (IW := IW)
    (by decide) (by decide) Ent.hord Ent.hL (fl2_mono OW) ?_ ?_ (fun Γ h => h) ?_
  · simp (config := {decide := true}) [EL2, Env.set]
  · simp (config := {decide := true}) [EL2, Env.set]
  intro v
  refine Inv.costP_seq (R := fun _ => True) (Inv.costP_ite ?_ ?_) (fun s _ _ _ _ => trivial)
    (Inv.costP_of_cost (cost_assign _ _ _))
  · intro s' hs' ⟨⟨Γ, hIV, hLL, hFF⟩, hc⟩ hg
    obtain ⟨a2, b2, c2, hv, hItem⟩ := hFF.2
    subst hv
    have hsE : ((EL2 E OW IW).set (nm "s2") (wv [a2, b2, c2])) (nm "s2") = some (wv [a2, b2, c2]) :=
      env_set_self _ _ _
    have ha : a2 ≠ 0 := rf0_ne (hLL _ _ hsE) hc
    have hI := hItem ha
    have k1 := hI.2 20 tHTb20 (by decide) (by decide)
    have k2 := hI.2 20 tHTd20 (by decide) (by decide)
    have hfit : Fits Γ (.ptr tHTh32) c2 := by
      have hv : valK tHTt20 = .ptr tHTh32 := by decide
      have := hI.1
      rw [hv] at this
      exact this
    have hF' : MonoF (fun Γ => (FL2 OW Γ ∧ ItemG tHTt20 (wv [a2, b2, c2]) Γ) ∧
        (SrcKey Γ b2 20 tHTb20 ∧ SrcKey Γ b2 20 tHTd20) ∧ Fits Γ (.ptr tHTh32) c2) :=
      fun Γ Γ1 hx ⟨h1, h2, h3⟩ => ⟨⟨fl2_mono OW Γ Γ1 hx h1.1, itemG_mono _ _ Γ Γ1 hx h1.2⟩,
        ⟨srcKey_ext hx h2.1, srcKey_ext hx h2.2⟩, fits_ext hx h3⟩
    have T := then2_cost hGT Ent hgs hF' (E := (EL2 E OW IW).set (nm "s2") (wv [a2, b2, c2])) ?_ (a2 := a2)
      (b2 := b2) (c2 := c2) (IDX := IDX) hsE ?_ (fun Γ h => h.2)
    · exact T s' hs' ⟨Γ, hIV, hLL, ⟨hFF, ⟨k1, k2⟩, hfit⟩⟩ hg
    · intro x hx
      simp only [ubNames3, List.mem_cons, List.not_mem_nil, or_false] at hx
      rcases hx with rfl | rfl | rfl | rfl | rfl | rfl | rfl <;>
        simp (config := {decide := true}) [EL2, Env.set] <;> exact hfr _ (by simp [ubNames4, ubNames3])
    · simp (config := {decide := true}) [EL2, Env.set, hidx]
  · intro s' hs' _ hg
    exact Inv.costP_of_cost (P := fun _ => True) (X := guestCtx) (σ := σ) cost_skip s' hs' trivial hg

#print axioms slot_body_cost
end InitECandidate.Solver.MemSafe.UbInnerCost
