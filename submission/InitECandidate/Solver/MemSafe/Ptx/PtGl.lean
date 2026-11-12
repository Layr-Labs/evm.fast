import InitECandidate.Solver.MemSafe.Ptx.PtStm
import InitECandidate.Solver.MemSafe.Ptx.PtJn

/-!
# F3d: assigning a scalar global (`bal_index = index + 1`)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.HtabEntries

variable {σ : Type}

/-- Setting a scalar, unprotected global keeps `G`. -/
theorem G_setScalar {Γ : Gam} {u : State σ} (hG : G guestC (HR σ) Γ u) {g : MlS}
    (hgt : guestC.GT.lookup g = some .scalar) (hpg : g ∉ guestC.PG) (hne : g ≠ gHeap ∧ g ≠ gFrame ∧ g ≠ gScratch)
    (w : BitVec 64) : G guestC (HR σ) Γ (setKvarHOLFinite .global g (.val (.word w)) u) := by
  obtain ⟨p, hps, hord, hL, hF, hT, hGl, hW⟩ := hG
  have hptr : ptrsOf (setKvarHOLFinite .global g (.val (.word w)) u) = ptrsOf u := by
    unfold ptrsOf
    rw [gword_setG_ne (v := .val (.word w)) hne.1.symm, gword_setG_ne (v := .val (.word w)) hne.2.1.symm, gword_setG_ne (v := .val (.word w)) hne.2.2.symm]
  refine ⟨p, hptr.trans hps, hord, hL, hF, hT, ?_, ?_⟩
  · intro g' k hk
    by_cases hg : g' = g
    · subst hg
      rw [hgt] at hk
      cases hk
      exact ⟨w, by unfold gword; rw [setG_self], trivial⟩
    · obtain ⟨w2, hw, hf⟩ := hGl g' k hk
      exact ⟨w2, (gword_setG_ne (v := .val (.word w)) hg).trans hw, hf⟩
  · intro o ho
    refine ((Hooks.guestHooksR_lawful (σ := σ)).2 Γ u (setKvarHOLFinite .global g (.val (.word w)) u) o (hW o ho) rfl rfl (fun a _ => rfl) ?_).1
    intro g' hg'
    exact setG_ne (fun h => hpg (h ▸ hg'))

theorem ptRun_setScalar {D : BitVec 64 → Option (BitVec 64)} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {Γ : Gam}
    {u : State σ} {p : Ptrs} (h : PtRun D Γ0 s0 p0 Γ u p) {g : MlS}
    (hgt : guestC.GT.lookup g = some .scalar) (hpg : g ∉ guestC.PG) (hne : g ≠ gHeap ∧ g ≠ gFrame ∧ g ≠ gScratch)
    (hW : ptW.contains g = true) (hnj : g ≠ nmJr ∧ g ≠ nmSk) (hev : g ≠ nmEv ∧ g ≠ nmCC) (w : BitVec 64) :
    PtRun D Γ0 s0 p0 Γ (setKvarHOLFinite .global g (.val (.word w)) u) p := by
  obtain ⟨h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13⟩ := h
  have hg : ∀ g', g' ≠ g → gword (setKvarHOLFinite .global g (.val (.word w)) u) g' = gword u g' :=
    fun g' hne' => gword_setG_ne hne'
  refine ⟨h1, ?_, h3, h4, h5, G_setScalar h6 hgt hpg hne w, ?_, h8, ?_, ?_, ?_, h12, ?_⟩
  · unfold ptrsOf
    rw [hg gHeap hne.1.symm, hg gFrame hne.2.1.symm, hg gScratch hne.2.2.symm]
    exact h2
  · intro g' hg' hn
    rw [setG_ne (fun e => hpg (by rw [← e]; exact hg'))]; exact h7 g' hg' hn
  · exact jrNZ_of_gword (fun g' hgj => hg g' (by
      simp [Frames.jrGs] at hgj; rcases hgj with rfl | rfl
      · exact fun e => hnj.1 e.symm
      · exact fun e => hnj.2 e.symm)) h9
  · obtain ⟨e, he, hs⟩ := h10
    exact ⟨e, by rw [hg _ (fun e => hev.1 e.symm)]; exact he, hs⟩
  · obtain ⟨e, he, hs⟩ := h11
    exact ⟨e, by rw [hg _ (fun e => hev.2 e.symm)]; exact he, hs⟩
  · intro g' hg'
    have : g' ≠ g := fun e => by rw [e, hW] at hg'; cases hg'
    rw [setG_ne this]; exact h13 g' hg'

/-- `g = e` for a scalar unprotected global. -/
theorem hn_assignG {E : PtE σ} {En : Env} {S : FS} {g : MlS} {e : ExpHOL 64} {w' : BitVec 64}
    (hgt : guestC.GT.lookup g = some .scalar) (hpg : g ∉ guestC.PG) (hne : g ≠ gHeap ∧ g ≠ gFrame ∧ g ≠ gScratch)
    (hW : ptW.contains g = true) (hnj : g ≠ nmJr ∧ g ≠ nmSk) (hev : g ≠ nmEv ∧ g ≠ nmCC)
    (hS : ∀ ty, ¬ S (Fct.gobj g ty))
    (he : ∀ s : State σ, PA E En S s → ∀ v, ev s e = some v → v = .val (.word w')) :
    HN (PA E En S) (.assign .global g e) (PA E En S) := by
  refine hoare_of_hoareG (hoareG_assignK fun s hs hpa v hv _ => ?_)
  have hv' := he s hpa v hv
  subst hv'
  obtain ⟨⟨D, Γ, p, hr, hD, hL⟩, hlk⟩ := hpa
  have hr' := ptRun_setScalar hr hgt hpg hne hW hnj hev w'
  refine ⟨rfl, ⟨D, Γ, p, hr', hD, ?_⟩, hlk⟩
  have hstep : StepD Γ p s Γ p (setKvarHOLFinite .global g (.val (.word w')) s) :=
    ⟨ptRun_ptrs hr, ptRun_ptrs hr', ⟨le_refl _, le_refl _, le_refl _⟩, fun o ho => ⟨o, ho, rfl, rfl, le_refl _⟩,
      fun o ho a h1 h2 => Or.inl ⟨o, ho, rfl, rfl, h1, h2⟩, ptRun_G hr, ptRun_G hr'⟩
  refine holds_step hstep (ptRun_ord0 hr) (fun _ _ _ _ => rfl) (fun g' ty hg' => ?_) hL
  have : g' ≠ g := fun e => hS ty (e ▸ hg')
  exact gword_setG_ne this

end InitECandidate.Solver.MemSafe.Ptx
