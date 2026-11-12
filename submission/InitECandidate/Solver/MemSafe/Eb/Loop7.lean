import InitECandidate.Solver.MemSafe.Eb.Loop6

/-!
# `execute_block`: loop part 7 (cells of block objects, `ent` facts)
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
open InitECandidate.Solver.MemSafe.Hooks

variable {σ : Type}

theorem bcell_of_base {Γ : Gam} {X : BitVec 64} {ty n off : Nat} (hty : ty = tBOS ∨ ty = tBO ∨ ty = tMCO)
    (ho : ∃ o ∈ Γ, o.base = X ∧ o.ty = ty ∧ n ≤ o.size) (h8 : off % 8 = 0) (hn : off + 8 ≤ n) :
    BCell guestC Γ (X + BitVec.ofNat 64 off) := by
  obtain ⟨o, ho, hb, ht, hs⟩ := ho
  refine ⟨o, ho, by rcases hty with h | h | h <;> simp [blockTys, ht, h], off / 8, ?_, blk_prot (ht ▸ hty) _, ?_⟩
  · unfold Obj.HasSlot; omega
  · unfold Obj.cell; rw [hb, show 8 * (off / 8) = off by omega]

/-- The entry `iv` of the array at `X` (a `tBOS` object of at least `16 * m + 16` bytes, `iv ≤ m`) holds a slice of a `tVAL` object. -/
theorem ent_holds {p0 p : Ptrs} {Γ : Gam} {u : State σ} {X : BitVec 64} {m iv : Nat} (hiv : iv ≤ m)
    (ho : ∃ o ∈ Γ, o.base = X ∧ o.ty = tBOS ∧ 16 * m + 16 ≤ o.size)
    (hv : Hooks.VInR tVAL Γ (rd u.memory (X + BitVec.ofNat 64 (16 * iv))) (rd u.memory (X + BitVec.ofNat 64 (16 * iv + 8)))) :
    Fct.holds (σ := σ) p0 Γ p u (Fct.ent X iv) :=
  ⟨bcell_of_base (Or.inl rfl) ho (by omega) (by omega), bcell_of_base (Or.inl rfl) ho (by omega) (by omega), hv⟩

theorem sla_succ {p0 : Ptrs} {Γ : Gam} {p : Ptrs} {u : State σ} {X : BitVec 64} {n : Nat}
    (h1 : Fct.holds p0 Γ p u (Fct.sla X n)) (h2 : Fct.holds p0 Γ p u (Fct.ent X n)) :
    Fct.holds p0 Γ p u (Fct.sla X (n + 1)) := by
  intro j hj
  rcases Nat.lt_succ_iff_lt_or_eq.mp hj with h | rfl
  · exact h1 j h
  · exact h2

end InitECandidate.Solver.MemSafe.Eb
