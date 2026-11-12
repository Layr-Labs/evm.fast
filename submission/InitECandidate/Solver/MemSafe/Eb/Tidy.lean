import InitECandidate.Solver.MemSafe.Eb.MzStep

/-!
# `execute_block`: facts about globals stay inside a known list (`Tidy`)

`Tidy Z S`: every `gobj` / `gval` fact of `S` names a global of `Z`. Side conditions on write sets reduce to `∀ g ∈ Z, ¬ W g`.
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

def Tidy (Z : List MlS) (S : FS) : Prop :=
  (∀ g w t, S (Fct.gobj g w t) → g ∈ Z) ∧ (∀ g w, S (Fct.gval g w) → g ∈ Z)

theorem tidy_mono {Z Z' : List MlS} {S S' : FS} (h : Tidy Z S) (hz : ∀ g, g ∈ Z → g ∈ Z') (hs : ∀ f, S' f → S f) :
    Tidy Z' S' := ⟨fun g w t hf => hz g (h.1 g w t (hs _ hf)), fun g w hf => hz g (h.2 g w (hs _ hf))⟩

theorem tidy_adopt {Z : List MlS} {S : FS} (h : Tidy Z S) (w : BitVec 64) (ty n : Nat) :
    Tidy Z (fun f => S f ∨ AdoptNF S w ty n f) := by
  refine ⟨fun g w' t hf => ?_, fun g w' hf => ?_⟩
  · rcases hf with hf | hf
    · exact h.1 g w' t hf
    · rcases hf with hh | ⟨b, ty', n', -, hh⟩ | ⟨g', b, ty', -, hh⟩ | hh <;> cases hh
  · rcases hf with hf | hf
    · exact h.2 g w' hf
    · rcases hf with hh | ⟨b, ty', n', -, hh⟩ | ⟨g', b, ty', -, hh⟩ | hh <;> cases hh

theorem tidy_add {Z : List MlS} {S : FS} (h : Tidy Z S) {f0 : Fct} (hf0 : (∀ g w t, f0 = Fct.gobj g w t → g ∈ Z) ∧
    (∀ g w, f0 = Fct.gval g w → g ∈ Z)) : Tidy Z (fun f => S f ∨ f = f0) := by
  refine ⟨fun g w t hf => ?_, fun g w hf => ?_⟩
  · rcases hf with hf | hf
    · exact h.1 g w t hf
    · exact hf0.1 g w t hf.symm
  · rcases hf with hf | hf
    · exact h.2 g w hf
    · exact hf0.2 g w hf.symm

theorem tidy_ne {Z : List MlS} {S : FS} (h : Tidy Z S) {g0 : MlS} (hz : g0 ∉ Z) :
    (∀ g w t, S (Fct.gobj g w t) → g ≠ g0) ∧ (∀ g w, S (Fct.gval g w) → g ≠ g0) :=
  ⟨fun g w t hf e => hz (e ▸ h.1 g w t hf), fun g w hf e => hz (e ▸ h.2 g w hf)⟩

theorem tidy_gmiss {Z : List MlS} {S : FS} (h : Tidy Z S) {W : MlS → Prop} (hz : ∀ g ∈ Z, ¬ W g) :
    (∀ g w t, S (Fct.gobj g w t) → ¬ W g) ∧ (∀ g w, S (Fct.gval g w) → ¬ W g) :=
  ⟨fun g w t hf => hz g (h.1 g w t hf), fun g w hf => hz g (h.2 g w hf)⟩

end InitECandidate.Solver.MemSafe.Eb
