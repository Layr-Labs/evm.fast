import InitECandidate.Solver.MemSafe.Wg.Ra3

/-!
# Wg: the walk of `requests_append`
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

theorem add8_toNat {n : BitVec 64} (h : n.toNat < 2 ^ 32) : (n + BitVec.ofNat 64 8).toNat = n.toNat + 8 := by
  have h8 : (BitVec.ofNat 64 8).toNat = 8 := rfl
  rw [BitVec.toNat_add, h8, Nat.mod_eq_of_lt (by omega)]

theorem argsOK_memcpy {Γ : Gam} {p : Ptrs} {w n : BitVec 64} {a : ValueHOL 64} (h : BufOK guestC Γ p w.toNat n.toNat) :
    ArgsOK guestC Γ p Helpers.sigMemcpy.params [.val (.word w), a, .val (.word n)] := by
  refine ⟨rfl, ?_⟩
  intro i pt v hpt hv
  match i, pt, v with
  | 0, pt, v =>
    simp only [Helpers.sigMemcpy, List.getElem?_cons_zero, Option.some.injEq] at hpt hv
    subst hpt; subst hv
    exact ⟨w, n, rfl, rfl, by simpa using h⟩
  | 1, pt, v =>
    simp only [Helpers.sigMemcpy, List.getElem?_cons_succ, List.getElem?_cons_zero, Option.some.injEq] at hpt
    subst hpt; trivial
  | 2, pt, v =>
    simp only [Helpers.sigMemcpy, List.getElem?_cons_succ, List.getElem?_cons_zero, Option.some.injEq] at hpt
    subst hpt; trivial
  | i + 3, pt, v => simp [Helpers.sigMemcpy] at hpt

theorem ra_tidy {Γ0 : Gam} {s0 : State σ} {bo0 : BitVec 64} : Tidy [nm "bo"] (RaS Γ0 s0 bo0) := by
  refine ⟨fun g w t hf => ?_, fun g w hf => ?_⟩
  · rcases hf with (hf | hf | hf | hf | hf | hf) | hf
    · exact (frS_not_gobj hf).elim
    all_goals first | (cases hf; simp; done) | (cases hf; done)
  · rcases hf with (hf | hf | hf | hf | hf | hf) | hf
    · exact (frS_not_gval hf).elim
    all_goals cases hf

theorem ra_avoid0 {Γ0 : Gam} {s0 : State σ} {bo0 : BitVec 64} :
    Avoid (RaS0 Γ0 s0 bo0) Γ0 s0 (RaD s0) [bo0 + BitVec.ofNat 64 56] := by
  intro f hf
  rcases hf with hf | rfl | rfl | rfl | rfl | rfl
  · exact Or.inl hf
  all_goals refine Or.inr fun y hy => ?_
  · exact hy.elim
  · exact hy.elim
  · exact hy.elim
  · have : y = bo0 + BitVec.ofNat 64 56 := hy
    simp [this]
  · exact hy.elim

end InitECandidate.Solver.MemSafe.Wg
