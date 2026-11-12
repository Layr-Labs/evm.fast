import InitECandidate.Solver.MemSafe.Wg.Code
import InitECandidate.Solver.MemSafe.Eb.Glue5
import InitECandidate.Solver.MemSafe.Eb.Cost2

/-!
# Wg: the walk kit (frame facts, calls with a kept sub-set of facts)

* `FrS Γ0 s0 Dout`: an infinite fact set, one `cellv` fact for every block cell of the entry typing outside `Dout`, one `pcv` fact for
  every payload-record cell. A walk that carries it ends with exactly the frame clauses of `Stp`.
* `hn_callR2`, `hn_callRk2`: a call whose `Pre` may use all facts `S` but whose footprint / globals only have to miss the sub-set `Sk`
  of facts that are kept; the new facts are indexed by an existential.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Wg
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Eb

variable {σ : Type}

/-- The frame facts: every block cell of `Γ0` outside `Dout` keeps its entry value, every payload-record cell too. -/
def FrS (Γ0 : Gam) (s0 : State σ) (Dout : BitVec 64 → Prop) : FS := fun f =>
  (∃ a, BCell guestC Γ0 a ∧ ¬ Dout a ∧ f = Fct.cellv a (rd s0.memory a)) ∨
  (∃ a, PlCell Γ0 a ∧ f = Fct.pcv a (rd s0.memory a))

theorem frS_entry {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {Dout : BitVec 64 → Prop} :
    HoldsAll p0 Γ0 p0 s0 (FrS Γ0 s0 Dout) := by
  intro f hf
  rcases hf with ⟨a, hb, -, rfl⟩ | ⟨a, hb, rfl⟩
  · exact ⟨rfl, hb⟩
  · exact ⟨rfl, hb⟩

theorem safe_frS {Γ0 : Gam} {s0 : State σ} {Dout : BitVec 64 → Prop} : SafeS (FrS Γ0 s0 Dout) := by
  intro f hf
  rcases hf with ⟨a, -, -, rfl⟩ | ⟨a, -, rfl⟩ <;> trivial

/-- The frame facts give the frame clauses of a call's `Stp`. -/
theorem frame_of_holds {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {Dout : BitVec 64 → Prop} {Γ : Gam} {p : Ptrs}
    {u : State σ} {S : FS} (hS : ∀ f, FrS Γ0 s0 Dout f → S f) (hL : HoldsAll p0 Γ p u S) :
    (∀ a, BCell guestC Γ0 a → ¬ Dout a → rd u.memory a = rd s0.memory a) ∧
    (∀ a, PlCell Γ0 a → rd u.memory a = rd s0.memory a) := by
  refine ⟨fun a hb hd => ?_, fun a hb => ?_⟩
  · exact (hL _ (hS _ (Or.inl ⟨a, hb, hd, rfl⟩))).1
  · exact (hL _ (hS _ (Or.inr ⟨a, hb, rfl⟩))).1

section calls
variable {E : EbE σ} {En : Env} {S Sk : FS} {f : MlS} {args : List (ExpHOL 64)}
  {Pre : List (ValueHOL 64) → State σ → Gam → Ptrs → Prop}
  {D : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
  {Q : List (ValueHOL 64) → State σ → Gam → Ptrs → ValueHOL 64 → State σ → Gam → Ptrs → Prop}
  {W : MlS → Prop}

/-- The obligations of a call: `pre` may use every fact of `S`; the footprint and the globals only have to miss the kept facts `Sk`. -/
structure CallObl2 (E : EbE σ) (En : Env) (S Sk : FS) (args : List (ExpHOL 64))
    (Pre : List (ValueHOL 64) → State σ → Gam → Ptrs → Prop)
    (D : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop) (W : MlS → Prop) : Prop where
  pre : ∀ s : State σ, PA E En S s → ∀ vs, evs s args = some vs → ∀ (callee : Locs) (Γ : Gam) (p : Ptrs),
    EbRun E.Γ0 E.s0 E.p0 Γ s p → HoldsAll E.p0 Γ p s S → Pre vs (callEntryStateHOLFinite s callee) Γ p
  dmiss : ∀ s : State σ, PA E En S s → ∀ vs, evs s args = some vs → ∀ (callee : Locs) (Γ : Gam) (p : Ptrs),
    EbRun E.Γ0 E.s0 E.p0 Γ s p → HoldsAll E.p0 Γ p s S →
    ∀ f, Sk f → ∀ a, f.reads a → ¬ D vs (callEntryStateHOLFinite s callee) Γ a
  gmiss : ∀ g w ty, Sk (Fct.gobj g w ty) → ¬ W g
  gvmiss : ∀ g w, Sk (Fct.gval g w) → ¬ W g

theorem hn_callR2 {α : Type} (hf : CallR (σ := σ) f Pre D Q) (hg : GwK (σ := σ) f W) (hsub : ∀ x, Sk x → S x)
    (NF : α → FS) (h : CallObl2 E En S Sk args Pre D W)
    (hnew : ∀ (s : State σ) (vs : List (ValueHOL 64)) (callee : Locs) (v : ValueHOL 64) (st : State σ)
      (Γ Γ' : Gam) (p p' : Ptrs), EbRun E.Γ0 E.s0 E.p0 Γ s p → HoldsAll E.p0 Γ p s S →
      Stp Γ p (callEntryStateHOLFinite s callee) Γ' p' st (D vs (callEntryStateHOLFinite s callee) Γ) →
      Q vs (callEntryStateHOLFinite s callee) Γ p v st Γ' p' →
      ∃ a, HoldsAll E.p0 Γ' p' { st with locals := s.locals } (NF a)) :
    HN (PA E En S) (.call (some (none, none)) f args) (fun t => ∃ a, PA E En (fun g => Sk g ∨ NF a g) t) := by
  refine hoare_callD (FunSpec.and hf hg) ?_
  intro s hs hpa vs hvs callee v st ⟨hR, hgl⟩ hst
  obtain ⟨⟨Γ, p, hr, hL⟩, hlk⟩ := hpa
  have hpa : PA E En S s := ⟨⟨Γ, p, hr, hL⟩, hlk⟩
  obtain ⟨Γ', p', hstp, hrun, hL', hq⟩ := call_step (S := Sk) hR (fun g hgW => hgl v rfl g hgW) hr
    (holdsAll_mono hL hsub) (h.pre s hpa vs hvs callee Γ p hr hL) (h.dmiss s hpa vs hvs callee Γ p hr hL) h.gmiss h.gvmiss
  obtain ⟨a, hN⟩ := hnew s vs callee v st Γ Γ' p p' hr hL hstp hq
  refine ⟨rfl, a, ⟨Γ', p', hrun, ?_⟩, hlk⟩
  intro g hg
  rcases hg with hg | hg
  · exact hL' g hg
  · exact hN g hg

/-- The same from a heap-part walk state (`CPre` of the typing is available to `pre`). -/
structure CallOblK2 (E : EbE σ) (En : Env) (S Sk : FS) (args : List (ExpHOL 64))
    (Pre : List (ValueHOL 64) → State σ → Gam → Ptrs → Prop)
    (D : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop) (W : MlS → Prop) : Prop where
  pre : ∀ s : State σ, PAk E En S s → ∀ vs, evs s args = some vs → ∀ (callee : Locs) (Γ : Gam) (p : Ptrs),
    EbRun E.Γ0 E.s0 E.p0 Γ s p → HoldsAll E.p0 Γ p s S → CPre Γ → Pre vs (callEntryStateHOLFinite s callee) Γ p
  dmiss : ∀ s : State σ, PAk E En S s → ∀ vs, evs s args = some vs → ∀ (callee : Locs) (Γ : Gam) (p : Ptrs),
    EbRun E.Γ0 E.s0 E.p0 Γ s p → HoldsAll E.p0 Γ p s S →
    ∀ f, Sk f → ∀ a, f.reads a → ¬ D vs (callEntryStateHOLFinite s callee) Γ a
  gmiss : ∀ g w ty, Sk (Fct.gobj g w ty) → ¬ W g
  gvmiss : ∀ g w, Sk (Fct.gval g w) → ¬ W g

theorem hn_callRk2 {α : Type} (hf : CallR (σ := σ) f Pre D Q) (hg : GwK (σ := σ) f W) (hsub : ∀ x, Sk x → S x)
    (NF : α → FS) (h : CallOblK2 E En S Sk args Pre D W)
    (hnew : ∀ (s : State σ) (vs : List (ValueHOL 64)) (callee : Locs) (v : ValueHOL 64) (st : State σ)
      (Γ Γ' : Gam) (p p' : Ptrs), EbRun E.Γ0 E.s0 E.p0 Γ s p → HoldsAll E.p0 Γ p s S →
      Stp Γ p (callEntryStateHOLFinite s callee) Γ' p' st (D vs (callEntryStateHOLFinite s callee) Γ) →
      Q vs (callEntryStateHOLFinite s callee) Γ p v st Γ' p' →
      ∃ a, HoldsAll E.p0 Γ' p' { st with locals := s.locals } (NF a)) :
    HN (PAk E En S) (.call (some (none, none)) f args) (fun t => ∃ a, PA E En (fun g => Sk g ∨ NF a g) t) := by
  refine hoare_callD (FunSpec.and hf hg) ?_
  intro s hs hpa vs hvs callee v st ⟨hR, hgl⟩ hst
  obtain ⟨⟨Γ, p, hr, hL, hC⟩, hlk⟩ := hpa
  have hpa : PAk E En S s := ⟨⟨Γ, p, hr, hL, hC⟩, hlk⟩
  obtain ⟨Γ', p', hstp, hrun, hL', hq⟩ := call_step (S := Sk) hR (fun g hgW => hgl v rfl g hgW) hr
    (holdsAll_mono hL hsub) (h.pre s hpa vs hvs callee Γ p hr hL hC) (h.dmiss s hpa vs hvs callee Γ p hr hL) h.gmiss h.gvmiss
  obtain ⟨a, hN⟩ := hnew s vs callee v st Γ Γ' p p' hr hL hstp hq
  refine ⟨rfl, a, ⟨Γ', p', hrun, ?_⟩, hlk⟩
  intro g hg
  rcases hg with hg | hg
  · exact hL' g hg
  · exact hN g hg

end calls

end InitECandidate.Solver.MemSafe.Wg
