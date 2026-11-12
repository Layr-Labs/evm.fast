import InitECandidate.Solver.MemSafe.Types

/-!
# Log records and log lists (package L): definitions

* `tLOG` (80): the type of a log record: all `prot`, heap, untagged, `minSz 0` (the default descriptor, so no
  config entry). `LogRec Γ hp x`: the 40 bytes at `x` are a `tLOG` object of `Γ`, in the heap below `hp`.
  `LogF m x`: its `LOG_TOPICS_N` (`+16`) and `LOG_DATA_N` (`+32`) are small; `LogRecF` is both.
* `HdrTy`, `LNn`, `LEl`: the header types of the frame log lists, `N` and the `i`-th element of the
  list whose header is at `b` (`PTR = h[0]`, `N = h[8]`, element `i` at `PTR + 8 i`).
* **`LogSub Γ Γ' hp' m m'`**: what a log writer does to the lists: for every list header `L` of `Γ`, the
  array is unchanged or a heap list array, and every element afterwards is an element before or a log
  record in range at `Γ'`, `hp'`.
* `logRec_step`, `logSub_trans`, `logSub_of_eq`.
-/

namespace InitECandidate.Solver.MemSafe
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.MemSafe.Types

/-- The log record type: past the end of `guestT`, so it has the default descriptor. A type of its own
(not F1b's frozen 79, which the `ws` hook refers to), so `process_transaction` can drop every record
from the typing before `encode_receipt`: no hook refers to this type. -/
abbrev tLOG : Nat := 80

theorem ty_tLOG : guestC.ty tLOG = default := rfl

theorem tlog_prot (k : Nat) : (guestC.ty tLOG).slot k = .prot := by rw [ty_tLOG]; rfl
theorem tlog_region : (guestC.ty tLOG).region = .heap := by rw [ty_tLOG]; rfl
theorem tlog_minSz : (guestC.ty tLOG).minSz = 0 := by rw [ty_tLOG]; rfl
theorem tlog_untagged : guestC.tags.lookup tLOG = none := by decide

/-- **A log record in range**: a `tLOG` object of `Γ` of at least 40 bytes. -/
def LogRec (Γ : Gam) (hp : Nat) (x : BitVec 64) : Prop :=
  heapBase ≤ x.toNat ∧ x.toNat + 40 ≤ hp ∧ ∃ o ∈ Γ, o.base = x ∧ o.ty = tLOG ∧ 40 ≤ o.size

/-- **The field bounds of a log record.** -/
def LogF (m : Mem) (x : BitVec 64) : Prop :=
  (rd m (x + BitVec.ofNat 64 16)).toNat ≤ 2 ^ 20 ∧ (rd m (x + BitVec.ofNat 64 32)).toNat ≤ 2 ^ 30

/-- A log record with its field bounds. -/
def LogRecF (Γ : Gam) (hp : Nat) (m : Mem) (x : BitVec 64) : Prop := LogRec Γ hp x ∧ LogF m x

theorem logRec_step {Γ Γ' : Gam} {p p' : Ptrs} {v : BitVec 64} (hmo : p.Mono p') (hext : Ext Γ Γ')
    (h : LogRec Γ p.hp v) : LogRec Γ' p'.hp v := by
  obtain ⟨h1, h2, o, ho, hb, ht, hs⟩ := h
  obtain ⟨o', ho', hb', ht', hs'⟩ := hext o ho
  exact ⟨h1, by have := hmo.1; omega, o', ho', hb'.trans hb, ht'.trans ht, by omega⟩

/-- Every cell of every frozen object of `Γ` is kept. -/
def LogKeep (Γ : Gam) (m m' : Mem) : Prop :=
  ∀ o ∈ Γ, o.ty = tLOG → ∀ k, o.HasSlot k → rd m' (o.cell k) = rd m (o.cell k)

theorem logF_keep {Γ : Gam} {hp : Nat} {m m' : Mem} {x : BitVec 64} (hk : LogKeep Γ m m')
    (hr : LogRec Γ hp x) (hf : LogF m x) : LogF m' x := by
  obtain ⟨-, -, o, ho, rfl, ht, hs⟩ := hr
  have h2 := hk o ho ht 2 (by unfold Obj.HasSlot; omega)
  have h4 := hk o ho ht 4 (by unfold Obj.HasSlot; omega)
  have e2 : o.cell 2 = o.base + BitVec.ofNat 64 16 := rfl
  have e4 : o.cell 4 = o.base + BitVec.ofNat 64 32 := rfl
  rw [e2] at h2
  rw [e4] at h4
  obtain ⟨f1, f2⟩ := hf
  exact ⟨by rw [h2]; exact f1, by rw [h4]; exact f2⟩

theorem logRecF_step {Γ Γ' : Gam} {p p' : Ptrs} {m m' : Mem} {v : BitVec 64} (hmo : p.Mono p')
    (hext : Ext Γ Γ') (hk : LogKeep Γ m m') (h : LogRecF Γ p.hp m v) : LogRecF Γ' p'.hp m' v :=
  ⟨logRec_step hmo hext h.1, logF_keep hk h.1 h.2⟩

theorem logKeep_trans {Γ : Gam} {m m1 m2 : Mem} (h1 : LogKeep Γ m m1) (h2 : LogKeep Γ m1 m2) :
    LogKeep Γ m m2 := fun o ho ht k hk => (h2 o ho ht k hk).trans (h1 o ho ht k hk)

theorem logKeep_ext {Γ Γ' : Gam} {m m' : Mem} (hext : Ext Γ Γ')
    (h : LogKeep Γ' m m') : LogKeep Γ m m' := by
  intro o ho ht k hk
  obtain ⟨o', ho', hb, ht', hs⟩ := hext o ho
  have := h o' ho' (ht'.trans ht) k (by unfold Obj.HasSlot at hk ⊢; omega)
  have e : o'.cell k = o.cell k := by unfold Obj.cell; rw [hb]
  rwa [e] at this

/-- **A freshly created, empty log list** (package L): `N = 0`, `PTR` is the base of a list array of
`Γ`. -/
def LgEmp (Γ : Gam) (m : Mem) (o : Obj) : Prop :=
  rd m (o.cell 1) = 0 ∧ ∃ y ∈ Γ, (y.ty = tLSTAh ∨ y.ty = tLSTAs) ∧ y.base = rd m (o.cell 0)

theorem lgEmp_congr {Γ : Gam} {m m' : Mem} {o : Obj} (h : LgEmp Γ m o)
    (h0 : rd m' (o.cell 0) = rd m (o.cell 0)) (h1 : rd m' (o.cell 1) = rd m (o.cell 1)) :
    LgEmp Γ m' o := by
  obtain ⟨a, y, hy, ht, hb⟩ := h
  exact ⟨by rw [h1]; exact a, y, hy, ht, by rw [h0]; exact hb⟩

theorem lgEmp_ext {Γ Γ' : Gam} {m : Mem} {o o' : Obj} (h : LgEmp Γ m o) (hext : Ext Γ Γ')
    (hb : o'.base = o.base) : LgEmp Γ' m o' := by
  obtain ⟨a, y, hy, ht, hyb⟩ := h
  obtain ⟨y', hy', hb', ht', -⟩ := hext y hy
  have hc : ∀ k, o'.cell k = o.cell k := fun k => by unfold Obj.cell; rw [hb]
  refine ⟨by rw [hc]; exact a, y', hy', by rw [ht']; exact ht, by rw [hb', hc]; exact hyb⟩

/-- The header cells of a `tLSTs` object of `Γ` are slots 0 and 1. -/
theorem lgEmp_slotC {C : Cfg} {p : Ptrs} {Γ : Gam} (hL : Layout C p Γ)
    (hmin : 16 ≤ (C.ty tLSTs).minSz) {o : Obj} (ho : o ∈ Γ)
    (hty : o.ty = tLSTs) {k : Nat} (hk : k < 2) : o.HasSlot k := by
  have h1 := (hL.1 o ho).2.2.2.1
  rw [hty] at h1
  unfold Obj.HasSlot
  omega

theorem lgEmp_slot {p : Ptrs} {Γ : Gam} (hL : Layout guestC p Γ) {o : Obj} (ho : o ∈ Γ)
    (hty : o.ty = tLSTs) {k : Nat} (hk : k < 2) : o.HasSlot k :=
  lgEmp_slotC hL (by decide) ho hty hk

/-- The header types of the frame log lists. -/
def HdrTy (t : Nat) : Prop := t = tLSTh ∨ t = tLSTs

/-- `N` / the `i`-th element of the list whose header is at `b`. -/
def LNn (m : Mem) (b : BitVec 64) : Nat := (rd m (b + BitVec.ofNat 64 8)).toNat
def LEl (m : Mem) (b : BitVec 64) (i : Nat) : BitVec 64 := rd m (rd m b + BitVec.ofNat 64 (8 * i))

/-- **What a log writer does to the lists.** -/
def LogSub (Γ Γ' : Gam) (hp' : Nat) (m m' : Mem) : Prop :=
  ∀ L ∈ Γ, HdrTy L.ty →
    (rd m' L.base = rd m L.base ∨ ∃ y ∈ Γ', y.base = rd m' L.base ∧ y.ty = tLSTAh) ∧
    ∀ i, i < LNn m' L.base →
      (∃ j, j < LNn m L.base ∧ LEl m' L.base i = LEl m L.base j) ∨ LogRecF Γ' hp' m' (LEl m' L.base i)

theorem logSub_trans {Γ Γ1 Γ2 : Gam} {p1 p2 : Ptrs} {m m1 m2 : Mem} (hord1 : p1.Ordered)
    (hord2 : p2.Ordered) (hm : p1.Mono p2) (hext1 : Ext Γ Γ1) (hext2 : Ext Γ1 Γ2)
    (hk : LogKeep Γ1 m1 m2)
    (h1 : LogSub Γ Γ1 p1.hp m m1) (h2 : LogSub Γ1 Γ2 p2.hp m1 m2) :
    LogSub Γ Γ2 p2.hp m m2 := by
  intro L hL hty
  obtain ⟨L1, hL1, hb, ht, -⟩ := hext1 L hL
  obtain ⟨hA1, hB1⟩ := h1 L hL hty
  obtain ⟨hA2, hB2⟩ := h2 L1 hL1 (ht ▸ hty)
  rw [hb] at hA2 hB2
  refine ⟨?_, fun i hi => ?_⟩
  · rcases hA2 with h | ⟨y, hy, hyb, hyt⟩
    · rcases hA1 with h' | ⟨y1, hy1, hy1b, hy1t⟩
      · exact Or.inl (h.trans h')
      · obtain ⟨y2, hy2, hb2, ht2, -⟩ := hext2 y1 hy1
        exact Or.inr ⟨y2, hy2, by rw [h, ← hy1b, hb2], by rw [ht2, hy1t]⟩
    · exact Or.inr ⟨y, hy, hyb, hyt⟩
  · rcases hB2 i hi with ⟨j, hj, he⟩ | hr
    · rcases hB1 j hj with ⟨k, hk, he1⟩ | hr1
      · exact Or.inl ⟨k, hk, he.trans he1⟩
      · exact Or.inr (he ▸ logRecF_step hm hext2 hk hr1)
    · exact Or.inr hr

/-- A list unchanged between two states satisfies `LogSub`. -/
theorem logSub_of_eq {Γ Γ' : Gam} {hp' : Nat} {m m' : Mem}
    (h : ∀ L ∈ Γ, HdrTy L.ty → rd m' L.base = rd m L.base ∧
      rd m' (L.base + BitVec.ofNat 64 8) = rd m (L.base + BitVec.ofNat 64 8) ∧
      ∀ i, i < LNn m L.base → LEl m' L.base i = LEl m L.base i) : LogSub Γ Γ' hp' m m' := by
  intro L hL hty
  obtain ⟨h1, h2, h3⟩ := h L hL hty
  refine ⟨Or.inl h1, fun i hi => ?_⟩
  have hi' : i < LNn m L.base := by unfold LNn at hi ⊢; rw [h2] at hi; exact hi
  exact Or.inl ⟨i, hi', h3 i hi'⟩

end InitECandidate.Solver.MemSafe
