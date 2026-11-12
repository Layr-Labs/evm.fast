import InitECandidate.Solver.MemSafe.Eb.Loop4

/-!
# `execute_block`: loop part 5 (the geometry of the block objects and the cells `process_transaction` may write)
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

/-- The cells the facts of the loop read (`iv` entries of `txs` / `rcs` are filled). -/
def Ycl (w t r be0 wd0 : BitVec 64) (nwd0 iv : BitVec 64) (y : BitVec 64) : Prop :=
  (∃ o : Nat, (o = 24 ∨ o = 32 ∨ o = 40 ∨ o = 56 ∨ o = 64 ∨ o = 72 ∨ o = 80) ∧ y = w + BitVec.ofNat 64 o) ∨
  y = be0 + BitVec.ofNat 64 32 ∨
  (∃ o : Nat, o % 8 = 0 ∧ o + 8 ≤ 16 * iv.toNat ∧ (y = t + BitVec.ofNat 64 o ∨ y = r + BitVec.ofNat 64 o)) ∨
  (∃ o : Nat, o % 8 = 0 ∧ o + 8 ≤ 16 * nwd0.toNat ∧ y = wd0 + BitVec.ofNat 64 o)

/-- The objects and their distinct bases. -/
structure Geo (Γ : Gam) (w t r be0 wd0 ntx0 nwd0 : BitVec 64) : Prop where
  ow : ∃ o ∈ Γ, o.base = w ∧ o.ty = tBO ∧ 88 ≤ o.size
  ot : ∃ o ∈ Γ, o.base = t ∧ o.ty = tBOS ∧ 16 * ntx0.toNat + 16 ≤ o.size
  or : ∃ o ∈ Γ, o.base = r ∧ o.ty = tBOS ∧ 16 * ntx0.toNat + 16 ≤ o.size
  obe : ∃ o ∈ Γ, o.base = be0 ∧ o.ty = tBOS ∧ 120 ≤ o.size
  owd : ∃ o ∈ Γ, o.base = wd0 ∧ o.ty = tBOS ∧ 16 * nwd0.toNat ≤ o.size
  wt : w ≠ t
  wr : w ≠ r
  wb : w ≠ be0
  ww : w ≠ wd0
  tr : t ≠ r
  tb : t ≠ be0
  rb : r ≠ be0
  tw : t ≠ wd0
  rw : r ≠ wd0
  bw : be0 ≠ wd0
  bt : ntx0.toNat < 2 ^ 50
  bw' : nwd0.toNat < 2 ^ 50

theorem ptw_canon {w t r iv a : BitVec 64} (hiv : iv.toNat < 2 ^ 50) (h : PtW w t r iv a) :
    (∃ off : Nat, (off = 0 ∨ off = 8 ∨ off = 16 ∨ off = 48) ∧ a = w + BitVec.ofNat 64 off) ∨
    (∃ off : Nat, (off = 16 * iv.toNat ∨ off = 16 * iv.toNat + 8) ∧ a = t + BitVec.ofNat 64 off) ∨
    (∃ off : Nat, (off = 16 * iv.toNat ∨ off = 16 * iv.toNat + 8) ∧ a = r + BitVec.ofNat 64 off) := by
  have m := mul16_ofNat hiv
  have a8 := add8_ofNat (x := 16 * iv.toNat) (by omega)
  rcases h with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact Or.inl ⟨0, Or.inl rfl, by simp⟩
  · exact Or.inl ⟨8, Or.inr (Or.inl rfl), rfl⟩
  · exact Or.inl ⟨16, Or.inr (Or.inr (Or.inl rfl)), rfl⟩
  · exact Or.inl ⟨48, Or.inr (Or.inr (Or.inr rfl)), rfl⟩
  · exact Or.inr (Or.inl ⟨16 * iv.toNat, Or.inl rfl, by show t + iv * BitVec.ofNat 64 16 = _; rw [m]⟩)
  · exact Or.inr (Or.inl ⟨16 * iv.toNat + 8, Or.inr rfl, by show t + iv * BitVec.ofNat 64 16 + BitVec.ofNat 64 8 = _; rw [m, BitVec.add_assoc, a8]⟩)
  · exact Or.inr (Or.inr ⟨16 * iv.toNat, Or.inl rfl, by show r + iv * BitVec.ofNat 64 16 = _; rw [m]⟩)
  · exact Or.inr (Or.inr ⟨16 * iv.toNat + 8, Or.inr rfl, by show r + iv * BitVec.ofNat 64 16 + BitVec.ofNat 64 8 = _; rw [m, BitVec.add_assoc, a8]⟩)

theorem ycl_ne_ptw {Γ : Gam} {p : Ptrs} (hord : p.Ordered) (hL : Layout guestC p Γ)
    {w t r be0 wd0 ntx0 nwd0 iv y a : BitVec 64} (hg : Geo Γ w t r be0 wd0 ntx0 nwd0) (hiv : iv.toNat < ntx0.toNat)
    (hy : Ycl w t r be0 wd0 nwd0 iv y) (ha : PtW w t r iv a) : y ≠ a := by
  have hbt := hg.bt
  have hbw := hg.bw'
  have hiv50 : iv.toNat < 2 ^ 50 := by omega
  intro hya
  have key : ∀ {Y X : BitVec 64} {nY nX oY oX tyY tyX : Nat}, (∃ o ∈ Γ, o.base = Y ∧ o.ty = tyY ∧ nY ≤ o.size) →
      (∃ o ∈ Γ, o.base = X ∧ o.ty = tyX ∧ nX ≤ o.size) → (Y ≠ X ∨ (Y = X ∧ oY ≠ oX)) → oY % 8 = 0 → oX % 8 = 0 →
      oY + 8 ≤ nY → oX + 8 ≤ nX → nY < 2 ^ 64 → nX < 2 ^ 64 → Y + BitVec.ofNat 64 oY = X + BitVec.ofNat 64 oX → False :=
    fun h1 h2 hd h8a h8b ha' hb' hn1 hn2 he => cl_ne hord hL h1 h2 hd h8a h8b ha' hb' hn1 hn2 he
  rcases ptw_canon hiv50 ha with ⟨off, hoff, hao⟩ | ⟨off, hoff, hao⟩ | ⟨off, hoff, hao⟩ <;>
  rcases hy with ⟨o, ho, hyo⟩ | hyo | ⟨o, h8, hle, hyo | hyo⟩ | ⟨o, h8, hle, hyo⟩ <;>
  have he := hyo.symm.trans (hya.trans hao) <;>
  first
  | exact key hg.ow hg.ow (Or.inr ⟨rfl, by omega⟩) (by omega) (by omega) (by omega) (by omega) (by omega) (by omega) he
  | exact key hg.ow hg.ot (Or.inl hg.wt) (by omega) (by omega) (by omega) (by omega) (by omega) (by omega) he
  | exact key hg.ow hg.or (Or.inl hg.wr) (by omega) (by omega) (by omega) (by omega) (by omega) (by omega) he
  | exact key hg.obe hg.ow (Or.inl hg.wb.symm) (by omega) (by omega) (by omega) (by omega) (by omega) (by omega) he
  | exact key hg.obe hg.ot (Or.inl hg.tb.symm) (by omega) (by omega) (by omega) (by omega) (by omega) (by omega) he
  | exact key hg.obe hg.or (Or.inl hg.rb.symm) (by omega) (by omega) (by omega) (by omega) (by omega) (by omega) he
  | exact key hg.ot hg.ow (Or.inl hg.wt.symm) (by omega) (by omega) (by omega) (by omega) (by omega) (by omega) he
  | exact key hg.ot hg.ot (Or.inr ⟨rfl, by omega⟩) (by omega) (by omega) (by omega) (by omega) (by omega) (by omega) he
  | exact key hg.ot hg.or (Or.inl hg.tr) (by omega) (by omega) (by omega) (by omega) (by omega) (by omega) he
  | exact key hg.or hg.ow (Or.inl hg.wr.symm) (by omega) (by omega) (by omega) (by omega) (by omega) (by omega) he
  | exact key hg.or hg.ot (Or.inl hg.tr.symm) (by omega) (by omega) (by omega) (by omega) (by omega) (by omega) he
  | exact key hg.or hg.or (Or.inr ⟨rfl, by omega⟩) (by omega) (by omega) (by omega) (by omega) (by omega) (by omega) he
  | exact key hg.owd hg.ow (Or.inl hg.ww.symm) (by omega) (by omega) (by omega) (by omega) (by omega) (by omega) he
  | exact key hg.owd hg.ot (Or.inl hg.tw.symm) (by omega) (by omega) (by omega) (by omega) (by omega) (by omega) he
  | exact key hg.owd hg.or (Or.inl hg.rw.symm) (by omega) (by omega) (by omega) (by omega) (by omega) (by omega) he

end InitECandidate.Solver.MemSafe.Eb
