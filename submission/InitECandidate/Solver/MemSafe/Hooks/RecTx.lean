import InitECandidate.Solver.MemSafe.Hooks.RecDefs
import InitECandidate.Solver.MemSafe.Hooks.RecIds

/-!
# The transaction record entry `txD`

A decoded transaction (`decode_transaction_rlp`) is a `Γ` object `o` of type `tTX` (400 bytes,
all `prot`), its access-list records a `tACC` object of `24 · ACC_N` bytes and its
authorizations a `tAUTH` object of `120 · AUTH_N` bytes (when the counts are not 0). The record
invariant `TxW` (what `tx_encode_generic` needs, see `research/notes/records-status.md`):

* `400 ≤ o.size`, `o.lo + 400 ≤ heapEnd`;
* **`TxLen`**: `655 + DATA_N + Σ_{i < ACC_N} (39 + 33 · ns_i) + 147 · AUTH_N + 33 · BH_N < 2^63`
  (integers; `ns_i` = `ACC_SLOTS_N` of access record `i`). This bounds the exact value of
  `tx_encode_bound`'s formula (`access_list_payload_len ≤ Σ (39 + 33 ns_i)`,
  `auth_list_payload_len ≤ 147 · AUTH_N`), so it does not wrap;
* `SubArr`: a non-zero `ACC_N` / `AUTH_N` names a heap `Γ` object of the record type and size
  (so it is allocated, cannot alias a fresh output buffer, and is `prot`).

Footprint (`txFp`): the record slots `DATA_N` 25, `ACCESS_LIST` 26, `ACCESS_LIST_N` 27,
`BLOB_HASHES_N` 33, `AUTHORIZATIONS` 34, `AUTHORIZATIONS_N` 35 and the `ACC_SLOTS_N` slot of
each access record. Dependencies (`txRef`): the two sub-arrays.

Field offsets (tx.pnk): `TX_DATA_N` 200, `TX_ACCESS_LIST` 208, `TX_ACCESS_LIST_N` 216,
`TX_BLOB_HASHES_N` 264, `TX_AUTHORIZATIONS` 272, `TX_AUTHORIZATIONS_N` 280; `ACC_SLOTS_N` 16.
-/

namespace InitECandidate.Solver.MemSafe.Hooks
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames
open InitECandidate.Solver.Spec

/-! ## Fields -/

/-- Slot `k` of the record `o`. -/
def txF (m : Mem) (o : Obj) (k : Nat) : BitVec 64 := rd m (o.cell k)

/-- `ACC_SLOTS_N` of access record `i` of the array at `P`. -/
def accNs (m : Mem) (P : BitVec 64) (i : Nat) : Nat := (rd m (P + BitVec.ofNat 64 (24 * i + 16))).toNat

/-- `Σ_{i < n} (39 + 33 · ns_i)`: the bound on `access_list_payload_len`. -/
def accSum (m : Mem) (P : BitVec 64) : Nat → Nat
  | 0 => 0
  | n + 1 => accSum m P n + (39 + 33 * accNs m P n)

/-- **`TxLen`**: the encode bound does not wrap. -/
def TxLen (m : Mem) (o : Obj) : Prop :=
  655 + (txF m o 25).toNat + accSum m (txF m o 26) (txF m o 27).toNat + 147 * (txF m o 35).toNat +
    33 * (txF m o 33).toNat < 2 ^ 63 ∧ (txF m o 25).toNat < 2 ^ 32

/-- A non-zero count `n` names a heap `Γ` object of type `t` of at least `sz · n` bytes. -/
def SubArr (Γ : Gam) (P : BitVec 64) (n t sz : Nat) : Prop :=
  n = 0 ∨ ∃ x ∈ Γ, x.base = P ∧ x.ty = t ∧ sz * n ≤ x.size ∧ P.toNat + sz * n ≤ heapEnd

/-- **The transaction record invariant.** -/
def TxW (Γ : Gam) (m : Mem) (o : Obj) : Prop :=
  400 ≤ o.size ∧ o.lo + 400 ≤ heapEnd ∧ TxLen m o ∧ SubArr Γ (txF m o 26) (txF m o 27).toNat tACC 24 ∧
    SubArr Γ (txF m o 34) (txF m o 35).toNat tAUTH 120

def txSlots : List Nat := [25, 26, 27, 33, 34, 35]

/-- The cells `TxW` reads. -/
def txFp (_Γ : Gam) (m : Mem) (o : Obj) (a : BitVec 64) : Prop :=
  (∃ k ∈ txSlots, a = o.cell k) ∨
    ∃ i, i < (txF m o 27).toNat ∧ a = txF m o 26 + BitVec.ofNat 64 (24 * i + 16)

/-- `TxW` depends on its two sub-arrays (when their counts are not 0). -/
def txRef (_Γ : Gam) (m : Mem) (o : Obj) (b : BitVec 64) : Prop :=
  ((txF m o 27).toNat ≠ 0 ∧ b = txF m o 26) ∨ ((txF m o 35).toNat ≠ 0 ∧ b = txF m o 34)

/-! ## Type facts -/

theorem recTy_tTX : RecTyOK tTX := by decide
theorem recTy_tACC : RecTyOK tACC := by decide
theorem recTy_tAUTH : RecTyOK tAUTH := by decide

theorem tx_prot (k : Nat) : (guestC.ty tTX).slot k = .prot := recIds_prot tTX (by simp) k
theorem acc_prot (k : Nat) : (guestC.ty tACC).slot k = .prot := recIds_prot tACC (by simp) k
theorem auth_prot (k : Nat) : (guestC.ty tAUTH).slot k = .prot := recIds_prot tAUTH (by simp) k

theorem tx_heap : (guestC.ty tTX).region = .heap := recIds_region tTX (by simp)
theorem acc_heap : (guestC.ty tACC).region = .heap := recIds_region tACC (by simp)
theorem auth_heap : (guestC.ty tAUTH).region = .heap := recIds_region tAUTH (by simp)

theorem heapEnd_lt : heapEnd < 2 ^ 64 := by decide

/-! ## Cells -/

/-- Two objects of `Γ` with the same base are equal. -/
theorem gam_base_eq {Γ : Gam} (hG : GamOK Γ) {x y : Obj} (hx : x ∈ Γ) (hy : y ∈ Γ)
    (hb : x.base = y.base) : x = y := by
  by_contra hne
  have h1 := (hG.1 x hx).2.2.1
  have h2 := (hG.1 y hy).2.2.1
  have hl : x.lo = y.lo := by unfold Obj.lo; rw [hb]
  rcases hG.2 x hx y hy hne with h | h <;> simp only [Obj.hi, Obj.lo] at h hl <;> omega

theorem txSlots_le {k : Nat} (h : k ∈ txSlots) : k ≤ 35 := by
  simp only [txSlots, List.mem_cons, List.not_mem_nil, or_false] at h
  omega

theorem acc_cell (x : Obj) (i : Nat) :
    x.cell (3 * i + 2) = x.base + BitVec.ofNat 64 (24 * i + 16) := by
  unfold Obj.cell
  congr 2
  omega

/-- A cell of a `TxW` sub-array. -/
theorem sub_cell {Γ : Gam} {P : BitVec 64} {n t sz : Nat} (h : SubArr Γ P n t sz) (hn : n ≠ 0)
    {k : Nat} (hk : 8 * k + 8 ≤ sz * n) :
    ∃ x ∈ Γ, x.base = P ∧ x.ty = t ∧ x.HasSlot k ∧ (x.cell k).toNat = x.lo + 8 * k ∧
      x.lo ≤ (x.cell k).toNat ∧ (x.cell k).toNat < x.hi := by
  rcases h with h | ⟨x, hx, hxb, hxt, hxs, hxe⟩
  · exact absurd h hn
  have hlo : x.lo = P.toNat := by unfold Obj.lo; rw [hxb]
  have e := cellN (x := x) (k := k) (by have := heapEnd_lt; omega)
  refine ⟨x, hx, hxb, hxt, by unfold Obj.HasSlot; omega, e, by omega, ?_⟩
  unfold Obj.hi; rw [e]; unfold Obj.lo at hlo ⊢; omega

theorem tx_cells (Γ : Gam) (m : Mem) (o : Obj) (a : BitVec 64) (_hG : GamOK Γ) (ho : o ∈ Γ)
    (ht : o.ty = tTX) (hw : TxW Γ m o) (hf : txFp Γ m o a) :
    ∃ x ∈ Γ, RecTyOK x.ty ∧ ∃ k, x.HasSlot k ∧ (guestC.ty x.ty).slot k = .prot ∧ a = x.cell k ∧
      x.lo ≤ a.toNat ∧ a.toNat < x.hi := by
  obtain ⟨hs, hlo, -, hacc, -⟩ := hw
  rcases hf with ⟨k, hk, rfl⟩ | ⟨i, hi, rfl⟩
  · have hk35 := txSlots_le hk
    have e := cellN (x := o) (k := k) (by have := heapEnd_lt; omega)
    refine ⟨o, ho, ht ▸ recTy_tTX, k, by unfold Obj.HasSlot; omega, by rw [ht]; exact tx_prot k,
      rfl, by omega, ?_⟩
    rw [e]; unfold Obj.hi; unfold Obj.lo at hlo ⊢; omega
  · obtain ⟨x, hx, hxb, hxt, hks, -, h1, h2⟩ := sub_cell hacc (by omega) (k := 3 * i + 2) (by omega)
    have ea : txF m o 26 + BitVec.ofNat 64 (24 * i + 16) = x.cell (3 * i + 2) := by
      rw [acc_cell, hxb]
    rw [ea]
    exact ⟨x, hx, hxt ▸ recTy_tACC, 3 * i + 2, hks, by rw [hxt]; exact acc_prot _, rfl, h1, h2⟩

/-! ## Frame -/

theorem rd_congr {m m' : Mem} {a : BitVec 64} (h : m' a = m a) : rd m' a = rd m a := by
  unfold rd; rw [h]

theorem accSum_congr {m m' : Mem} {P : BitVec 64} {N : Nat}
    (h : ∀ i, i < N → m' (P + BitVec.ofNat 64 (24 * i + 16)) = m (P + BitVec.ofNat 64 (24 * i + 16))) :
    ∀ n, n ≤ N → accSum m' P n = accSum m P n
  | 0, _ => rfl
  | n + 1, hn => by
    simp only [accSum, accNs]
    rw [accSum_congr h n (by omega), rd_congr (h n (by omega))]

theorem tx_frame (Γ : Gam) (m m' : Mem) (o : Obj) (_ht : o.ty = tTX) (hw : TxW Γ m o)
    (hfp : ∀ a, txFp Γ m o a → m' a = m a) : TxW Γ m' o ∧ txFp Γ m' o = txFp Γ m o := by
  have ek : ∀ k ∈ txSlots, txF m' o k = txF m o k := fun k hk =>
    rd_congr (hfp _ (Or.inl ⟨k, hk, rfl⟩))
  have e25 := ek 25 (by decide)
  have e26 := ek 26 (by decide)
  have e27 := ek 27 (by decide)
  have e33 := ek 33 (by decide)
  have e34 := ek 34 (by decide)
  have e35 := ek 35 (by decide)
  have eS := accSum_congr (m := m) (m' := m') (P := txF m o 26) (N := (txF m o 27).toNat)
    (fun i hi => hfp _ (Or.inr ⟨i, hi, rfl⟩)) _ le_rfl
  have hfpe : txFp Γ m' o = txFp Γ m o := by
    funext a
    unfold txFp
    rw [e26, e27]
  refine ⟨?_, hfpe⟩
  obtain ⟨h1, h2, h3, h4, h5⟩ := hw
  refine ⟨h1, h2, ?_, ?_, ?_⟩
  · unfold TxLen at h3 ⊢
    rw [e25, e26, e27, e33, e35, eS]
    exact h3
  · rw [e26, e27]; exact h4
  · rw [e34, e35]; exact h5

/-! ## Extension, shrinking, dependencies -/

theorem txF_base {m : Mem} {o o' : Obj} (hb : o'.base = o.base) (k : Nat) :
    txF m o' k = txF m o k := by
  unfold txF Obj.cell; rw [hb]

theorem subArr_ext {Γ Γ' : Gam} (hx : Ext Γ Γ') {P : BitVec 64} {n t sz : Nat}
    (h : SubArr Γ P n t sz) : SubArr Γ' P n t sz := by
  rcases h with h | ⟨x, hxΓ, hxb, hxt, hxs, hxe⟩
  · exact Or.inl h
  · obtain ⟨x', hx', hxb', hxt', hxs'⟩ := hx x hxΓ
    exact Or.inr ⟨x', hx', hxb'.trans hxb, hxt'.trans hxt, by omega, hxe⟩

theorem tx_mono (Γ Γ' : Gam) (m : Mem) (p : Ptrs) (o o' : Obj) (hL : Layout guestC p Γ')
    (hx : Ext Γ Γ') (ho : o ∈ Γ) (ho' : o' ∈ Γ') (hb : o'.base = o.base) (_ht' : o'.ty = o.ty)
    (_ht : o.ty = tTX) (hw : TxW Γ m o) : TxW Γ' m o' := by
  obtain ⟨h1, h2, h3, h4, h5⟩ := hw
  obtain ⟨o'', ho'', hb'', -, hs''⟩ := hx o ho
  have e : o'' = o' := gam_base_eq (gamOK_of_layout hL) ho'' ho' (hb''.trans hb.symm)
  subst e
  have hlo : o''.lo = o.lo := by unfold Obj.lo; rw [hb]
  refine ⟨by omega, by rw [hlo]; exact h2, ?_, ?_, ?_⟩
  · unfold TxLen at h3 ⊢
    simp only [txF_base hb]
    exact h3
  · rw [txF_base hb, txF_base hb]; exact subArr_ext hx h4
  · rw [txF_base hb, txF_base hb]; exact subArr_ext hx h5

theorem tx_shrink (Γ Γs : Gam) (m : Mem) (o : Obj) (_hsub : ∀ o' ∈ Γs, o' ∈ Γ) (_ho : o ∈ Γs)
    (_ht : o.ty = tTX) (hw : TxW Γ m o) (hc : ∀ x ∈ Γ, txRef Γ m o x.base → x ∈ Γs) :
    TxW Γs m o := by
  obtain ⟨h1, h2, h3, h4, h5⟩ := hw
  refine ⟨h1, h2, h3, ?_, ?_⟩
  · rcases h4 with h | ⟨x, hx, hxb, hxt, hxs, hxe⟩
    · exact Or.inl h
    · by_cases hn : (txF m o 27).toNat = 0
      · exact Or.inl hn
      · exact Or.inr ⟨x, hc x hx (Or.inl ⟨hn, hxb⟩), hxb, hxt, hxs, hxe⟩
  · rcases h5 with h | ⟨x, hx, hxb, hxt, hxs, hxe⟩
    · exact Or.inl h
    · by_cases hn : (txF m o 35).toNat = 0
      · exact Or.inl hn
      · exact Or.inr ⟨x, hc x hx (Or.inr ⟨hn, hxb⟩), hxb, hxt, hxs, hxe⟩

theorem tx_refHeap (Γ : Gam) (m : Mem) (o : Obj) (b : BitVec 64) (p : Ptrs)
    (hL : Layout guestC p Γ) (_ho : o ∈ Γ) (_ht : o.ty = tTX) (hw : TxW Γ m o)
    (hr : txRef Γ m o b) : ∀ x ∈ Γ, x.base = b → (guestC.ty x.ty).region = .heap := by
  intro x hx hxb
  obtain ⟨-, -, -, h4, h5⟩ := hw
  rcases hr with ⟨hn, rfl⟩ | ⟨hn, rfl⟩
  · rcases h4 with h | ⟨y, hy, hyb, hyt, -⟩
    · exact absurd h hn
    · rw [gam_base_eq (gamOK_of_layout hL) hx hy (hxb.trans hyb.symm), hyt]; exact acc_heap
  · rcases h5 with h | ⟨y, hy, hyb, hyt, -⟩
    · exact absurd h hn
    · rw [gam_base_eq (gamOK_of_layout hL) hx hy (hxb.trans hyb.symm), hyt]; exact auth_heap

/-- **The transaction record entry.** -/
def txD : RecD where
  ty := tTX
  wf := TxW
  fp := txFp
  ref := txRef
  hty := recTy_tTX
  cells := tx_cells
  frame := tx_frame
  mono := tx_mono
  shrink := tx_shrink
  refHeap := tx_refHeap

end InitECandidate.Solver.MemSafe.Hooks


#print axioms InitECandidate.Solver.MemSafe.Hooks.tx_cells
#print axioms InitECandidate.Solver.MemSafe.Hooks.tx_frame
#print axioms InitECandidate.Solver.MemSafe.Hooks.tx_mono
#print axioms InitECandidate.Solver.MemSafe.Hooks.tx_refHeap
