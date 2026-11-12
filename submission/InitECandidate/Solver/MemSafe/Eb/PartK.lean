import InitECandidate.Solver.MemSafe.Eb.Part

/-!
# `execute_block`: calls that need `CPre Γ` (`hn_callRk`, `hdecCallRkW`)
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

theorem ebRun_keepG (hK : HypKeepG σ) {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {Γ : Gam} {u : State σ} {p : Ptrs}
    (hE0 : ∀ o ∈ Γ0, KeepTy o.ty) (h : EbRun Γ0 s0 p0 Γ u p) :
    EbRun Γ0 s0 p0 (keepG Γ) u p ∧ CPre (keepG Γ) := by
  obtain ⟨hG', hOH⟩ := hK (ebRun_G h) (ebRun_ev h) (ebRun_cc h)
  refine ⟨⟨ebRun_ptrs0 h, ebRun_ptrs h, ebRun_mono h, ?_, ?_, hG', ebRun_jr h, ebRun_ev h, ebRun_cc h, ebRun_ord0 h⟩,
    fun o ho => (mem_keepG.mp ho).2.1, hOH⟩
  · intro o ho
    obtain ⟨o', ho', hb, ht, hs⟩ := ebRun_ext h o ho
    exact ⟨o', mem_keepG.mpr ⟨ho', ht ▸ hE0 o ho⟩, hb, ht, hs⟩
  · intro o ho a h1 h2
    exact ebRun_nf h o (mem_keepG.mp ho).1 a h1 h2

/-- The walk state with a heap-part typing. -/
def PAk (E : EbE σ) (En : Env) (S : FS) (u : State σ) : Prop :=
  (∃ (Γ : Gam) (p : Ptrs), EbRun E.Γ0 E.s0 E.p0 Γ u p ∧ HoldsAll E.p0 Γ p u S ∧ CPre Γ) ∧ LKE En u

theorem pa_hpart {E : EbE σ} {En : Env} {S : FS} {u : State σ} (hK : HypKeepG σ) (hE0 : ∀ o ∈ E.Γ0, KeepTy o.ty)
    (hS : SafeS S) (h : PA E En S u) : PAk E En S u := by
  obtain ⟨⟨Γ, p, hr, hL⟩, hlk⟩ := h
  obtain ⟨hr', hC⟩ := ebRun_keepG hK hE0 hr
  exact ⟨⟨keepG Γ, p, hr', fun f hf => holds_keepG (hS f hf) (hL f hf), hC⟩, hlk⟩

theorem pak_pa {E : EbE σ} {En : Env} {S : FS} {u : State σ} (h : PAk E En S u) : PA E En S u :=
  ⟨⟨h.1.choose, h.1.choose_spec.choose, h.1.choose_spec.choose_spec.1, h.1.choose_spec.choose_spec.2.1⟩, h.2⟩

section callk
variable {E : EbE σ} {En : Env} {S : FS} {f : MlS} {args : List (ExpHOL 64)}
  {Pre : List (ValueHOL 64) → State σ → Gam → Ptrs → Prop}
  {D : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
  {Q : List (ValueHOL 64) → State σ → Gam → Ptrs → ValueHOL 64 → State σ → Gam → Ptrs → Prop}
  {W : MlS → Prop}

structure CallOblK (E : EbE σ) (En : Env) (S : FS) (args : List (ExpHOL 64))
    (Pre : List (ValueHOL 64) → State σ → Gam → Ptrs → Prop)
    (D : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop) (W : MlS → Prop) : Prop where
  pre : ∀ s : State σ, PAk E En S s → ∀ vs, evs s args = some vs → ∀ (callee : Locs) (Γ : Gam) (p : Ptrs),
    EbRun E.Γ0 E.s0 E.p0 Γ s p → HoldsAll E.p0 Γ p s S → CPre Γ → Pre vs (callEntryStateHOLFinite s callee) Γ p
  dmiss : ∀ s : State σ, PAk E En S s → ∀ vs, evs s args = some vs → ∀ (callee : Locs) (Γ : Gam) (p : Ptrs),
    EbRun E.Γ0 E.s0 E.p0 Γ s p → HoldsAll E.p0 Γ p s S →
    ∀ f, S f → ∀ a, f.reads a → ¬ D vs (callEntryStateHOLFinite s callee) Γ a
  gmiss : ∀ g w ty, S (Fct.gobj g w ty) → ¬ W g
  gvmiss : ∀ g w, S (Fct.gval g w) → ¬ W g

theorem hn_callRk (hf : CallR (σ := σ) f Pre D Q) (hg : GwK (σ := σ) f W) (NF : FS) (h : CallOblK E En S args Pre D W)
    (hnew : ∀ (s : State σ) (vs : List (ValueHOL 64)) (callee : Locs) (v : ValueHOL 64) (st : State σ)
      (Γ Γ' : Gam) (p p' : Ptrs), EbRun E.Γ0 E.s0 E.p0 Γ s p → HoldsAll E.p0 Γ p s S →
      Stp Γ p (callEntryStateHOLFinite s callee) Γ' p' st (D vs (callEntryStateHOLFinite s callee) Γ) →
      Q vs (callEntryStateHOLFinite s callee) Γ p v st Γ' p' →
      HoldsAll E.p0 Γ' p' { st with locals := s.locals } NF) :
    HN (PAk E En S) (.call (some (none, none)) f args) (PA E En (fun g => S g ∨ NF g)) := by
  refine hoare_callD (FunSpec.and hf hg) ?_
  intro s hs hpa vs hvs callee v st ⟨hR, hgl⟩ hst
  obtain ⟨⟨Γ, p, hr, hL, hC⟩, hlk⟩ := hpa
  have hpa : PAk E En S s := ⟨⟨Γ, p, hr, hL, hC⟩, hlk⟩
  obtain ⟨Γ', p', hstp, hrun, hL', hq⟩ := call_step hR (fun g hgW => hgl v rfl g hgW) hr hL
    (h.pre s hpa vs hvs callee Γ p hr hL hC) (h.dmiss s hpa vs hvs callee Γ p hr hL) h.gmiss h.gvmiss
  have hN := hnew s vs callee v st Γ Γ' p p' hr hL hstp hq
  refine ⟨rfl, ⟨Γ', p', hrun, ?_⟩, hlk⟩
  intro g hg
  rcases hg with hg | hg
  · exact hL' g hg
  · exact hN g hg

end callk

end InitECandidate.Solver.MemSafe.Eb
