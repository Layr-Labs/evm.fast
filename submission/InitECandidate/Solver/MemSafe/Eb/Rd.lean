import InitECandidate.Solver.MemSafe.Eb.Hoare

/-!
# `execute_block`: the cells facts read lie in objects of `Γ`
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

theorem reads_inObj {p0 : Ptrs} {Γ : Gam} {p : Ptrs} {u : State σ} (hord : p.Ordered) (hL : Layout guestC p Γ)
    {f : Fct} (hh : f.holds p0 Γ p u) {y : BitVec 64} (hy : f.reads y) : InObj Γ y.toNat := by
  revert hy hh
  cases f with
  | cellv a v =>
    intro hh hy
    obtain rfl : y = a := hy
    obtain ⟨-, o, ho, -, k, hk, -, rfl⟩ := hh
    exact cell_in hord hL ho hk
  | pcv a v =>
    intro hh hy
    obtain rfl : y = a := hy
    obtain ⟨-, o, ho, -, k, hk, -, rfl⟩ := hh
    exact cell_in hord hL ho hk
  | sla A n =>
    intro hh hy
    obtain ⟨j, hj, hc⟩ := hy
    obtain ⟨⟨o, ho, -, k, hk, -, e1⟩, ⟨o2, ho2, -, k2, hk2, -, e2⟩, -⟩ := hh j hj
    rcases hc with rfl | rfl
    · rw [e1]; exact cell_in hord hL ho hk
    · rw [e2]; exact cell_in hord hL ho2 hk2
  | ent A j =>
    intro hh hy
    obtain ⟨⟨o, ho, -, k, hk, -, e1⟩, ⟨o2, ho2, -, k2, hk2, -, e2⟩, -⟩ := hh
    rcases hy with rfl | rfl
    · rw [e1]; exact cell_in hord hL ho hk
    · rw [e2]; exact cell_in hord hL ho2 hk2
  | _ => intro _ hy; exact hy.elim

end InitECandidate.Solver.MemSafe.Eb
