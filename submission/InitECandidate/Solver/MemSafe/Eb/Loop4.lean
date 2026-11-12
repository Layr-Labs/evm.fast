import InitECandidate.Solver.MemSafe.Eb.Loop3

/-!
# `execute_block`: loop part 4 (cell disjointness between block objects)
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

theorem cells_ne_cross {Γ : Gam} {p : Ptrs} (hord : p.Ordered) (hL : Layout guestC p Γ) {b1 b2 : BitVec 64}
    {n1 n2 off1 off2 ty1 ty2 : Nat}
    (h1 : ∃ o ∈ Γ, o.base = b1 ∧ o.ty = ty1 ∧ n1 ≤ o.size) (h2 : ∃ o ∈ Γ, o.base = b2 ∧ o.ty = ty2 ∧ n2 ≤ o.size)
    (hne : b1 ≠ b2) (h8a : off1 % 8 = 0) (h8b : off2 % 8 = 0) (ha : off1 + 8 ≤ n1) (hb : off2 + 8 ≤ n2) :
    b1 + BitVec.ofNat 64 off1 ≠ b2 + BitVec.ofNat 64 off2 := by
  intro he
  obtain ⟨o1, ho1, hb1, -, hs1⟩ := h1
  obtain ⟨o2, ho2, hb2, -, hs2⟩ := h2
  have hk1 : o1.HasSlot (off1 / 8) := by unfold Obj.HasSlot; omega
  have hk2 : o2.HasSlot (off2 / 8) := by unfold Obj.HasSlot; omega
  have e1 : o1.cell (off1 / 8) = b1 + BitVec.ofNat 64 off1 := by
    unfold Obj.cell; rw [hb1, show 8 * (off1 / 8) = off1 by omega]
  have e2 : o2.cell (off2 / 8) = b2 + BitVec.ofNat 64 off2 := by
    unfold Obj.cell; rw [hb2, show 8 * (off2 / 8) = off2 by omega]
  obtain ⟨rfl, -⟩ := cell_inj hord hL ho1 ho2 hk1 hk2 (e1.trans (he.trans e2.symm))
  exact hne (hb1.symm.trans hb2)

/-- Two cells `b1 + off1`, `b2 + off2` inside objects `b1`, `b2` differ if the bases or the offsets do. -/
theorem cl_ne {Γ : Gam} {p : Ptrs} (hord : p.Ordered) (hL : Layout guestC p Γ) {b1 b2 : BitVec 64}
    {n1 n2 off1 off2 ty1 ty2 : Nat}
    (h1 : ∃ o ∈ Γ, o.base = b1 ∧ o.ty = ty1 ∧ n1 ≤ o.size) (h2 : ∃ o ∈ Γ, o.base = b2 ∧ o.ty = ty2 ∧ n2 ≤ o.size)
    (hdiff : b1 ≠ b2 ∨ (b1 = b2 ∧ off1 ≠ off2)) (h8a : off1 % 8 = 0) (h8b : off2 % 8 = 0)
    (ha : off1 + 8 ≤ n1) (hb : off2 + 8 ≤ n2) (hn1 : n1 < 2 ^ 64) (hn2 : n2 < 2 ^ 64) :
    b1 + BitVec.ofNat 64 off1 ≠ b2 + BitVec.ofNat 64 off2 := by
  rcases hdiff with hne | ⟨rfl, hne⟩
  · exact cells_ne_cross hord hL h1 h2 hne h8a h8b ha hb
  · exact off_ne b1 hne (by omega) (by omega)

end InitECandidate.Solver.MemSafe.Eb
