import InitECandidate.Solver.MemSafe.Hooks.RecTx

/-!
# The payload record entry `plD`

A decoded execution payload (`decode_payload`, `PL_SIZE` = 136 bytes) is a `Γ` object `o` of type
`tPL` (all `prot`). Its transaction slice array (`PL_TXS` slot 4, `PL_TXS_N` slot 5) is a **slice
array** (`SlaW`): a `Γ` object of type `tSLA` (16 bytes per slice, all `prot`), every slice short
and in the heap (`SlIn`), inside a `tVAL` object of `Γ` (`SlObj`, the adopted input blob), and ending
below the array. This bounds the envelope length for `decode_transaction_rlp` (`TxLen ≤ 655 + 8 len`)
and gives `TxBuf` and `build_mpt_indexed`'s `Pre`.

Also: `[raw + PLO_FEE_RECIPIENT, + 20)` (`PL_RAW` slot 0) and the withdrawal array
`[wd, wd + 44 n)` (`PL_WD`, `PL_WD_N`, slots 6, 7, `n < 2^32`) lie in `tVAL` objects.

Footprint: slots 0, 4, 5, 6, 7 and the two cells of each slice. Dependencies: the slice array and
the `tVAL` objects holding the slices, the fee recipient and the withdrawals.
-/

namespace InitECandidate.Solver.MemSafe.Hooks
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames
open InitECandidate.Solver.Spec

/-- Slice `i` of the array at `P`: pointer and length. -/
def slP (m : Mem) (P : BitVec 64) (i : Nat) : BitVec 64 := rd m (P + BitVec.ofNat 64 (16 * i))
def slL (m : Mem) (P : BitVec 64) (i : Nat) : BitVec 64 := rd m (P + BitVec.ofNat 64 (16 * i + 8))

/-- **A located slice**: short, no wrap, inside the heap (memory-only; reads are free). -/
def SlIn (p l : BitVec 64) : Prop :=
  l.toNat < 2 ^ 32 ∧ heapBase ≤ p.toNat ∧ p.toNat + l.toNat ≤ heapEnd

/-- `[p, p + l)` lies inside `x`. -/
def InX (x : Obj) (p l : BitVec 64) : Prop := x.lo ≤ p.toNat ∧ p.toNat + l.toNat ≤ x.hi

/-- `[p, p + l)` lies inside a `tVAL` object of `Γ` (also for an empty slice). -/
def SlObj (Γ : Gam) (p l : BitVec 64) : Prop := ∃ x ∈ Γ, x.ty = tVAL ∧ InX x p l

theorem inX_ext {x x' : Obj} {p l : BitVec 64} (hb : x'.base = x.base) (hs : x.size ≤ x'.size)
    (h : InX x p l) : InX x' p l := by
  obtain ⟨h1, h2⟩ := h
  have e1 : x'.lo = x.lo := by unfold Obj.lo; rw [hb]
  have e2 : x.hi = x.lo + x.size := rfl
  have e3 : x'.hi = x'.lo + x'.size := rfl
  exact ⟨by omega, by omega⟩

theorem slObj_ext {Γ Γ' : Gam} (he : Ext Γ Γ') {p l : BitVec 64} (h : SlObj Γ p l) :
    SlObj Γ' p l := by
  obtain ⟨x, hx, ht, hi⟩ := h
  obtain ⟨x', hx', hb, ht', hs⟩ := he x hx
  exact ⟨x', hx', ht'.trans ht, inX_ext hb hs hi⟩

/-- **A slice array** at `A` (`n` slices). -/
def SlaW (Γ : Gam) (m : Mem) (A : BitVec 64) (n : Nat) : Prop :=
  SubArr Γ A n tSLA 16 ∧ ∀ i, i < n → SlIn (slP m A i) (slL m A i) ∧
    SlObj Γ (slP m A i) (slL m A i) ∧ (slP m A i).toNat + (slL m A i).toNat ≤ A.toNat

/-- The cells of a slice array. -/
def slaFp (m : Mem) (A : BitVec 64) (n : Nat) (a : BitVec 64) : Prop :=
  ∃ i, i < n ∧ (a = A + BitVec.ofNat 64 (16 * i) ∨ a = A + BitVec.ofNat 64 (16 * i + 8))

/-- The `tVAL` objects a slice array depends on. -/
def SlaVal (m : Mem) (A : BitVec 64) (n : Nat) (x : Obj) : Prop :=
  x.ty = tVAL ∧ ∃ i, i < n ∧ InX x (slP m A i) (slL m A i)

/-- **The payload record invariant.** -/
def PlW (Γ : Gam) (m : Mem) (o : Obj) : Prop :=
  136 ≤ o.size ∧ o.lo + 136 ≤ heapEnd ∧ SlaW Γ m (txF m o 4) (txF m o 5).toNat ∧
    SlObj Γ (txF m o 0 + BitVec.ofNat 64 32) (BitVec.ofNat 64 20) ∧ (txF m o 7).toNat < 2 ^ 32 ∧
    SlObj Γ (txF m o 6) (BitVec.ofNat 64 (44 * (txF m o 7).toNat))

def plSlots : List Nat := [0, 4, 5, 6, 7]

def plFp (_Γ : Gam) (m : Mem) (o : Obj) (a : BitVec 64) : Prop :=
  (∃ k ∈ plSlots, a = o.cell k) ∨ slaFp m (txF m o 4) (txF m o 5).toNat a

def plRef (Γ : Gam) (m : Mem) (o : Obj) (b : BitVec 64) : Prop :=
  ((txF m o 5).toNat ≠ 0 ∧ b = txF m o 4) ∨ ∃ x ∈ Γ, x.base = b ∧
    (SlaVal m (txF m o 4) (txF m o 5).toNat x ∨
      (x.ty = tVAL ∧ InX x (txF m o 0 + BitVec.ofNat 64 32) (BitVec.ofNat 64 20)) ∨
      (x.ty = tVAL ∧ InX x (txF m o 6) (BitVec.ofNat 64 (44 * (txF m o 7).toNat))))

theorem recTy_tPL : RecTyOK tPL := by decide
theorem recTy_tSLA : RecTyOK tSLA := by decide

theorem pl_prot (k : Nat) : (guestC.ty tPL).slot k = .prot := recIds_prot tPL (by simp) k
theorem sla_prot (k : Nat) : (guestC.ty tSLA).slot k = .prot := recIds_prot tSLA (by simp) k
theorem sla_heap : (guestC.ty tSLA).region = .heap := recIds_region tSLA (by simp)

theorem sl_cell (x : Obj) (i : Nat) :
    x.cell (2 * i) = x.base + BitVec.ofNat 64 (16 * i) ∧
      x.cell (2 * i + 1) = x.base + BitVec.ofNat 64 (16 * i + 8) := by
  unfold Obj.cell
  constructor <;> congr 2 <;> omega

theorem plSlots_le {k : Nat} (h : k ∈ plSlots) : k ≤ 7 := by
  simp only [plSlots, List.mem_cons, List.not_mem_nil, or_false] at h
  omega

/-- A cell of a slice array is a `prot` slot of the `tSLA` object. -/
theorem sla_cells {Γ : Gam} {m : Mem} {A : BitVec 64} {n : Nat} {a : BitVec 64}
    (hw : SlaW Γ m A n) (hf : slaFp m A n a) :
    ∃ x ∈ Γ, RecTyOK x.ty ∧ ∃ k, x.HasSlot k ∧ (guestC.ty x.ty).slot k = .prot ∧ a = x.cell k ∧
      x.lo ≤ a.toNat ∧ a.toNat < x.hi := by
  obtain ⟨hsub, -⟩ := hw
  obtain ⟨i, hi, hc⟩ := hf
  rcases hc with hc | hc
  · obtain ⟨x, hx, hxb, hxt, hks, -, h1, h2⟩ := sub_cell hsub (by omega) (k := 2 * i) (by omega)
    have ea : a = x.cell (2 * i) := by rw [hc, (sl_cell x i).1, hxb]
    rw [ea]
    exact ⟨x, hx, hxt ▸ recTy_tSLA, 2 * i, hks, by rw [hxt]; exact sla_prot _, rfl, h1, h2⟩
  · obtain ⟨x, hx, hxb, hxt, hks, -, h1, h2⟩ :=
      sub_cell hsub (by omega) (k := 2 * i + 1) (by omega)
    have ea : a = x.cell (2 * i + 1) := by rw [hc, (sl_cell x i).2, hxb]
    rw [ea]
    exact ⟨x, hx, hxt ▸ recTy_tSLA, 2 * i + 1, hks, by rw [hxt]; exact sla_prot _, rfl, h1, h2⟩

theorem pl_cells (Γ : Gam) (m : Mem) (o : Obj) (a : BitVec 64) (_hG : GamOK Γ) (ho : o ∈ Γ)
    (ht : o.ty = tPL) (hw : PlW Γ m o) (hf : plFp Γ m o a) :
    ∃ x ∈ Γ, RecTyOK x.ty ∧ ∃ k, x.HasSlot k ∧ (guestC.ty x.ty).slot k = .prot ∧ a = x.cell k ∧
      x.lo ≤ a.toNat ∧ a.toNat < x.hi := by
  obtain ⟨hs, hlo, hsla, -⟩ := hw
  rcases hf with ⟨k, hk, rfl⟩ | hf
  · have hk5 := plSlots_le hk
    have e := cellN (x := o) (k := k) (by have := heapEnd_lt; omega)
    refine ⟨o, ho, ht ▸ recTy_tPL, k, by unfold Obj.HasSlot; omega, by rw [ht]; exact pl_prot k,
      rfl, by omega, ?_⟩
    rw [e]; unfold Obj.hi; unfold Obj.lo at hlo ⊢; omega
  · exact sla_cells hsla hf

theorem slP_congr {m m' : Mem} {P : BitVec 64} {N : Nat}
    (h : ∀ i, i < N → m' (P + BitVec.ofNat 64 (16 * i)) = m (P + BitVec.ofNat 64 (16 * i)) ∧
      m' (P + BitVec.ofNat 64 (16 * i + 8)) = m (P + BitVec.ofNat 64 (16 * i + 8))) :
    ∀ i, i < N → slP m' P i = slP m P i ∧ slL m' P i = slL m P i := fun i hi =>
  ⟨rd_congr (h i hi).1, rd_congr (h i hi).2⟩

/-- A slice array reads only its cells. -/
theorem sla_frame {Γ : Gam} {m m' : Mem} {A : BitVec 64} {n : Nat} (hw : SlaW Γ m A n)
    (hfp : ∀ a, slaFp m A n a → m' a = m a) : SlaW Γ m' A n := by
  have eS := slP_congr (m := m) (m' := m') (P := A) (N := n)
    (fun i hi => ⟨hfp _ ⟨i, hi, Or.inl rfl⟩, hfp _ ⟨i, hi, Or.inr rfl⟩⟩)
  obtain ⟨h1, h2⟩ := hw
  refine ⟨h1, fun i hi => ?_⟩
  rw [(eS i hi).1, (eS i hi).2]
  exact h2 i hi

theorem slaFp_congr (m m' : Mem) (A : BitVec 64) (n : Nat) : slaFp m' A n = slaFp m A n := rfl

theorem pl_frame (Γ : Gam) (m m' : Mem) (o : Obj) (_ht : o.ty = tPL) (hw : PlW Γ m o)
    (hfp : ∀ a, plFp Γ m o a → m' a = m a) : PlW Γ m' o ∧ plFp Γ m' o = plFp Γ m o := by
  have ek : ∀ k ∈ plSlots, txF m' o k = txF m o k := fun k hk =>
    rd_congr (hfp _ (Or.inl ⟨k, hk, rfl⟩))
  have e0 := ek 0 (by decide)
  have e4 := ek 4 (by decide)
  have e5 := ek 5 (by decide)
  have e6 := ek 6 (by decide)
  have e7 := ek 7 (by decide)
  have hfpe : plFp Γ m' o = plFp Γ m o := by
    funext a
    unfold plFp
    rw [e4, e5, slaFp_congr m m']
  refine ⟨?_, hfpe⟩
  obtain ⟨h1, h2, h3, h4, h5, h6⟩ := hw
  refine ⟨h1, h2, ?_, ?_, ?_, ?_⟩
  · rw [e4, e5]; exact sla_frame h3 (fun a ha => hfp a (Or.inr ha))
  · rw [e0]; exact h4
  · rw [e7]; exact h5
  · rw [e6, e7]; exact h6

theorem sla_ext {Γ Γ' : Gam} (hx : Ext Γ Γ') {m : Mem} {A : BitVec 64} {n : Nat}
    (h : SlaW Γ m A n) : SlaW Γ' m A n :=
  ⟨subArr_ext hx h.1, fun i hi =>
    ⟨(h.2 i hi).1, slObj_ext hx (h.2 i hi).2.1, (h.2 i hi).2.2⟩⟩

theorem pl_mono (Γ Γ' : Gam) (m : Mem) (p : Ptrs) (o o' : Obj) (hL : Layout guestC p Γ')
    (hx : Ext Γ Γ') (ho : o ∈ Γ) (ho' : o' ∈ Γ') (hb : o'.base = o.base) (_ht' : o'.ty = o.ty)
    (_ht : o.ty = tPL) (hw : PlW Γ m o) : PlW Γ' m o' := by
  obtain ⟨h1, h2, h3, h4, h5, h6⟩ := hw
  obtain ⟨o'', ho'', hb'', -, hs''⟩ := hx o ho
  have e : o'' = o' := gam_base_eq (gamOK_of_layout hL) ho'' ho' (hb''.trans hb.symm)
  subst e
  have hlo : o''.lo = o.lo := by unfold Obj.lo; rw [hb]
  refine ⟨by omega, by rw [hlo]; exact h2, ?_, ?_, ?_, ?_⟩
  · rw [txF_base hb, txF_base hb]; exact sla_ext hx h3
  · rw [txF_base hb]; exact slObj_ext hx h4
  · rw [txF_base hb]; exact h5
  · rw [txF_base hb, txF_base hb]; exact slObj_ext hx h6

/-- A slice array survives dropping objects it does not depend on. -/
theorem sla_shrink {Γ Γs : Gam} {m : Mem} {A : BitVec 64} {n : Nat} (hw : SlaW Γ m A n)
    (hc : n ≠ 0 → ∀ x ∈ Γ, x.base = A → x ∈ Γs) (hv : ∀ x ∈ Γ, SlaVal m A n x → x ∈ Γs) :
    SlaW Γs m A n := by
  obtain ⟨h3, h4⟩ := hw
  refine ⟨?_, fun i hi => ?_⟩
  · rcases h3 with h | ⟨x, hx, hxb, hxt, hxs, hxe⟩
    · exact Or.inl h
    · by_cases hn : n = 0
      · exact Or.inl hn
      · exact Or.inr ⟨x, hc hn x hx hxb, hxb, hxt, hxs, hxe⟩
  · obtain ⟨h1, ⟨x, hx, hxt, hin⟩, h2⟩ := h4 i hi
    exact ⟨h1, ⟨x, hv x hx ⟨hxt, i, hi, hin⟩, hxt, hin⟩, h2⟩

theorem pl_shrink (Γ Γs : Gam) (m : Mem) (o : Obj) (_hsub : ∀ o' ∈ Γs, o' ∈ Γ) (_ho : o ∈ Γs)
    (_ht : o.ty = tPL) (hw : PlW Γ m o) (hc : ∀ x ∈ Γ, plRef Γ m o x.base → x ∈ Γs) :
    PlW Γs m o := by
  obtain ⟨h1, h2, h3, ⟨x4, hx4, ht4, hi4⟩, h5, ⟨x6, hx6, ht6, hi6⟩⟩ := hw
  refine ⟨h1, h2, ?_, ⟨x4, hc x4 hx4 (Or.inr ⟨x4, hx4, rfl, Or.inr (Or.inl ⟨ht4, hi4⟩)⟩), ht4, hi4⟩,
    h5, ⟨x6, hc x6 hx6 (Or.inr ⟨x6, hx6, rfl, Or.inr (Or.inr ⟨ht6, hi6⟩)⟩), ht6, hi6⟩⟩
  refine sla_shrink h3 (fun hn x hx hxb => hc x hx (Or.inl ⟨hn, hxb⟩)) (fun x hx hv => ?_)
  exact hc x hx (Or.inr ⟨x, hx, rfl, Or.inl hv⟩)

/-- `tVAL` is a heap type. -/
theorem val_heap : (guestC.ty tVAL).region = .heap := by rw [ty_VAL]; rfl

theorem pl_refHeap (Γ : Gam) (m : Mem) (o : Obj) (b : BitVec 64) (p : Ptrs)
    (hL : Layout guestC p Γ) (_ho : o ∈ Γ) (_ht : o.ty = tPL) (hw : PlW Γ m o)
    (hr : plRef Γ m o b) : ∀ x ∈ Γ, x.base = b → (guestC.ty x.ty).region = .heap := by
  intro x hx hxb
  obtain ⟨-, -, ⟨h3, -⟩, -⟩ := hw
  rcases hr with ⟨hn, rfl⟩ | ⟨y, hy, hyb, hv⟩
  · rcases h3 with h | ⟨y, hy, hyb, hyt, -⟩
    · exact absurd h hn
    · rw [gam_base_eq (gamOK_of_layout hL) hx hy (hxb.trans hyb.symm), hyt]; exact sla_heap
  · have hyt : y.ty = tVAL := by
      rcases hv with h | h | h
      · exact h.1
      · exact h.1
      · exact h.1
    rw [gam_base_eq (gamOK_of_layout hL) hx hy (hxb.trans hyb.symm), hyt]; exact val_heap

/-- **The payload record entry.** -/
def plD : RecD where
  ty := tPL
  wf := PlW
  fp := plFp
  ref := plRef
  hty := recTy_tPL
  cells := pl_cells
  frame := pl_frame
  mono := pl_mono
  shrink := pl_shrink
  refHeap := pl_refHeap

end InitECandidate.Solver.MemSafe.Hooks

#print axioms InitECandidate.Solver.MemSafe.Hooks.pl_cells
#print axioms InitECandidate.Solver.MemSafe.Hooks.pl_frame
#print axioms InitECandidate.Solver.MemSafe.Hooks.pl_mono
#print axioms InitECandidate.Solver.MemSafe.Hooks.pl_shrink
#print axioms InitECandidate.Solver.MemSafe.Hooks.pl_refHeap
