import InitECandidate.Solver.MemSafe.Ptx.PtM9

/-!
# F3e: facts survive adopting a fresh object (`holds_adopt`)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Frames

variable {σ : Type}

/-- Facts whose truth does not mention the cells outside the typing. -/
def SafeK : Fct → Prop
  | .obj _ _ _ => True
  | .bufok0 _ _ => True
  | .prop _ => True
  | .gobj _ _ => True
  | .cellv _ _ => True
  | _ => False

theorem inObj_append {Γ : Gam} {x : Obj} {a : Nat} (h : InObj (Γ ++ [x]) a) :
    InObj Γ a ∨ (x.lo ≤ a ∧ a < x.hi) := by
  obtain ⟨o, ho, h1, h2⟩ := h
  rcases List.mem_append.mp ho with ho | ho
  · exact Or.inl ⟨o, ho, h1, h2⟩
  · rw [List.mem_singleton] at ho; subst ho; exact Or.inr ⟨h1, h2⟩

theorem inObj_app_left {Γ : Gam} {x : Obj} {a : Nat} (h : InObj Γ a) : InObj (Γ ++ [x]) a := by
  obtain ⟨o, ho, h1, h2⟩ := h
  exact ⟨o, List.mem_append_left _ ho, h1, h2⟩

theorem holds_adopt {p0 : Ptrs} {Γ : Gam} {p : Ptrs} {u : State σ} {x : Obj} (hord0 : p0.Ordered) (hord : p.Ordered)
    (hm : p0.Mono p) (hfr : ∀ a : BitVec 64, x.lo ≤ a.toNat → a.toNat < x.hi → Fresh p0 p a) {f : Fct}
    (hf : SafeK f) (h : f.holds p0 Γ p u) : f.holds p0 (Γ ++ [x]) p u := by
  cases f with
  | obj b ty n =>
    obtain ⟨o, ho, h1, h2, h3⟩ := h
    exact ⟨o, List.mem_append_left _ ho, h1, h2, h3⟩
  | bufok0 w n =>
    obtain ⟨hb, hs⟩ := h
    refine ⟨fun a ha => ?_, fun a ha => (hs a ha).imp inObj_app_left id⟩
    rcases hb a ha with ⟨o, ho, k, hk, hsc, e⟩ | ⟨hni, hal⟩
    · exact Or.inl ⟨o, List.mem_append_left _ ho, k, hk, hsc, e⟩
    · refine Or.inr ⟨fun hin => ?_, hal⟩
      rcases inObj_append hin with h' | h'
      · exact hni h'
      · rcases hs a ha with h'' | h''
        · exact hni h''
        · exact fresh_not_alloc hord0 hord hm (hfr a h'.1 h'.2) h''
  | prop P => exact h
  | gobj g ty =>
    obtain ⟨w, hw, o, ho, h1, h2⟩ := h
    exact ⟨w, hw, o, List.mem_append_left _ ho, h1, h2⟩
  | cellv a v =>
    obtain ⟨hr, o, ho, hst, k, hk, hp, e⟩ := h
    exact ⟨hr, o, List.mem_append_left _ ho, hst, k, hk, hp, e⟩
  | fbuf _ _ => exact absurd hf (by simp [SafeK])
  | bufok _ _ => exact absurd hf (by simp [SafeK])
  | memw _ _ => exact absurd hf (by simp [SafeK])
  | arrbuf _ _ _ _ => exact absurd hf (by simp [SafeK])

end InitECandidate.Solver.MemSafe.Ptx
