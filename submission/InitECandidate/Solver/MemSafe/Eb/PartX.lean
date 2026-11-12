import InitECandidate.Solver.MemSafe.Eb.Mid

/-!
# `execute_block`: calls with an extra precondition on `(Γ, p, state)` (`PAX`, `hn_callRx`)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Eb
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

/-- The walk state with an extra predicate on the typing, the allocator pointers and the state. -/
def PAX (E : EbE σ) (En : Env) (S : FS) (R : Gam → Ptrs → State σ → Prop) (u : State σ) : Prop :=
  (∃ (Γ : Gam) (p : Ptrs), EbRun E.Γ0 E.s0 E.p0 Γ u p ∧ HoldsAll E.p0 Γ p u S ∧ R Γ p u) ∧ LKE En u

theorem pax_pa {E : EbE σ} {En : Env} {S : FS} {R : Gam → Ptrs → State σ → Prop} {u : State σ}
    (h : PAX E En S R u) : PA E En S u := by
  obtain ⟨⟨Γ, p, hr, hL, -⟩, hlk⟩ := h
  exact ⟨⟨Γ, p, hr, hL⟩, hlk⟩

theorem pax_mono {E : EbE σ} {En En' : Env} {S S' : FS} {R : Gam → Ptrs → State σ → Prop} {u : State σ}
    (h : PAX E En S R u) (he : ∀ x v, En' x = some v → En x = some v) (hs : ∀ f, S' f → S f) :
    PAX E En' S' R u := by
  obtain ⟨⟨Γ, p, hr, hL, hR⟩, hlk⟩ := h
  exact ⟨⟨Γ, p, hr, holdsAll_mono hL hs, hR⟩, lke_mono hlk he⟩

section callx2
variable {E : EbE σ} {En : Env} {S : FS} {f : MlS} {args : List (ExpHOL 64)}
  {Pre : List (ValueHOL 64) → State σ → Gam → Ptrs → Prop}
  {D : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
  {Q : List (ValueHOL 64) → State σ → Gam → Ptrs → ValueHOL 64 → State σ → Gam → Ptrs → Prop}
  {W : MlS → Prop} {R : Gam → Ptrs → State σ → Prop}

structure CallOblX (E : EbE σ) (En : Env) (S : FS) (R : Gam → Ptrs → State σ → Prop) (args : List (ExpHOL 64))
    (Pre : List (ValueHOL 64) → State σ → Gam → Ptrs → Prop)
    (D : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop) (W : MlS → Prop) : Prop where
  pre : ∀ s : State σ, PAX E En S R s → ∀ vs, evs s args = some vs → ∀ (callee : Locs) (Γ : Gam) (p : Ptrs),
    EbRun E.Γ0 E.s0 E.p0 Γ s p → HoldsAll E.p0 Γ p s S → R Γ p s → Pre vs (callEntryStateHOLFinite s callee) Γ p
  dmiss : ∀ s : State σ, PAX E En S R s → ∀ vs, evs s args = some vs → ∀ (callee : Locs) (Γ : Gam) (p : Ptrs),
    EbRun E.Γ0 E.s0 E.p0 Γ s p → HoldsAll E.p0 Γ p s S →
    ∀ f, S f → ∀ a, f.reads a → ¬ D vs (callEntryStateHOLFinite s callee) Γ a
  gmiss : ∀ g w ty, S (Fct.gobj g w ty) → ¬ W g
  gvmiss : ∀ g w, S (Fct.gval g w) → ¬ W g

theorem hn_callRx (hf : CallR (σ := σ) f Pre D Q) (hg : GwK (σ := σ) f W) (NF : FS)
    (h : CallOblX E En S R args Pre D W)
    (hnew : ∀ (s : State σ) (vs : List (ValueHOL 64)) (callee : Locs) (v : ValueHOL 64) (st : State σ)
      (Γ Γ' : Gam) (p p' : Ptrs), PAX E En S R s → evs s args = some vs → EbRun E.Γ0 E.s0 E.p0 Γ s p →
      HoldsAll E.p0 Γ p s S →
      Stp Γ p (callEntryStateHOLFinite s callee) Γ' p' st (D vs (callEntryStateHOLFinite s callee) Γ) →
      Q vs (callEntryStateHOLFinite s callee) Γ p v st Γ' p' →
      HoldsAll E.p0 Γ' p' { st with locals := s.locals } NF) :
    HN (PAX E En S R) (.call (some (none, none)) f args) (PA E En (fun g => S g ∨ NF g)) := by
  refine hoare_callD (FunSpec.and hf hg) ?_
  intro s hs hpa vs hvs callee v st ⟨hR, hgl⟩ hst
  obtain ⟨⟨Γ, p, hr, hL, hC⟩, hlk⟩ := hpa
  have hpa : PAX E En S R s := ⟨⟨Γ, p, hr, hL, hC⟩, hlk⟩
  obtain ⟨Γ', p', hstp, hrun, hL', hq⟩ := call_step hR (fun g hgW => hgl v rfl g hgW) hr hL
    (h.pre s hpa vs hvs callee Γ p hr hL hC) (h.dmiss s hpa vs hvs callee Γ p hr hL) h.gmiss h.gvmiss
  have hN := hnew s vs callee v st Γ Γ' p p' hpa hvs hr hL hstp hq
  refine ⟨rfl, ⟨Γ', p', hrun, ?_⟩, hlk⟩
  intro g hg
  rcases hg with hg | hg
  · exact hL' g hg
  · exact hN g hg

end callx2

end InitECandidate.Solver.MemSafe.Eb
