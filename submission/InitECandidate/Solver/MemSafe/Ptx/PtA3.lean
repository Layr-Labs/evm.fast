import InitECandidate.Solver.MemSafe.Ptx.PtA2

/-!
# F3d: reading entry cells, packing written cells (stores into `bo`, `TXS`, `RECEIPTS`)
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
open InitECandidate.Solver.MemSafe.AllocImpl (lookup_of_gword)

variable {σ : Type}

section acc
variable {D : BitVec 64 → Option (BitVec 64)} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {Γ : Gam} {u : State σ} {p : Ptrs}

theorem ptRun_ext (h : PtRun D Γ0 s0 p0 Γ u p) : Ext Γ0 Γ := h.2.2.2.1

theorem ptRun_glob (h : PtRun D Γ0 s0 p0 Γ u p) {g : MlS} (hg : ptW.contains g = false) :
    u.globals.lookup g = s0.globals.lookup g := h.2.2.2.2.2.2.2.2.2.2.2.2 g hg

theorem ptRun_rd_keep {E : PtE σ} (h : PtRun D E.Γ0 E.s0 E.p0 Γ u p) (hD : ∀ a, D a ≠ none → E.WSet a)
    {c : BitVec 64} (hc : ProtCell guestC (nst guestSt E.Γ0) c) (hnw : ¬ E.WSet c) :
    rd u.memory c = rd E.s0.memory c := by
  have hd : D c = none := by
    by_contra hne
    exact hnw (hD c hne)
  have := ((h.2.2.2.2.2.2.2.1 c hc).1 hd)
  unfold rd; rw [this]

/-- No fact reads the block cell `c` (a cell of a `Γ` object), except `cellv` facts at other cells. -/
theorem reads_ne {E : PtE σ} {S : FS} (h : PtRun D E.Γ0 E.s0 E.p0 Γ u p) (hL : HoldsAll E.p0 Γ p u S)
    {c : BitVec 64} (hc : InObj Γ c.toNat) (hcv : ∀ a v, S (Fct.cellv a v) → a ≠ c) :
    ∀ f, S f → ∀ x, f.reads x → x ≠ c := by
  intro f hf x hx hxc
  subst hxc
  by_cases hcv' : ∃ a' v', f = Fct.cellv a' v'
  · obtain ⟨a', v', rfl⟩ := hcv'
    obtain rfl : x = a' := hx
    exact hcv _ _ hf rfl
  · obtain ⟨hn, -⟩ := Fct.reads_alloc (hL f hf) (ptRun_ord0 h) (ptRun_ord h) (fun a v e => hcv' ⟨a, v, e⟩) hx
    exact hn hc

/-- The data `hn_stBlkV` needs for a written cell. -/
theorem cell_pack {E : PtE σ} {S : FS} (hP : PtPre E) (h : PtRun D E.Γ0 E.s0 E.p0 Γ u p)
    (hL : HoldsAll E.p0 Γ p u S) {c : BitVec 64} (hW : E.WSet c) (hcv : ∀ a v, S (Fct.cellv a v) → a ≠ c) :
    ∃ (M : Obj) (k : Nat), M ∈ Γ ∧ M.ty ∈ blockTys ∧ M.HasSlot k ∧ (guestC.ty M.ty).slot k = .prot ∧
      c = M.cell k ∧ E.WSet c ∧ (∀ f, S f → ∀ x, f.reads x → x ≠ c) := by
  obtain ⟨M, hM, hMt, k, hk, hp, hc⟩ := wset_cell hP (ptRun_ext h) hW
  obtain ⟨q, hq, hord, hLay, -⟩ := ptRun_G h
  obtain rfl : q = p := Option.some.inj (hq.symm.trans (ptRun_ptrs h))
  exact ⟨M, k, hM, hMt, hk, hp, hc, hW, reads_ne h hL (hc ▸ cell_in hord hLay hM hk) hcv⟩

/-- Entry cells of `bo` that are not written keep their entry value. -/
theorem rd_bo {E : PtE σ} (hP : PtPre E) (h : PtRun D E.Γ0 E.s0 E.p0 Γ u p) (hD : ∀ a, D a ≠ none → E.WSet a)
    {j : Nat} (hj : j < 11) (h0 : j ≠ 0) (h1 : j ≠ 1) (h2 : j ≠ 2) (h6 : j ≠ 6) :
    rd u.memory (E.bo + BitVec.ofNat 64 (8 * j)) = rd E.s0.memory (E.bo + BitVec.ofNat 64 (8 * j)) := by
  obtain ⟨q, hq, hord, hL⟩ := pre_layout hP
  obtain ⟨o, ho, hb, ht⟩ := hP.boObj
  have hmin := (hL.1 o ho).2.2.2.1
  rw [ht] at hmin
  have h88 : (guestC.ty tBO).minSz = 88 := rfl
  rw [h88] at hmin
  have hk : o.HasSlot j := by unfold Obj.HasSlot; omega
  have hmem : o ∈ nst guestSt E.Γ0 := mem_nst.mpr ⟨ho, by rw [ht]; decide⟩
  have hcell : E.bo + BitVec.ofNat 64 (8 * j) = o.cell j := by unfold Obj.cell; rw [hb]
  rw [hcell]
  exact ptRun_rd_keep h hD ⟨o, hmem, j, hk, slot_block (by rw [ht]; simp [blockTys]) j, rfl⟩
    (not_wset_bo hP hj h0 h1 h2 h6 ho hb ht hk)

theorem rd_bo24 {E : PtE σ} (hP : PtPre E) (h : PtRun D E.Γ0 E.s0 E.p0 Γ u p) (hD : ∀ a, D a ≠ none → E.WSet a) :
    rd u.memory (E.bo + BitVec.ofNat 64 24) = E.txs := by
  have := rd_bo hP h hD (j := 3) (by omega) (by omega) (by omega) (by omega) (by omega)
  have e : E.bo + BitVec.ofNat 64 (8 * 3) = E.bo + BitVec.ofNat 64 24 := rfl
  rw [e] at this
  rw [this]; exact hP.htxs

theorem rd_bo32 {E : PtE σ} (hP : PtPre E) (h : PtRun D E.Γ0 E.s0 E.p0 Γ u p) (hD : ∀ a, D a ≠ none → E.WSet a) :
    rd u.memory (E.bo + BitVec.ofNat 64 32) = E.rcs := by
  have := rd_bo hP h hD (j := 4) (by omega) (by omega) (by omega) (by omega) (by omega)
  have e : E.bo + BitVec.ofNat 64 (8 * 4) = E.bo + BitVec.ofNat 64 32 := rfl
  rw [e] at this
  rw [this]; exact hP.hrcs

end acc

end InitECandidate.Solver.MemSafe.Ptx
