import InitECandidate.Solver.MemSafe.Ptx.PtT2
import InitECandidate.Solver.MemSafe.Ptx.PtD1
import InitECandidate.Solver.MemSafe.Ptx.DropOwn

/-!
# F3g: the tail's context `TlCtx`, the cell set `Za`, reading `bo` / `be` / `out` cells
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

/-- The tail's fixed data: the re-anchored entry `E` (typing `E.Γ0`, state `E.s0`), its allocator `q0`, the output record `out`
and the sender buffer. -/
structure TlCtx (σ : Type) where
  E : PtE σ
  q0 : Ptrs
  hq0 : ptrsOf E.s0 = some q0
  ord : q0.Ordered
  out : BitVec 64
  sender : BitVec 64
  /-- frozen cells (see `TlA.Y`) -/
  Y : BitVec 64 → Prop
  hY : ∀ a, Y a → ¬ InObj E.Γ0 a.toNat ∧ q0.Allocated a.toNat
  hY8 : ∀ a, Y a → a.toNat % 8 = 0

/-- The reference valuation at the start: the anchor's memory. -/
def TlCtx.ref0 (K : TlCtx σ) : BitVec 64 → BitVec 64 := fun a => rd K.E.s0.memory a

/-- The six cells the tail writes: four `bo` counters and the receipt slice (`rcs[idx]`). -/
def TlCtx.Wt (K : TlCtx σ) (a : BitVec 64) : Prop :=
  a = K.E.bo ∨ a = K.E.bo + 8 ∨ a = K.E.bo + 16 ∨ a = K.E.bo + 48 ∨
  a = K.E.rcs + K.E.idx * 16 ∨ a = K.E.rcs + K.E.idx * 16 + 8

/-- The cells kept from the anchor during the first part of the tail: every `prot` cell of a non-state object that the
tail has not (yet) written. -/
def Za (K : TlCtx σ) (a : BitVec 64) : Prop :=
  (∃ o ∈ K.E.Γ0, (guestC.ty o.ty).region = .heap ∧ guestSt o.ty = false ∧ ∃ k, o.HasSlot k ∧
    (guestC.ty o.ty).slot k = .prot ∧ a = o.cell k) ∧ ¬ K.Wt a

/-- A cell the tail keeps constant: a kept `prot` cell, or a frozen one. -/
def KC (K : TlCtx σ) (a : BitVec 64) : Prop := Za K a ∨ K.Y a

/-- **The log list of `process_message_call`** (non-null), described by its cells: the header cells, the pointer-array cells
and the records (the list header may be a dropped frame-local object, hence frozen cells). -/
structure LstPreF (K : TlCtx σ) (lw : BitVec 64) : Prop where
  rb : RecsBelow K.E.Γ0 K.E.s0.memory K.q0.hp lw
  c0 : KC K lw
  c8 : KC K (lw + 8)
  nb : lgN K.E.s0.memory lw ≤ 2 ^ 25
  arr : ∀ i, i < lgN K.E.s0.memory lw → KC K (lgArr K.E.s0.memory lw i)
  dis : ∀ c, K.Wt c → c ≠ lw ∧ c ≠ lw + 8

/-- **The deletion table of `process_message_call`** (non-null, base `d`): the cells `htab_item` reads are frozen, and every
key is a writable buffer that misses the frozen cells. -/
structure DelPreF (K : TlCtx σ) (d : BitVec 64) : Prop where
  y8 : K.Y (d + BitVec.ofNat 64 8)
  y24 : K.Y (d + BitVec.ofNat 64 24)
  y32 : K.Y (d + BitVec.ofNat 64 32)
  y48 : K.Y (d + BitVec.ofNat 64 48)
  ord : ∀ i : Nat, i < Inv.CNT K.E.s0.memory d → K.Y (Inv.hdr K.E.s0.memory d 48 + BitVec.ofNat 64 (8 * i))
  keyBuf : ∀ i : Nat, i < Inv.CNT K.E.s0.memory d →
    BufOK guestC K.E.Γ0 K.q0 (Inv.keyPtr K.E.s0.memory d (Inv.ORD K.E.s0.memory d (BitVec.ofNat 64 i))).toNat 20
  keyY : ∀ i : Nat, i < Inv.CNT K.E.s0.memory d → ∀ a,
    Overlap (Inv.keyPtr K.E.s0.memory d (Inv.ORD K.E.s0.memory d (BitVec.ofNat 64 i))).toNat 20 a → ¬ K.Y a
  cnt : Inv.CNT K.E.s0.memory d ≤ 2 ^ 32

/-- **The tail's precondition**: the facts at the anchor (the state right after `process_message_call`, typing `Γ0`). -/
structure TlPre (K : TlCtx σ) : Prop where
  B : PtPreB K.E
  outO : ∃ o ∈ K.E.Γ0, o.base = K.out ∧ o.ty = tMCO ∧ 96 ≤ o.size
  lstF : K.ref0 (K.out + BitVec.ofNat 64 16) ≠ 0 → LstPreF K (K.ref0 (K.out + BitVec.ofNat 64 16))
  delF : K.ref0 (K.out + BitVec.ofNat 64 24) ≠ 0 → DelPreF K (K.ref0 (K.out + BitVec.ofNat 64 24))
  mv : K.ref0 (K.out + BitVec.ofNat 64 80) ≠ 0 →
    MarkVals (K.ref0 (K.out + BitVec.ofNat 64 80)) (K.ref0 (K.out + BitVec.ofNat 64 88))
  snd : BufOK guestC K.E.Γ0 K.q0 K.sender.toNat 20
  coin : BufOK guestC K.E.Γ0 K.q0 (rd K.E.s0.memory (K.E.be + BitVec.ofNat 64 32)).toNat 20
  sndY : ∀ a, Overlap K.sender.toNat 20 a → ¬ K.Y a
  coinY : ∀ a, Overlap (rd K.E.s0.memory (K.E.be + BitVec.ofNat 64 32)).toNat 20 a → ¬ K.Y a
  txSl : Hooks.VInR tVAL K.E.Γ0 (rd K.E.s0.memory (K.E.txs + K.E.idx * BitVec.ofNat 64 16))
    (rd K.E.s0.memory (K.E.txs + K.E.idx * BitVec.ofNat 64 16 + BitVec.ofNat 64 8))
  ts : GObj K.E.Γ0 K.E.s0 nmTs tTS
  heap0 : ∀ o ∈ K.E.Γ0, (guestC.ty o.ty).region = .heap
  own0 : OwnerHeap K.E.Γ0

def TlCtx.A (K : TlCtx σ) : TlA σ := ⟨K.E.Γ0, K.E.s0, K.q0, K.hq0, K.ord, K.Y, K.hY, K.hY8⟩

theorem TlCtx.wt_wset (K : TlCtx σ) {a : BitVec 64} (h : K.Wt a) : K.E.WSet a := by
  rcases h with h | h | h | h | h | h
  · exact Or.inl h
  · exact Or.inr (Or.inl h)
  · exact Or.inr (Or.inr (Or.inl h))
  · exact Or.inr (Or.inr (Or.inr (Or.inl h)))
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h))))))
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr h))))))

/-- The tracked locals at the tail's start. -/
def EnT0 (K : TlCtx σ) : Env := fun x =>
  if x = nm "index" then some (.val (.word K.E.idx)) else
  if x = nm "sender" then some (.val (.word K.sender)) else
  if x = nm "out" then some (.val (.word K.out)) else none

theorem enT0_none (K : TlCtx σ) {x : MlS} (h1 : x ≠ nm "index") (h2 : x ≠ nm "sender") (h3 : x ≠ nm "out") :
    EnT0 K x = none := by
  simp [EnT0, h1, h2, h3]

theorem tl_start (K : TlCtx σ) (hG : G guestC (HR σ) K.E.Γ0 K.E.s0) (hJ : JrNZ K.E.s0)
    (hev : ∃ e, gword K.E.s0 nmEv = some e ∧ e.toNat < nullMax)
    (hcc : ∃ c, gword K.E.s0 nmCC = some c ∧ c.toNat < nullMax) :
    TlS K.A K.ref0 (Za K) [] K.E.s0 K.E.Γ0 K.q0 :=
  ⟨K.hq0, ⟨le_refl _, le_refl _, le_refl _⟩, fun o ho => ⟨o, ho, rfl, rfl, le_refl _⟩,
    fun o ho a h1 h2 => Or.inl ⟨o, ho, rfl, rfl, h1, h2⟩, hG, fun _ _ => rfl, hJ, hev, hcc,
    fun a ha => ha.1, fun _ _ => rfl, fun o ho => absurd ho (by simp), fun o ho => absurd ho (by simp), fun _ _ => rfl⟩

section rd
variable {K : TlCtx σ} {ref : BitVec 64 → BitVec 64} {Z : BitVec 64 → Prop} {O : List Obj} {u : State σ} {Γ : Gam} {p : Ptrs}

theorem tl_bufOK (h : TlS K.A ref Z O u Γ p) {b n : Nat} (hb : BufOK guestC K.E.Γ0 K.q0 b n) :
    BufOK guestC Γ p b n :=
  bufOK_step K.ord (tl_ord h) h.mono h.ext h.nf hb

theorem tl_glob_bo (h : TlS K.A ref Z O u Γ p) (hbo : gword K.E.s0 (nm "bo") = some K.E.bo) :
    u.globals.lookup (nm "bo") = some (.val (.word K.E.bo)) := by
  rw [h.glob _ (by decide)]; exact lookup_of_gword hbo

theorem tl_glob_be (h : TlS K.A ref Z O u Γ p) (hbe : gword K.E.s0 (nm "be") = some K.E.be) :
    u.globals.lookup (nm "be") = some (.val (.word K.E.be)) := by
  rw [h.glob _ (by decide)]; exact lookup_of_gword hbe

end rd

/-- A cell of an object of another type than `tBO` / `tBOS` is not a written cell. -/
theorem not_wset_ty {E : PtE σ} (hP : PtPreB E) {o : Obj} (ho : o ∈ E.Γ0) (h1 : o.ty ≠ tBO) (h2 : o.ty ≠ tBOS)
    {k : Nat} (hk : o.HasSlot k) : ¬ E.WSet (o.cell k) := by
  obtain ⟨q, hq, hord, hL⟩ := pre_layoutB hP
  obtain ⟨ob, hob, hobb, hobt⟩ := hP.boObj
  have hmin := (hL.1 ob hob).2.2.2.1
  rw [hobt] at hmin
  have h88 : (guestC.ty tBO).minSz = 88 := rfl
  rw [h88] at hmin
  have hbo : ∀ j : Nat, j < 11 → ob.HasSlot j := fun j hj => by unfold Obj.HasSlot; omega
  have hcell : ∀ j', E.bo + BitVec.ofNat 64 (8 * j') = ob.cell j' := fun j' => by unfold Obj.cell; rw [hobb]
  have hty : o.ty ≠ ob.ty := by rw [hobt]; exact h1
  have arr : ∀ A, (∃ o ∈ E.Γ0, o.base = A ∧ o.ty = tBOS ∧ E.idx.toNat * 16 + 16 ≤ o.size) →
      ∀ j', j' < 2 → o.cell k ≠ A + E.idx * BitVec.ofNat 64 16 + BitVec.ofNat 64 (8 * j') := by
    intro A hA j' hj'
    obtain ⟨oA, hoA, hbA, htA, hsz⟩ := hA
    have hkA : oA.HasSlot (2 * E.idx.toNat + j') := by unfold Obj.HasSlot; omega
    have he : A + E.idx * BitVec.ofNat 64 16 + BitVec.ofNat 64 (8 * j') = oA.cell (2 * E.idx.toNat + j') := by
      unfold Obj.cell; rw [hbA, BitVec.add_assoc, bv_idx16]
    rw [he]
    intro hc
    obtain ⟨hMo, -⟩ := cell_inj hord hL ho hoA hk hkA hc
    subst hMo
    exact h2 htA
  rintro (h | h | h | h | h | h | h | h)
  · have e : E.bo = ob.cell 0 := by rw [← hcell 0]; simp
    rw [e] at h
    exact cell_ne_ty hord hL ho hob hty hk (hbo 0 (by omega)) h
  · have e : E.bo + 8 = ob.cell 1 := hcell 1
    rw [e] at h
    exact cell_ne_ty hord hL ho hob hty hk (hbo 1 (by omega)) h
  · have e : E.bo + 16 = ob.cell 2 := hcell 2
    rw [e] at h
    exact cell_ne_ty hord hL ho hob hty hk (hbo 2 (by omega)) h
  · have e : E.bo + 48 = ob.cell 6 := hcell 6
    rw [e] at h
    exact cell_ne_ty hord hL ho hob hty hk (hbo 6 (by omega)) h
  · exact arr E.txs hP.txsObj 0 (by omega) (by rw [h]; simp)
  · exact arr E.txs hP.txsObj 1 (by omega) (by rw [h]; rfl)
  · exact arr E.rcs hP.rcsObj 0 (by omega) (by rw [h]; simp)
  · exact arr E.rcs hP.rcsObj 1 (by omega) (by rw [h]; rfl)

section za
variable {K : TlCtx σ}

/-- A `bo` cell outside the written ones is kept. -/
theorem za_bo (hP' : TlPre K) {j : Nat} (hj : j < 11) (h0 : j ≠ 0) (h1 : j ≠ 1) (h2 : j ≠ 2) (h6 : j ≠ 6) :
    Za K (K.E.bo + BitVec.ofNat 64 (8 * j)) := by
  have hP := hP'.B
  obtain ⟨q, hq, hord, hL⟩ := pre_layoutB hP
  obtain ⟨o, ho, hb, ht⟩ := hP.boObj
  have hmin := (hL.1 o ho).2.2.2.1
  rw [ht] at hmin
  have h88 : (guestC.ty tBO).minSz = 88 := rfl
  rw [h88] at hmin
  have hk : o.HasSlot j := by unfold Obj.HasSlot; omega
  have hcell : K.E.bo + BitVec.ofNat 64 (8 * j) = o.cell j := by unfold Obj.cell; rw [hb]
  rw [hcell]
  exact ⟨⟨o, ho, hP'.heap0 o ho, guestSt_block (by rw [ht]; simp [blockTys]), j, hk,
      slot_block (by rw [ht]; simp [blockTys]) j, rfl⟩,
    fun h => not_wset_boB hP hj h0 h1 h2 h6 ho hb ht hk (K.wt_wset h)⟩

/-- A cell of the block environment is kept. -/
theorem za_be (hP' : TlPre K) {off : Nat} (ho8 : off % 8 = 0) (hoN : off + 8 ≤ 120) :
    Za K (K.E.be + BitVec.ofNat 64 off) := by
  have hP := hP'.B
  obtain ⟨o, ho, hb, ht, hs⟩ := hP.beObj
  have hk : o.HasSlot (off / 8) := by unfold Obj.HasSlot; omega
  have hcell : K.E.be + BitVec.ofNat 64 off = o.cell (off / 8) := by
    unfold Obj.cell; rw [hb]; congr 2; omega
  rw [hcell]
  exact ⟨⟨o, ho, hP'.heap0 o ho, guestSt_block (by rw [ht]; simp [blockTys]), off / 8, hk,
      slot_block (by rw [ht]; simp [blockTys]) _, rfl⟩,
    fun h => not_wset_beB hP hP.dis1 hP.dis2 ho hb ht hk (K.wt_wset h)⟩

/-- A cell of the output record is kept. -/
theorem za_out (hP' : TlPre K) {o : Obj} (ho : o ∈ K.E.Γ0) (hb : o.base = K.out) (ht : o.ty = tMCO)
    (hs : 96 ≤ o.size) {off : Nat} (ho8 : off % 8 = 0) (hoN : off + 8 ≤ 96) :
    Za K (K.out + BitVec.ofNat 64 off) := by
  have hP := hP'.B
  have hk : o.HasSlot (off / 8) := by unfold Obj.HasSlot; omega
  have hcell : K.out + BitVec.ofNat 64 off = o.cell (off / 8) := by
    unfold Obj.cell; rw [hb]; congr 2; omega
  rw [hcell]
  exact ⟨⟨o, ho, hP'.heap0 o ho, guestSt_block (by rw [ht]; simp [blockTys]), off / 8, hk,
      slot_block (by rw [ht]; simp [blockTys]) _, rfl⟩,
    fun h => not_wset_ty hP ho (by rw [ht]; decide) (by rw [ht]; decide) hk (K.wt_wset h)⟩

end za

end InitECandidate.Solver.MemSafe.Ptx
