import InitECandidate.Solver.MemSafe.Eb.CallH

/-!
# `execute_block`: `f(args);` and `var x = f(args); k` over `CallR`
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

/-- The globals outside `W` are kept by every return of `f`. -/
def GwK (f : MlS) (W : MlS → Prop) : Prop :=
  FunSpec σ guestCtx f (fun _ s r t => ∀ v, r = .returned v → ∀ g, ¬ W g → t.globals.lookup g = s.globals.lookup g)

section calls
variable {E : EbE σ} {En : Env} {S : FS} {f : MlS} {args : List (ExpHOL 64)}
  {Pre : List (ValueHOL 64) → State σ → Gam → Ptrs → Prop}
  {D : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
  {Q : List (ValueHOL 64) → State σ → Gam → Ptrs → ValueHOL 64 → State σ → Gam → Ptrs → Prop}
  {W : MlS → Prop}

/-- The obligations of a call from a walk state. -/
structure CallObl (E : EbE σ) (En : Env) (S : FS) (args : List (ExpHOL 64))
    (Pre : List (ValueHOL 64) → State σ → Gam → Ptrs → Prop)
    (D : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop) (W : MlS → Prop) : Prop where
  pre : ∀ s : State σ, PA E En S s → ∀ vs, evs s args = some vs → ∀ (callee : Locs) (Γ : Gam) (p : Ptrs),
    EbRun E.Γ0 E.s0 E.p0 Γ s p → HoldsAll E.p0 Γ p s S → Pre vs (callEntryStateHOLFinite s callee) Γ p
  dmiss : ∀ s : State σ, PA E En S s → ∀ vs, evs s args = some vs → ∀ (callee : Locs) (Γ : Gam) (p : Ptrs),
    EbRun E.Γ0 E.s0 E.p0 Γ s p → HoldsAll E.p0 Γ p s S →
    ∀ f, S f → ∀ a, f.reads a → ¬ D vs (callEntryStateHOLFinite s callee) Γ a
  gmiss : ∀ g w ty, S (Fct.gobj g w ty) → ¬ W g
  gvmiss : ∀ g w, S (Fct.gval g w) → ¬ W g

theorem hn_callR (hf : CallR f Pre D Q) (hg : GwK (σ := σ) f W) (NF : FS) (h : CallObl E En S args Pre D W)
    (hnew : ∀ (s : State σ) (vs : List (ValueHOL 64)) (callee : Locs) (v : ValueHOL 64) (st : State σ)
      (Γ Γ' : Gam) (p p' : Ptrs), EbRun E.Γ0 E.s0 E.p0 Γ s p → HoldsAll E.p0 Γ p s S →
      Stp Γ p (callEntryStateHOLFinite s callee) Γ' p' st (D vs (callEntryStateHOLFinite s callee) Γ) →
      Q vs (callEntryStateHOLFinite s callee) Γ p v st Γ' p' →
      HoldsAll E.p0 Γ' p' { st with locals := s.locals } NF) :
    HN (PA E En S) (.call (some (none, none)) f args) (PA E En (fun g => S g ∨ NF g)) := by
  refine hoare_callD (FunSpec.and hf hg) ?_
  intro s hs hpa vs hvs callee v st ⟨hR, hgl⟩ hst
  obtain ⟨⟨Γ, p, hr, hL⟩, hlk⟩ := hpa
  have hpa : PA E En S s := ⟨⟨Γ, p, hr, hL⟩, hlk⟩
  obtain ⟨Γ', p', hstp, hrun, hL', hq⟩ := call_step hR (fun g hgW => hgl v rfl g hgW) hr hL
    (h.pre s hpa vs hvs callee Γ p hr hL) (h.dmiss s hpa vs hvs callee Γ p hr hL) h.gmiss h.gvmiss
  have hN := hnew s vs callee v st Γ Γ' p p' hr hL hstp hq
  refine ⟨rfl, ⟨Γ', p', hrun, ?_⟩, hlk⟩
  intro g hg
  rcases hg with hg | hg
  · exact hL' g hg
  · exact hN g hg

theorem hdecCallR {rn : MlS} {sh : ShapeHOL} {k : ProgHOL 64} {QT : Option (PanSemResultExact 64) → State σ → Prop}
    (hQT : ResIns rn QT) (hf : CallR f Pre D Q) (hg : GwK (σ := σ) f W) (NF : ValueHOL 64 → FS)
    (h : CallObl E En S args Pre D W)
    (hnew : ∀ (s : State σ) (vs : List (ValueHOL 64)) (callee : Locs) (v : ValueHOL 64) (st : State σ)
      (Γ Γ' : Gam) (p p' : Ptrs), EbRun E.Γ0 E.s0 E.p0 Γ s p → HoldsAll E.p0 Γ p s S →
      Stp Γ p (callEntryStateHOLFinite s callee) Γ' p' st (D vs (callEntryStateHOLFinite s callee) Γ) →
      Q vs (callEntryStateHOLFinite s callee) Γ p v st Γ' p' → shapeEqHOL (shapeOfHOLExact v) sh = true →
      HoldsAll E.p0 Γ' p' { st with locals := s.locals } (NF v))
    (hk : ∀ v, shapeEqHOL (shapeOfHOLExact v) sh = true →
      Hoare σ guestCtx (PA E (En.set rn v) (fun g => S g ∨ NF v g)) k QT) :
    Hoare σ guestCtx (PA E En S) (.decCall rn sh f args k) QT := by
  refine hdecCallK hQT (FunSpec.and hf hg) ?_
  intro s hs hpa vs hvs callee v st ⟨hR, hgl⟩ hst hsh
  obtain ⟨⟨Γ, p, hr, hL⟩, hlk⟩ := hpa
  have hpa : PA E En S s := ⟨⟨Γ, p, hr, hL⟩, hlk⟩
  obtain ⟨Γ', p', hstp, hrun, hL', hq⟩ := call_step hR (fun g hgW => hgl v rfl g hgW) hr hL
    (h.pre s hpa vs hvs callee Γ p hr hL) (h.dmiss s hpa vs hvs callee Γ p hr hL) h.gmiss h.gvmiss
  have hN := hnew s vs callee v st Γ Γ' p p' hr hL hstp hq hsh
  refine hoare_pre (hk v hsh) ?_
  intro t _ ht
  subst ht
  refine ⟨⟨Γ', p', ebRun_set hrun rn _, ?_⟩, lke_set (lke_restore hlk) rn v⟩
  intro g hg
  rcases hg with hg | hg
  · have := (holdsAll_loc hL' s.locals st.clock) g hg
    cases g <;> first | exact this | simpa [Fct.holds, gword, rd] using this
  · have := (holdsAll_loc hN s.locals st.clock) g hg
    cases g <;> first | exact this | simpa [Fct.holds, gword, rd] using this

end calls

end InitECandidate.Solver.MemSafe.Eb
