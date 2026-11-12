import InitECandidate.Solver.MemSafe.Ptx.PtA1

/-!
# F3d: the block objects and their written cells (`WSet`) under a `PtPre` entry
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

theorem slot_block {t : Nat} (h : t ∈ blockTys) (k : Nat) : (guestC.ty t).slot k = .prot := by
  unfold blockTys at h
  simp only [List.mem_cons, List.mem_nil_iff, or_false] at h
  rcases h with rfl | rfl | rfl
  · rw [show guestC.ty 76 = bosTy from rfl]; unfold TyD.slot; simp [bosTy]
  · rw [show guestC.ty 77 = boTy from rfl]; unfold TyD.slot; simp [boTy]
  · rw [show guestC.ty 78 = mcoTy from rfl]; unfold TyD.slot; simp [mcoTy]

theorem bv_idx16 (idx : BitVec 64) (j : Nat) :
    idx * BitVec.ofNat 64 16 + BitVec.ofNat 64 (8 * j) = BitVec.ofNat 64 (8 * (2 * idx.toNat + j)) := by
  apply BitVec.eq_of_toNat_eq
  simp only [BitVec.toNat_add, BitVec.toNat_mul, BitVec.toNat_ofNat]
  omega

theorem pre_layout {E : PtE σ} (hP : PtPre E) : ∃ q, ptrsOf E.s0 = some q ∧ q.Ordered ∧ Layout guestC q E.Γ0 := by
  obtain ⟨q, hq, hord, hL, -⟩ := hP.hG
  exact ⟨q, hq, hord, hL⟩

/-- Every written cell is a `prot` cell of a block object of the current typing. -/
theorem wset_cell {E : PtE σ} (hP : PtPre E) {Γ : Gam} (hx : Ext E.Γ0 Γ) {c : BitVec 64} (hc : E.WSet c) :
    ∃ M ∈ Γ, M.ty ∈ blockTys ∧ ∃ k, M.HasSlot k ∧ (guestC.ty M.ty).slot k = .prot ∧ c = M.cell k := by
  obtain ⟨q, hq, hord, hL⟩ := pre_layout hP
  have bo_case : ∀ j : Nat, j < 11 → ∃ M ∈ Γ, M.ty ∈ blockTys ∧ M.base = E.bo ∧ M.HasSlot j := by
    intro j hj
    obtain ⟨o, ho, hb, ht⟩ := hP.boObj
    obtain ⟨o', ho', hb', ht', hs'⟩ := hx o ho
    have hmin := (hL.1 o ho).2.2.2.1
    rw [ht] at hmin
    have h88 : (guestC.ty tBO).minSz = 88 := rfl
    rw [h88] at hmin
    refine ⟨o', ho', by rw [ht', ht]; simp [blockTys], by rw [hb', hb], ?_⟩
    unfold Obj.HasSlot; omega
  have arr_case : ∀ A : BitVec 64, (∃ o ∈ E.Γ0, o.base = A ∧ o.ty = tBOS ∧ E.idx.toNat * 16 + 16 ≤ o.size) →
      ∀ j : Nat, j < 2 → ∃ M ∈ Γ, M.ty ∈ blockTys ∧ ∃ k, M.HasSlot k ∧ (guestC.ty M.ty).slot k = .prot ∧
        A + E.idx * BitVec.ofNat 64 16 + BitVec.ofNat 64 (8 * j) = M.cell k := by
    intro A ⟨o, ho, hb, ht, hsz⟩ j hj
    obtain ⟨o', ho', hb', ht', hs'⟩ := hx o ho
    have hMt : o'.ty ∈ blockTys := by rw [ht', ht]; simp [blockTys]
    refine ⟨o', ho', hMt, 2 * E.idx.toNat + j, ?_, slot_block hMt _, ?_⟩
    · unfold Obj.HasSlot; omega
    · unfold Obj.cell
      rw [hb', hb, BitVec.add_assoc, bv_idx16]
  rcases hc with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · obtain ⟨M, hM, hMt, hMb, hk⟩ := bo_case 0 (by omega)
    exact ⟨M, hM, hMt, 0, hk, slot_block hMt 0, by unfold Obj.cell; rw [hMb]; simp⟩
  · obtain ⟨M, hM, hMt, hMb, hk⟩ := bo_case 1 (by omega)
    exact ⟨M, hM, hMt, 1, hk, slot_block hMt 1, by unfold Obj.cell; rw [hMb]; rfl⟩
  · obtain ⟨M, hM, hMt, hMb, hk⟩ := bo_case 2 (by omega)
    exact ⟨M, hM, hMt, 2, hk, slot_block hMt 2, by unfold Obj.cell; rw [hMb]; rfl⟩
  · obtain ⟨M, hM, hMt, hMb, hk⟩ := bo_case 6 (by omega)
    exact ⟨M, hM, hMt, 6, hk, slot_block hMt 6, by unfold Obj.cell; rw [hMb]; rfl⟩
  · obtain ⟨M, hM, hMt, k, hk, hp, he⟩ := arr_case E.txs hP.txsObj 0 (by omega)
    exact ⟨M, hM, hMt, k, hk, hp, by rw [← he]; simp⟩
  · obtain ⟨M, hM, hMt, k, hk, hp, he⟩ := arr_case E.txs hP.txsObj 1 (by omega)
    exact ⟨M, hM, hMt, k, hk, hp, by rw [← he]; rfl⟩
  · obtain ⟨M, hM, hMt, k, hk, hp, he⟩ := arr_case E.rcs hP.rcsObj 0 (by omega)
    exact ⟨M, hM, hMt, k, hk, hp, by rw [← he]; simp⟩
  · obtain ⟨M, hM, hMt, k, hk, hp, he⟩ := arr_case E.rcs hP.rcsObj 1 (by omega)
    exact ⟨M, hM, hMt, k, hk, hp, by rw [← he]; rfl⟩

theorem arr_cell {E : PtE σ} {Γ : Gam} (hx : Ext E.Γ0 Γ) (A : BitVec 64)
    (h : ∃ o ∈ E.Γ0, o.base = A ∧ o.ty = tBOS ∧ E.idx.toNat * 16 + 16 ≤ o.size) (j : Nat) (hj : j < 2) :
    ∃ M ∈ Γ, M.ty = tBOS ∧ ∃ k, M.HasSlot k ∧ A + E.idx * BitVec.ofNat 64 16 + BitVec.ofNat 64 (8 * j) = M.cell k := by
  obtain ⟨o, ho, hb, ht, hsz⟩ := h
  obtain ⟨o', ho', hb', ht', hs'⟩ := hx o ho
  refine ⟨o', ho', by rw [ht', ht], 2 * E.idx.toNat + j, ?_, ?_⟩
  · unfold Obj.HasSlot; omega
  · unfold Obj.cell
    rw [hb', hb, BitVec.add_assoc, bv_idx16]

theorem cell_ne_ty {Γ : Gam} {q : Ptrs} (hord : q.Ordered) (hL : Layout guestC q Γ) {o1 o2 : Obj} (h1 : o1 ∈ Γ)
    (h2 : o2 ∈ Γ) (hty : o1.ty ≠ o2.ty) {k1 k2 : Nat} (hk1 : o1.HasSlot k1) (hk2 : o2.HasSlot k2) :
    o1.cell k1 ≠ o2.cell k2 := fun h => hty (by obtain ⟨rfl, -⟩ := cell_inj hord hL h1 h2 hk1 hk2 h; rfl)

theorem cell_ne_k {Γ : Gam} {q : Ptrs} (hord : q.Ordered) (hL : Layout guestC q Γ) {o : Obj} (h1 : o ∈ Γ)
    {k1 k2 : Nat} (hk1 : o.HasSlot k1) (hk2 : o.HasSlot k2) (hne : k1 ≠ k2) : o.cell k1 ≠ o.cell k2 :=
  fun h => hne (cell_inj hord hL h1 h1 hk1 hk2 h).2

/-- A `bo` cell outside the written ones is not a written cell. -/
theorem not_wset_bo {E : PtE σ} (hP : PtPre E) {j : Nat} (hj : j < 11) (h0 : j ≠ 0) (h1 : j ≠ 1) (h2 : j ≠ 2)
    (h6 : j ≠ 6) {o : Obj} (ho : o ∈ E.Γ0) (hb : o.base = E.bo) (ht : o.ty = tBO) (hk : o.HasSlot j) :
    ¬ E.WSet (o.cell j) := by
  obtain ⟨q, hq, hord, hL⟩ := pre_layout hP
  have hmin := (hL.1 o ho).2.2.2.1
  rw [ht] at hmin
  have h88 : (guestC.ty tBO).minSz = 88 := rfl
  rw [h88] at hmin
  have hs : ∀ j', j' < 11 → o.HasSlot j' := fun j' hj' => by unfold Obj.HasSlot; omega
  have hcell : ∀ j', E.bo + BitVec.ofNat 64 (8 * j') = o.cell j' := fun j' => by unfold Obj.cell; rw [hb]
  have e8 : E.bo + 8 = o.cell 1 := (hcell 1)
  have e16 : E.bo + 16 = o.cell 2 := (hcell 2)
  have e48 : E.bo + 48 = o.cell 6 := (hcell 6)
  have e0 : E.bo = o.cell 0 := by rw [← hcell 0]; simp
  have arr : ∀ A, (∃ o ∈ E.Γ0, o.base = A ∧ o.ty = tBOS ∧ E.idx.toNat * 16 + 16 ≤ o.size) → ∀ j', j' < 2 →
      o.cell j ≠ A + E.idx * BitVec.ofNat 64 16 + BitVec.ofNat 64 (8 * j') := by
    intro A hA j' hj'
    obtain ⟨M, hM, hMt, k, hMk, he⟩ := arr_cell (fun o ho => ⟨o, ho, rfl, rfl, le_refl _⟩ : Ext E.Γ0 E.Γ0) A hA j' hj'
    rw [he]
    exact cell_ne_ty hord hL ho hM (by rw [ht, hMt]; decide) hk hMk
  rintro (h | h | h | h | h | h | h | h)
  · rw [e0] at h; exact cell_ne_k hord hL ho hk (hs 0 (by omega)) h0 h
  · rw [e8] at h; exact cell_ne_k hord hL ho hk (hs 1 (by omega)) h1 h
  · rw [e16] at h; exact cell_ne_k hord hL ho hk (hs 2 (by omega)) h2 h
  · rw [e48] at h; exact cell_ne_k hord hL ho hk (hs 6 (by omega)) h6 h
  · exact arr E.txs hP.txsObj 0 (by omega) (by rw [h]; simp)
  · exact arr E.txs hP.txsObj 1 (by omega) (by rw [h]; rfl)
  · exact arr E.rcs hP.rcsObj 0 (by omega) (by rw [h]; simp)
  · exact arr E.rcs hP.rcsObj 1 (by omega) (by rw [h]; rfl)

end InitECandidate.Solver.MemSafe.Ptx
