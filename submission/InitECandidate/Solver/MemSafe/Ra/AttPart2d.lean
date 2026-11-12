import InitECandidate.Solver.MemSafe.Ra.AttPart2c

/-!
# `run_attempt`, after `payload_header` (end): the walk from `raS35` and the call of `execute_block`
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Att
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Eb

variable {σ : Type}

theorem freeG_be : FreeG nmBe := ⟨by decide, ⟨by decide, by decide, by decide⟩, ⟨by decide, by decide⟩, ⟨by decide, by decide⟩⟩

theorem gt_be : guestC.GT.lookup nmBe = some .scalar := by decide

/-- The facts at the call of `execute_block` give its entry facts. -/
theorem holds_s0c {si0 pl0 ptxs0 ntx0 nwd0 T1 T2 z bsw skw bh nh H C WD be0 : BitVec 64} {S : FS}
    (hsub : ∀ f, S2 si0 pl0 ptxs0 ntx0 nwd0 T1 T2 z bsw skw bh nh H C WD f → S f) {p0 : Ptrs} {Γ : Gam} {p : Ptrs}
    {u : State σ}
    (hL : HoldsAll p0 Γ p u (fun f => SB S be0 f ∨ f = Fct.cellv (be0 + BitVec.ofNat 64 32) C)) :
    HoldsAll p Γ p u (S0c si0 pl0 ntx0 ptxs0 nwd0 be0 C WD T1 T2 z bh nh bsw skw) := by
  intro f hf
  simp only [S0c] at hf
  have hS2 : ∀ f, S2 si0 pl0 ptxs0 ntx0 nwd0 T1 T2 z bsw skw bh nh H C WD f → f.holds p Γ p u := by
    intro f hf
    have h := hL f (Or.inl (Or.inl (hsub f hf)))
    simp only [S2, S2b] at hf
    rcases hf with (rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl) | rfl | rfl | rfl | rfl | rfl | rfl <;> exact h
  rcases hf with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact hS2 _ (by simp [S2, S2b])
  · exact hS2 _ (by simp [S2, S2b])
  · exact hS2 _ (by simp [S2, S2b])
  · exact hS2 _ (by simp [S2, S2b])
  · exact hS2 _ (by simp [S2, S2b])
  · exact hL (Fct.gval nmBe be0) (Or.inl (Or.inr (Or.inr (Or.inr rfl))))
  · exact hL (Fct.obj be0 tBOS 120) (Or.inl (Or.inr (Or.inl (Or.inl rfl))))
  · exact hL (Fct.cellv (be0 + BitVec.ofNat 64 32) C) (Or.inr rfl)
  · exact hS2 _ (by simp [S2, S2b])
  · exact hS2 _ (by simp [S2, S2b])
  · exact hS2 _ (by simp [S2, S2b])
  · exact hS2 _ (by simp [S2, S2b])
  · intro heq
    have := hL (Fct.prop (WD ≠ be0)) (Or.inl (Or.inr (Or.inl (Or.inr (Or.inl
      ⟨WD, tBOS, 16 * nwd0.toNat, hsub _ (by simp [S2, S2b]), rfl⟩)))))
    exact this heq.symm
  · exact hS2 _ (by simp [S2, S2b])
  · exact hS2 _ (by simp [S2, S2b])
  · exact hS2 _ (by simp [S2, S2b])
  · exact hS2 _ (by simp [S2, S2b])
  · exact hS2 _ (by simp [S2, S2b])
  · exact hS2 _ (by simp [S2, S2b])
  · exact hS2 _ (by simp [S2, S2b])

end InitECandidate.Solver.MemSafe.Att
