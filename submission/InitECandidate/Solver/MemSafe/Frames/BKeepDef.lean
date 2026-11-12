import InitECandidate.Solver.MemSafe.Summary
import InitECandidate.Solver.MemSafe.Frames.Lib0

/-!
# Block keep: the definitions (package K)

`blockTys = [tBOS, tBO, tMCO]` are the types of the block driver's heap objects (the block output
record, its slice arrays, `process_message_call`'s output record). No function the frame loop
reaches writes their `prot` cells.

* `KCell C Γ a`: `a` is a `prot` cell of a `blockTys` object of `Γ` (`KCell0`), or one of the two address
  cells (`+16`, `+32`) of a heap message `tMSGh` of `Γ` (`MCell`; package PmM);
* `BKeep C Γ s t`: those cells are unchanged from `s` to `t`;
* `bkeep_refl`, `bkeep_trans` (through `Ext`), `bkeep_congr`, `bkeep_of_mem`, `bkeep_of_upd`.
-/

set_option autoImplicit false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact

variable {σ : Type}

/-- The block driver's object types: `tBOS` (slice arrays), `tBO` (the block output record),
`tMCO` (`process_message_call`'s output record). -/
def blockTys : List Nat := [76, 77, 78]

/-- The payload record types (`tTX`, `tPL`, `tSLA`, `tSI`): no capability names them, so nothing writes their
`prot` cells after decoding (package PmM). They have hooks, so they are not block types. -/
def recKTys : List Nat := [46, 49, 50, 51]

/-- The types whose `prot` cells `BKeep` keeps entirely: the block types and the payload records. -/
def bkTys : List Nat := blockTys ++ recKTys

theorem bk_blk {t : Nat} (h : t ∈ blockTys) : t ∈ bkTys := List.mem_append_left _ h

/-- The frame log list types (package L): headers `tLSTh`, `tLSTs`, arrays `tLSTAh`, `tLSTAs`. -/
def logTys : List Nat := [15, 16, 17, 18]

/-- A `prot` cell of a block object (`blockTys`) of `Γ`. -/
def KCell0 (C : Cfg) (Γ : Gam) (a : BitVec 64) : Prop :=
  ∃ o ∈ Γ, o.ty ∈ bkTys ∧ ∃ k, o.HasSlot k ∧ (C.ty o.ty).slot k = .prot ∧ a = o.cell k

/-- The heap message type (`Types.tMSGh`). -/
abbrev tMSGhK : Nat := 4

/-- **An address cell of a heap message**: slot 2 (`+16`) or 4 (`+32`) of a `tMSGh` object of `Γ`,
a `prot` cell (package PmM: once a message is adopted nothing writes them). -/
def MCell (C : Cfg) (Γ : Gam) (a : BitVec 64) : Prop :=
  ∃ o ∈ Γ, o.ty = tMSGhK ∧ ∃ k, (k = 2 ∨ k = 4) ∧ o.HasSlot k ∧ (C.ty o.ty).slot k = .prot ∧
    a = o.cell k

/-- The heap types whose (some) `prot` cells `BKeep` keeps. -/
def keepTys : List Nat := bkTys ++ [tMSGhK]

theorem keep_bk {t : Nat} (h : t ∈ bkTys) : t ∈ keepTys := List.mem_append_left _ h
theorem keep_blk {t : Nat} (h : t ∈ blockTys) : t ∈ keepTys := keep_bk (bk_blk h)
theorem keep_msg : tMSGhK ∈ keepTys := by decide

/-- **A `prot` cell of a block object** (`blockTys`; package K's original set: the cells `execute_block` may write
with its block capabilities). -/
def BCell (C : Cfg) (Γ : Gam) (a : BitVec 64) : Prop :=
  ∃ o ∈ Γ, o.ty ∈ blockTys ∧ ∃ k, o.HasSlot k ∧ (C.ty o.ty).slot k = .prot ∧ a = o.cell k

theorem bCell_prot {C : Cfg} {Γ : Gam} {a : BitVec 64} (h : BCell C Γ a) : ProtCell C Γ a :=
  let ⟨o, ho, _, k, hk, hp, he⟩ := h; ⟨o, ho, k, hk, hp, he⟩

/-- **A kept cell** (`BKeep`): a `prot` cell of a block object or a payload record (`bkTys`, `KCell0`), or a heap
message's address cell (`MCell`). -/
def KCell (C : Cfg) (Γ : Gam) (a : BitVec 64) : Prop := KCell0 C Γ a ∨ MCell C Γ a

/-- The message half of `BKeep`. -/
def MKeep {σ : Type} (C : Cfg) (Γ : Gam) (s t : State σ) : Prop :=
  ∀ o ∈ Γ, o.ty = tMSGhK → ∀ k, (k = 2 ∨ k = 4) → o.HasSlot k → (C.ty o.ty).slot k = .prot →
    rd t.memory (o.cell k) = rd s.memory (o.cell k)

/-- **Block keep** (package K, extended by PmM): every `prot` cell of a block object of `Γ`, and the
two address cells of every heap message of `Γ`, are the same in `t` as in `s`. -/
def BKeep {σ : Type} (C : Cfg) (Γ : Gam) (s t : State σ) : Prop :=
  (∀ o ∈ Γ, o.ty ∈ bkTys → ∀ k, o.HasSlot k → (C.ty o.ty).slot k = .prot →
    rd t.memory (o.cell k) = rd s.memory (o.cell k)) ∧ MKeep C Γ s t

theorem kCell_prot {C : Cfg} {Γ : Gam} {a : BitVec 64} (h : KCell C Γ a) : ProtCell C Γ a := by
  rcases h with ⟨o, ho, _, k, hk, hp, he⟩ | ⟨o, ho, _, k, _, hk, hp, he⟩
  · exact ⟨o, ho, k, hk, hp, he⟩
  · exact ⟨o, ho, k, hk, hp, he⟩

/-- **A kept cell is a `prot` cell of a `keepTys` object** (the uniform view of both kinds). -/
theorem kCell_of_bCell {C : Cfg} {Γ : Gam} {a : BitVec 64} (h : BCell C Γ a) : KCell C Γ a :=
  let ⟨o, ho, ht, k, hk, hp, he⟩ := h; Or.inl ⟨o, ho, bk_blk ht, k, hk, hp, he⟩

theorem kCell_keep {C : Cfg} {Γ : Gam} {a : BitVec 64} (h : KCell C Γ a) :
    ∃ o ∈ Γ, o.ty ∈ keepTys ∧ ∃ k, o.HasSlot k ∧ (C.ty o.ty).slot k = .prot ∧ a = o.cell k := by
  rcases h with ⟨o, ho, ht, k, hk, hp, he⟩ | ⟨o, ho, ht, k, _, hk, hp, he⟩
  · exact ⟨o, ho, keep_bk ht, k, hk, hp, he⟩
  · exact ⟨o, ho, by rw [ht]; exact keep_msg, k, hk, hp, he⟩

/-- **`BKeep` from all `prot` cells of the `keepTys` objects** (a convenient sufficient condition). -/
theorem bkeep_of_keepTys {σ : Type} {C : Cfg} {Γ : Gam} {s t : State σ}
    (h : ∀ o ∈ Γ, o.ty ∈ keepTys → ∀ k, o.HasSlot k → (C.ty o.ty).slot k = .prot →
      rd t.memory (o.cell k) = rd s.memory (o.cell k)) : BKeep C Γ s t :=
  ⟨fun o ho hty k hk hp => h o ho (keep_bk hty) k hk hp,
    fun o ho hty k _ hk hp => h o ho (by rw [hty]; exact keep_msg) k hk hp⟩

/-- A cell that is no `prot` cell of `Γ` is no kept cell. -/
theorem not_kCell_of_not_prot {C : Cfg} {Γ : Gam} {a : BitVec 64} (h : ¬ ProtCell C Γ a) :
    ¬ KCell C Γ a := fun hb => h (kCell_prot hb)

theorem bkeep_iff {C : Cfg} {Γ : Gam} {s t : State σ} :
    BKeep C Γ s t ↔ ∀ a, KCell C Γ a → rd t.memory a = rd s.memory a := by
  constructor
  · rintro ⟨h, hm⟩ a (⟨o, ho, ht, k, hk, hp, rfl⟩ | ⟨o, ho, ht, k, hk2, hk, hp, rfl⟩)
    · exact h o ho ht k hk hp
    · exact hm o ho ht k hk2 hk hp
  · intro h
    exact ⟨fun o ho ht k hk hp => h _ (Or.inl ⟨o, ho, ht, k, hk, hp, rfl⟩),
      fun o ho ht k hk2 hk hp => h _ (Or.inr ⟨o, ho, ht, k, hk2, hk, hp, rfl⟩)⟩

theorem mem_eq_of_rd {m m' : Mem} {a : BitVec 64} (h : rd m' a = rd m a) : m' a = m a := by
  unfold rd at h
  cases h1 : m' a
  cases h2 : m a
  rw [h1, h2] at h
  simp only at h
  rw [h]

theorem bkeep_refl (C : Cfg) (Γ : Gam) (s : State σ) : BKeep C Γ s s :=
  ⟨fun _ _ _ _ _ _ => rfl, fun _ _ _ _ _ _ _ => rfl⟩

theorem bkeep_trans {C : Cfg} {Γ Γ1 : Gam} {s u t : State σ} (hx : Ext Γ Γ1)
    (h1 : BKeep C Γ s u) (h2 : BKeep C Γ1 u t) : BKeep C Γ s t := by
  refine ⟨fun o ho hty k hk hp => ?_, fun o ho hty k hk2 hk hp => ?_⟩
  · obtain ⟨o', ho', hb, ht, hsz⟩ := hx o ho
    have hk' : o'.HasSlot k := by unfold Obj.HasSlot at hk ⊢; omega
    have hc : o'.cell k = o.cell k := by unfold Obj.cell; rw [hb]
    have := h2.1 o' ho' (by rw [ht]; exact hty) k hk' (by rw [ht]; exact hp)
    rw [hc] at this
    rw [this]
    exact h1.1 o ho hty k hk hp
  · obtain ⟨o', ho', hb, ht, hsz⟩ := hx o ho
    have hk' : o'.HasSlot k := by unfold Obj.HasSlot at hk ⊢; omega
    have hc : o'.cell k = o.cell k := by unfold Obj.cell; rw [hb]
    have := h2.2 o' ho' (by rw [ht]; exact hty) k hk2 hk' (by rw [ht]; exact hp)
    rw [hc] at this
    rw [this]
    exact h1.2 o ho hty k hk2 hk hp

theorem bkeep_congr {C : Cfg} {Γ : Gam} {s s' t t' : State σ} (hs : s'.memory = s.memory)
    (ht : t'.memory = t.memory) (h : BKeep C Γ s t) : BKeep C Γ s' t' := by
  refine ⟨fun o ho hty k hk hp => ?_, fun o ho hty k hk2 hk hp => ?_⟩
  · rw [hs, ht]; exact h.1 o ho hty k hk hp
  · rw [hs, ht]; exact h.2 o ho hty k hk2 hk hp

theorem bkeep_of_mem {C : Cfg} {Γ : Gam} {s t : State σ} (h : t.memory = s.memory) :
    BKeep C Γ s t := ⟨fun _ _ _ _ _ _ => by rw [h], fun _ _ _ _ _ _ _ => by rw [h]⟩

/-- A change confined to cells that are no block cells keeps the block cells. -/
theorem bkeep_of_cells {C : Cfg} {Γ : Gam} {s t : State σ} {Z : BitVec 64 → Prop}
    (hmod : ModifiesOnly Z s.memory t.memory) (hZ : ∀ a, Z a → ¬ KCell C Γ a) : BKeep C Γ s t :=
  bkeep_iff.mpr fun a ha => by unfold rd; rw [hmod a fun hz => hZ a hz ha]

/-- A store at a cell that is no `prot` cell of a block object. -/
theorem bkeep_of_upd {C : Cfg} {Γ : Gam} {s t : State σ} {a : BitVec 64} {x : BitVec 64}
    (hB : BKeep C Γ s t) (ha : ¬ KCell C Γ a) :
    BKeep C Γ s { t with memory := upd t.memory a x } := by
  refine bkeep_iff.mpr fun b hb => ?_
  have h := bkeep_iff.mp hB b hb
  have hne : b ≠ a := fun he => ha (he ▸ hb)
  show rd (upd t.memory a x) b = _
  unfold rd at h ⊢
  rw [upd_ne _ _ hne]; exact h

end InitECandidate.Solver.MemSafe.Frames
