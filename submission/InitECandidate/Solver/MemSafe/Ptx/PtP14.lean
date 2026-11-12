import InitECandidate.Solver.MemSafe.Ptx.PtP13

/-!
# F3f: `PtPreB`, the entry facts the tail needs (without `txbuf` / `beCoin`), and copies of the block-cell lemmas

After `process_message_call` the transaction record's cells are no longer known (only block objects keep their
cells), so the tail is proved for an entry `E2` with this weaker precondition.
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
variable {D : BitVec 64 → Option (BitVec 64)} {Γ : Gam} {u : State σ} {p : Ptrs}

structure PtPreB (E : PtE σ) : Prop where
  hG : G guestC (HR σ) E.Γ0 E.s0
  hp : ∃ q, ptrsOf E.s0 = some q ∧ E.p0 = gp0 q
  hJ : JrNZ E.s0
  hev : ∃ e, gword E.s0 nmEv = some e ∧ e.toNat < nullMax
  hcc : ∃ c, gword E.s0 nmCC = some c ∧ c.toNat < nullMax
  tx : ∃ o ∈ E.Γ0, o.base = E.tx ∧ o.ty = tTX
  hbo : gword E.s0 (nm "bo") = some E.bo
  boObj : ∃ o ∈ E.Γ0, o.base = E.bo ∧ o.ty = tBO
  htxs : rd E.s0.memory (E.bo + 24) = E.txs
  txsObj : ∃ o ∈ E.Γ0, o.base = E.txs ∧ o.ty = tBOS ∧ E.idx.toNat * 16 + 16 ≤ o.size
  hrcs : rd E.s0.memory (E.bo + 32) = E.rcs
  rcsObj : ∃ o ∈ E.Γ0, o.base = E.rcs ∧ o.ty = tBOS ∧ E.idx.toNat * 16 + 16 ≤ o.size
  logsObj : ∃ o ∈ E.Γ0, o.base = rd E.s0.memory (E.bo + 40) ∧ o.ty = tLSTh
  rlogsObj : ∃ o ∈ E.Γ0, o.base = rd E.s0.memory (E.bo + 72) ∧ o.ty = tLSTh
  hbe : gword E.s0 (nm "be") = some E.be
  beObj : ∃ o ∈ E.Γ0, o.base = E.be ∧ o.ty = tBOS ∧ 120 ≤ o.size
  gbs : GObj E.Γ0 E.s0 (nm "bs") tBS
  gba : GObj E.Γ0 E.s0 (nm "bal_accounts") tHTd20
  gbk : GObj E.Γ0 E.s0 (nm "bal_key_buf") tB64
  gbi : GObj E.Γ0 E.s0 (nm "bal_idx_accts") tHTh28
  gbs2 : GObj E.Γ0 E.s0 (nm "bal_idx_stor") tHTh60
  gsk : GObj E.Γ0 E.s0 (nm "sk_buf") tB64
  dis1 : E.be ≠ E.txs
  dis2 : E.be ≠ E.rcs
  dis3 : E.txs ≠ E.rcs

/-- The entry facts of the original walk give `PtPreB`. -/
def PtPreX.toB {E : PtE σ} (h : PtPreX E) : PtPreB E where
  hG := h.hG
  hp := h.hp
  hJ := h.hJ
  hev := h.hev
  hcc := h.hcc
  tx := h.tx
  hbo := h.hbo
  boObj := h.boObj
  htxs := h.htxs
  txsObj := h.txsObj
  hrcs := h.hrcs
  rcsObj := h.rcsObj
  logsObj := h.logsObj
  rlogsObj := h.rlogsObj
  hbe := h.hbe
  beObj := h.beObj
  gbs := h.gbs
  gba := h.gba
  gbk := h.gbk
  gbi := h.gbi
  gbs2 := h.gbs2
  gsk := h.gsk
  dis1 := h.dis1
  dis2 := h.dis2
  dis3 := h.dis3

theorem pre_layoutB {E : PtE σ} (hP : PtPreB E) : ∃ q, ptrsOf E.s0 = some q ∧ q.Ordered ∧ Layout guestC q E.Γ0 := by
  obtain ⟨q, hq, hord, hL, -⟩ := hP.hG
  exact ⟨q, hq, hord, hL⟩

/-- Every written cell is a `prot` cell of a block object of the current typing. -/

theorem wset_cellB {E : PtE σ} (hP : PtPreB E) {Γ : Gam} (hx : Ext E.Γ0 Γ) {c : BitVec 64} (hc : E.WSet c) :
    ∃ M ∈ Γ, M.ty ∈ blockTys ∧ ∃ k, M.HasSlot k ∧ (guestC.ty M.ty).slot k = .prot ∧ c = M.cell k := by
  obtain ⟨q, hq, hord, hL⟩ := pre_layoutB hP
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

theorem not_wset_boB {E : PtE σ} (hP : PtPreB E) {j : Nat} (hj : j < 11) (h0 : j ≠ 0) (h1 : j ≠ 1) (h2 : j ≠ 2)
    (h6 : j ≠ 6) {o : Obj} (ho : o ∈ E.Γ0) (hb : o.base = E.bo) (ht : o.ty = tBO) (hk : o.HasSlot j) :
    ¬ E.WSet (o.cell j) := by
  obtain ⟨q, hq, hord, hL⟩ := pre_layoutB hP
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

theorem cell_packB {E : PtE σ} {S : FS} (hP : PtPreB E) (h : PtRun D E.Γ0 E.s0 E.p0 Γ u p)
    (hL : HoldsAll E.p0 Γ p u S) {c : BitVec 64} (hW : E.WSet c) (hcv : ∀ a v, S (Fct.cellv a v) → a ≠ c) :
    ∃ (M : Obj) (k : Nat), M ∈ Γ ∧ M.ty ∈ blockTys ∧ M.HasSlot k ∧ (guestC.ty M.ty).slot k = .prot ∧
      c = M.cell k ∧ E.WSet c ∧ (∀ f, S f → ∀ x, f.reads x → x ≠ c) := by
  obtain ⟨M, hM, hMt, k, hk, hp, hc⟩ := wset_cellB hP (ptRun_ext h) hW
  obtain ⟨q, hq, hord, hLay, -⟩ := ptRun_G h
  obtain rfl : q = p := Option.some.inj (hq.symm.trans (ptRun_ptrs h))
  exact ⟨M, k, hM, hMt, hk, hp, hc, hW, reads_ne h hL (hc ▸ cell_in hord hLay hM hk) hcv⟩

/-- Entry cells of `bo` that are not written keep their entry value. -/

theorem rd_boB {E : PtE σ} (hP : PtPreB E) (h : PtRun D E.Γ0 E.s0 E.p0 Γ u p) (hD : ∀ a, D a ≠ none → E.WSet a)
    {j : Nat} (hj : j < 11) (h0 : j ≠ 0) (h1 : j ≠ 1) (h2 : j ≠ 2) (h6 : j ≠ 6) :
    rd u.memory (E.bo + BitVec.ofNat 64 (8 * j)) = rd E.s0.memory (E.bo + BitVec.ofNat 64 (8 * j)) := by
  obtain ⟨q, hq, hord, hL⟩ := pre_layoutB hP
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
    (not_wset_boB hP hj h0 h1 h2 h6 ho hb ht hk)

theorem rd_bo24B {E : PtE σ} (hP : PtPreB E) (h : PtRun D E.Γ0 E.s0 E.p0 Γ u p) (hD : ∀ a, D a ≠ none → E.WSet a) :
    rd u.memory (E.bo + BitVec.ofNat 64 24) = E.txs := by
  have := rd_boB hP h hD (j := 3) (by omega) (by omega) (by omega) (by omega) (by omega)
  have e : E.bo + BitVec.ofNat 64 (8 * 3) = E.bo + BitVec.ofNat 64 24 := rfl
  rw [e] at this
  rw [this]; exact hP.htxs

theorem rd_bo32B {E : PtE σ} (hP : PtPreB E) (h : PtRun D E.Γ0 E.s0 E.p0 Γ u p) (hD : ∀ a, D a ≠ none → E.WSet a) :
    rd u.memory (E.bo + BitVec.ofNat 64 32) = E.rcs := by
  have := rd_boB hP h hD (j := 4) (by omega) (by omega) (by omega) (by omega) (by omega)
  have e : E.bo + BitVec.ofNat 64 (8 * 4) = E.bo + BitVec.ofNat 64 32 := rfl
  rw [e] at this
  rw [this]; exact hP.hrcs

theorem not_wset_beB {E : PtE σ} (hP : PtPreB E) (hd1 : E.be ≠ E.txs) (hd2 : E.be ≠ E.rcs) {o : Obj} (ho : o ∈ E.Γ0)
    (hb : o.base = E.be) (ht : o.ty = tBOS) {k : Nat} (hk : o.HasSlot k) : ¬ E.WSet (o.cell k) := by
  obtain ⟨q, hq, hord, hL⟩ := pre_layoutB hP
  obtain ⟨ob, hob, hobb, hobt⟩ := hP.boObj
  have hmin := (hL.1 ob hob).2.2.2.1
  rw [hobt] at hmin
  have h88 : (guestC.ty tBO).minSz = 88 := rfl
  rw [h88] at hmin
  have hbo : ∀ j : Nat, j < 11 → ob.HasSlot j := fun j hj => by unfold Obj.HasSlot; omega
  have hcell : ∀ j', E.bo + BitVec.ofNat 64 (8 * j') = ob.cell j' := fun j' => by unfold Obj.cell; rw [hobb]
  have arr : ∀ A, (∃ o ∈ E.Γ0, o.base = A ∧ o.ty = tBOS ∧ E.idx.toNat * 16 + 16 ≤ o.size) → A ≠ E.be →
      ∀ j', j' < 2 → o.cell k ≠ A + E.idx * BitVec.ofNat 64 16 + BitVec.ofNat 64 (8 * j') := by
    intro A hA hne j' hj'
    obtain ⟨oA, hoA, hbA, htA, hsz⟩ := hA
    have hkA : oA.HasSlot (2 * E.idx.toNat + j') := by unfold Obj.HasSlot; omega
    have he : A + E.idx * BitVec.ofNat 64 16 + BitVec.ofNat 64 (8 * j') = oA.cell (2 * E.idx.toNat + j') := by
      unfold Obj.cell; rw [hbA, BitVec.add_assoc, bv_idx16]
    rw [he]
    intro hc
    obtain ⟨hMo, -⟩ := cell_inj hord hL ho hoA hk hkA hc
    subst hMo
    exact hne (hbA.symm.trans hb)
  rintro (h | h | h | h | h | h | h | h)
  · have e : E.bo = ob.cell 0 := by rw [← hcell 0]; simp
    rw [e] at h
    exact cell_ne_ty hord hL ho hob (by rw [ht, hobt]; decide) hk (hbo 0 (by omega)) h
  · have e : E.bo + 8 = ob.cell 1 := hcell 1
    rw [e] at h
    exact cell_ne_ty hord hL ho hob (by rw [ht, hobt]; decide) hk (hbo 1 (by omega)) h
  · have e : E.bo + 16 = ob.cell 2 := hcell 2
    rw [e] at h
    exact cell_ne_ty hord hL ho hob (by rw [ht, hobt]; decide) hk (hbo 2 (by omega)) h
  · have e : E.bo + 48 = ob.cell 6 := hcell 6
    rw [e] at h
    exact cell_ne_ty hord hL ho hob (by rw [ht, hobt]; decide) hk (hbo 6 (by omega)) h
  · exact arr E.txs hP.txsObj (Ne.symm hd1) 0 (by omega) (by rw [h]; simp)
  · exact arr E.txs hP.txsObj (Ne.symm hd1) 1 (by omega) (by rw [h]; rfl)
  · exact arr E.rcs hP.rcsObj (Ne.symm hd2) 0 (by omega) (by rw [h]; simp)
  · exact arr E.rcs hP.rcsObj (Ne.symm hd2) 1 (by omega) (by rw [h]; rfl)

theorem be_lookupB {E : PtE σ} (hP : PtPreB E) {D Γ u p} (h : PtRun D E.Γ0 E.s0 E.p0 Γ u p) :
    u.globals.lookup (nm "be") = some (.val (.word E.be)) := by
  rw [ptRun_glob h (by decide)]
  exact lookup_of_gword hP.hbe

/-- A cell of the block environment keeps its entry value. -/

theorem rd_beB {E : PtE σ} (hP : PtPreB E) {D Γ u p} (h : PtRun D E.Γ0 E.s0 E.p0 Γ u p)
    (hD : ∀ a, D a ≠ none → E.WSet a) {off : Nat} (ho8 : off % 8 = 0) (hoN : off + 8 ≤ 120) :
    rd u.memory (E.be + BitVec.ofNat 64 off) = rd E.s0.memory (E.be + BitVec.ofNat 64 off) := by
  obtain ⟨o, ho, hb, ht, hs⟩ := hP.beObj
  have hk : o.HasSlot (off / 8) := by unfold Obj.HasSlot; omega
  have hcell : E.be + BitVec.ofNat 64 off = o.cell (off / 8) := by
    unfold Obj.cell; rw [hb]; congr 2; omega
  rw [hcell]
  have hmem : o ∈ nst guestSt E.Γ0 := mem_nst.mpr ⟨ho, by rw [ht]; decide⟩
  exact ptRun_rd_keep h hD ⟨o, hmem, off / 8, hk, slot_block (by rw [ht]; simp [blockTys]) _, rfl⟩
    (not_wset_beB hP hP.dis1 hP.dis2 ho hb ht hk)

theorem bo_lookupB {E : PtE σ} (hP : PtPreB E) {D Γ u p} (h : PtRun D E.Γ0 E.s0 E.p0 Γ u p) :
    u.globals.lookup (nm "bo") = some (.val (.word E.bo)) := by
  rw [ptRun_glob h (by decide)]
  exact lookup_of_gword hP.hbo

end InitECandidate.Solver.MemSafe.Ptx
