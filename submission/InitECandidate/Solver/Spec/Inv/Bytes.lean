import InitECandidate.Solver.Spec.Inv.HtabDelMem
import Mathlib.Tactic.IntervalCases

/-!
# Bytes of memory words

The memory is a map from addresses to words. A byte access at `a` reads or writes the word
at `panByteAlignHOL a` (`a` rounded down to a multiple of 8), at byte index `bix a be`
(`a % 8`, mirrored for big-endian). This file proves the arithmetic facts the content specs
of `memcpy`, `memeq` and `htab_first_diff` need:

* `getByte_setByte_self` / `getByte_setByte_ne`: reading back a written byte, and reading
  another byte of the same word;
* `word_of_bytes`: a word is determined by its eight bytes;
* `kbyte_storeByte` / `kbyte_upd`: `kbyte` after a byte store and after a word store;
* `bit_xor`, `byte_of_bits`: the bit tests of `htab_first_diff` and of the walk.
-/

namespace InitECandidate.Solver.Spec.Inv
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-! ## Nat arithmetic -/

theorem setget_nat (v b k j : Nat) (hv : v < 2 ^ 64) (hb : b < 256) (hk : k < 8) (hj : j < 8) :
    (v % 256 ^ k + b * 256 ^ k + v / (256 ^ k * 256) * (256 ^ k * 256)) / 256 ^ j % 256 =
      if j = k then b else v / 256 ^ j % 256 := by
  interval_cases k <;> interval_cases j <;> simp <;> omega

theorem setget_lt (v b k : Nat) (hv : v < 2 ^ 64) (hb : b < 256) (hk : k < 8) :
    v % 256 ^ k + b * 256 ^ k + v / (256 ^ k * 256) * (256 ^ k * 256) < 2 ^ 64 := by
  interval_cases k <;> simp <;> omega

theorem bytes_inj (x y : Nat) (hx : x < 2 ^ 64) (hy : y < 2 ^ 64)
    (h : ∀ k < 8, x / 256 ^ k % 256 = y / 256 ^ k % 256) : x = y := by
  have h0 := h 0 (by decide); have h1 := h 1 (by decide); have h2 := h 2 (by decide)
  have h3 := h 3 (by decide); have h4 := h 4 (by decide); have h5 := h 5 (by decide)
  have h6 := h 6 (by decide); have h7 := h 7 (by decide)
  simp at h0 h1 h2 h3 h4 h5 h6 h7
  omega

/-! ## Byte index, get and set -/

/-- The byte index of address `a` in its word. -/
def bix (a : BitVec 64) (be : Bool) : Nat := if be then 7 - a.toNat % 8 else a.toNat % 8

theorem bix_lt (a : BitVec 64) (be : Bool) : bix a be < 8 := by
  unfold bix; split <;> omega

theorem bix_eq_iff {a a' : BitVec 64} {be : Bool} : bix a be = bix a' be ↔ a.toNat % 8 = a'.toNat % 8 := by
  unfold bix; split <;> omega

theorem getByte_eq (a v : BitVec 64) (be : Bool) :
    panGetByteHOL a v be = UInt8.ofNat (v.toNat / 256 ^ bix a be % 256) := by
  unfold panGetByteHOL bix
  cases be <;> rfl

theorem setByte_toNat (a b v : BitVec 64) (be : Bool) :
    (panSetByteHOL a b v be).toNat = v.toNat % 256 ^ bix a be + (b.toNat % 256) * 256 ^ bix a be +
      v.toNat / (256 ^ bix a be * 256) * (256 ^ bix a be * 256) := by
  have hb : bix a be = (if be then 64 / 8 - a.toNat % (64 / 8) - 1 else a.toNat % (64 / 8)) := by
    unfold bix; cases be <;> simp <;> omega
  unfold panSetByteHOL
  simp only []
  rw [← hb, BitVec.toNat_ofNat]
  exact Nat.mod_eq_of_lt (setget_lt _ _ _ v.isLt (Nat.mod_lt _ (by decide)) (bix_lt a be))

theorem uint8_ofNat_inj {x y : Nat} (hx : x < 256) (hy : y < 256) (h : UInt8.ofNat x = UInt8.ofNat y) :
    x = y := by
  have := congrArg UInt8.toNat h
  rw [UInt8.toNat_ofNat', UInt8.toNat_ofNat', Nat.mod_eq_of_lt hx, Nat.mod_eq_of_lt hy] at this
  exact this

/-- Reading back a written byte. -/
theorem getByte_setByte_self (a b v : BitVec 64) (be : Bool) :
    panGetByteHOL a (panSetByteHOL a b v be) be = UInt8.ofNat (b.toNat % 256) := by
  rw [getByte_eq, setByte_toNat,
    setget_nat _ _ _ _ v.isLt (Nat.mod_lt _ (by decide)) (bix_lt a be) (bix_lt a be), if_pos rfl]

/-- Reading another byte of the written word. -/
theorem getByte_setByte_ne {a a' b v : BitVec 64} {be : Bool} (h : a'.toNat % 8 ≠ a.toNat % 8) :
    panGetByteHOL a' (panSetByteHOL a b v be) be = panGetByteHOL a' v be := by
  rw [getByte_eq, getByte_eq, setByte_toNat,
    setget_nat _ _ _ _ v.isLt (Nat.mod_lt _ (by decide)) (bix_lt a be) (bix_lt a' be),
    if_neg (fun e => h (bix_eq_iff.mp e))]

theorem getByte_congr {a a' v : BitVec 64} {be : Bool} (h : a.toNat % 8 = a'.toNat % 8) :
    panGetByteHOL a v be = panGetByteHOL a' v be := by
  rw [getByte_eq, getByte_eq, bix_eq_iff.mpr h]

/-- A word is determined by the bytes at the eight addresses of an aligned cell. -/
theorem word_of_bytes {c c' v v' : BitVec 64} {be : Bool} (hc : c.toNat % 8 = 0) (hc' : c'.toNat % 8 = 0)
    (h : ∀ j : Nat, j < 8 → panGetByteHOL (c + BitVec.ofNat 64 j) v be =
      panGetByteHOL (c' + BitVec.ofNat 64 j) v' be) : v = v' := by
  apply BitVec.eq_of_toNat_eq
  apply bytes_inj _ _ v.isLt v'.isLt
  intro k hk
  have hcj : ∀ (c : BitVec 64), c.toNat % 8 = 0 → ∀ j < 8, (c + BitVec.ofNat 64 j).toNat % 8 = j := by
    intro c hc j hj
    have := c.isLt
    rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := j) (by omega)]
    omega
  let j := if be then 7 - k else k
  have hj : j < 8 := by show (if be then 7 - k else k) < 8; split <;> omega
  have hbix : ∀ (c : BitVec 64), c.toNat % 8 = 0 → bix (c + BitVec.ofNat 64 j) be = k := by
    intro c hc
    unfold bix
    rw [hcj c hc j hj]
    show (if be then 7 - (if be then 7 - k else k) else (if be then 7 - k else k)) = k
    cases be <;> simp <;> omega
  have := h j hj
  rw [getByte_eq, getByte_eq, hbix c hc, hbix c' hc'] at this
  exact uint8_ofNat_inj (Nat.mod_lt _ (by decide)) (Nat.mod_lt _ (by decide)) this

/-! ## `kbyte` after stores -/

open Classical in
theorem kbyte_eq (m : Mem) (d : BitVec 64 → Prop) (be : Bool) (a : BitVec 64) :
    kbyte m d be a = if d (panByteAlignHOL a) then
      some (panGetByteHOL a (rd m (panByteAlignHOL a)) be) else none := by
  unfold kbyte panMemLoadByteHOL
  simp only []
  rw [mem_word m (panByteAlignHOL a)]

theorem align_of_aligned {c : BitVec 64} (hc : c.toNat % 8 = 0) {j : Nat} (hj : j < 8) :
    panByteAlignHOL (c + BitVec.ofNat 64 j) = c := by
  apply BitVec.eq_of_toNat_eq
  rw [align_toNat]
  have := c.isLt
  rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := j) (by omega)]
  omega

theorem align_self {c : BitVec 64} (hc : c.toNat % 8 = 0) : panByteAlignHOL c = c := by
  apply BitVec.eq_of_toNat_eq
  rw [align_toNat]
  omega

theorem align_eq_iff {a a' : BitVec 64} :
    panByteAlignHOL a = panByteAlignHOL a' ↔ a.toNat / 8 = a'.toNat / 8 := by
  constructor
  · intro h
    have := congrArg BitVec.toNat h
    rw [align_toNat, align_toNat] at this
    omega
  · intro h
    apply BitVec.eq_of_toNat_eq
    rw [align_toNat, align_toNat, h]

/-- What a byte store produces. -/
theorem storeByte_eq {m m' : Mem} {d : BitVec 64 → Prop} {be : Bool} {a : BitVec 64} {b : BitVec 8}
    (h : @panMemStoreByteWord8HOL 64 _ m d (fun y => Classical.propDecidable (d y)) be a b = some m') :
    d (panByteAlignHOL a) ∧ m' = upd m (panByteAlignHOL a)
      (panSetByteHOL a (BitVec.ofNat 64 b.toNat) (rd m (panByteAlignHOL a)) be) := by
  unfold panMemStoreByteWord8HOL at h
  simp only [] at h
  rw [mem_word m (panByteAlignHOL a)] at h
  simp only [] at h
  split at h
  · rename_i hd
    refine ⟨hd, ?_⟩
    simp only [Option.some.injEq] at h
    rw [← h]
    funext c
    unfold upd
    rfl
  · simp at h

/-- `kbyte` after a byte store at `a`. -/
theorem kbyte_storeByte {m : Mem} {d : BitVec 64 → Prop} {be : Bool} {a a' : BitVec 64} {b : BitVec 64}
    (hd : d (panByteAlignHOL a)) :
    kbyte (upd m (panByteAlignHOL a) (panSetByteHOL a b (rd m (panByteAlignHOL a)) be)) d be a' =
      if a' = a then some (UInt8.ofNat (b.toNat % 256)) else kbyte m d be a' := by
  rw [kbyte_eq, kbyte_eq]
  by_cases hal : panByteAlignHOL a' = panByteAlignHOL a
  · rw [hal, rd_upd_self, if_pos hd, if_pos hd]
    by_cases ha : a' = a
    · subst ha; rw [if_pos rfl, getByte_setByte_self]
    · rw [if_neg ha, getByte_setByte_ne]
      intro hm
      apply ha
      have := align_eq_iff.mp hal
      apply BitVec.eq_of_toNat_eq
      omega
  · have ha : a' ≠ a := fun e => hal (by rw [e])
    rw [if_neg ha, rd_upd_ne hal]

open Classical in
/-- `kbyte` after a word store at the aligned cell `c`. -/
theorem kbyte_upd {m : Mem} {d : BitVec 64 → Prop} {be : Bool} {c w a' : BitVec 64} :
    kbyte (upd m c w) d be a' =
      if panByteAlignHOL a' = c then (if d c then some (panGetByteHOL a' w be) else none)
      else kbyte m d be a' := by
  rw [kbyte_eq, kbyte_eq]
  by_cases hal : panByteAlignHOL a' = c
  · rw [if_pos hal, hal, rd_upd_self]
  · rw [if_neg hal, rd_upd_ne hal]

open Classical in
theorem kbyte_isSome {m : Mem} {d : BitVec 64 → Prop} {be : Bool} {a : BitVec 64} :
    (kbyte m d be a).isSome ↔ d (panByteAlignHOL a) := by
  rw [kbyte_eq]
  by_cases h : d (panByteAlignHOL a) <;> simp [h]

/-! ## Bits of bytes -/

theorem byte_bit_iff (x : BitVec 64) (s : Nat) :
    ((x >>> s) &&& BitVec.ofNat 64 1) = BitVec.ofNat 64 0 ↔ x.getLsbD s = false := by
  constructor
  · intro h
    have := congrArg (fun y => y.getLsbD 0) h
    simp only [BitVec.getLsbD_and, BitVec.getLsbD_ushiftRight, Nat.add_zero] at this
    simpa using this
  · intro h
    apply BitVec.eq_of_getLsbD_eq
    intro i hi
    simp only [BitVec.getLsbD_and, BitVec.getLsbD_ushiftRight]
    by_cases hi0 : i = 0
    · subst hi0; simp [h]
    · obtain ⟨k, rfl⟩ : ∃ k, i = k + 1 := ⟨i - 1, by omega⟩
      simp [BitVec.getLsbD_ofNat, Nat.testBit_succ]

theorem bit_xor (x y : BitVec 64) (s : Nat) :
    (((x ^^^ y) >>> s) &&& BitVec.ofNat 64 1) = BitVec.ofNat 64 0 ↔
      x.getLsbD s = y.getLsbD s := by
  rw [byte_bit_iff, BitVec.getLsbD_xor]
  cases x.getLsbD s <;> cases y.getLsbD s <;> simp

/-- A byte (a word below 256) is determined by its bits `0 .. 7`. -/
theorem byte_of_bits {x y : BitVec 64} (hx : x.toNat < 256) (hy : y.toNat < 256)
    (h : ∀ s < 8, x.getLsbD s = y.getLsbD s) : x = y := by
  apply BitVec.eq_of_getLsbD_eq
  intro i hi
  by_cases hs : i < 8
  · exact h i hs
  · have h1 : x.getLsbD i = false := by
      rw [BitVec.getLsbD, Nat.testBit_lt_two_pow (Nat.lt_of_lt_of_le hx
        (by rw [show (256 : Nat) = 2 ^ 8 by decide]; exact Nat.pow_le_pow_right (by decide) (by omega)))]
    have h2 : y.getLsbD i = false := by
      rw [BitVec.getLsbD, Nat.testBit_lt_two_pow (Nat.lt_of_lt_of_le hy
        (by rw [show (256 : Nat) = 2 ^ 8 by decide]; exact Nat.pow_le_pow_right (by decide) (by omega)))]
    rw [h1, h2]

theorem ofNat_byte_lt (b : UInt8) : (BitVec.ofNat 64 b.toNat).toNat < 256 := by
  rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (Nat.lt_trans b.toNat_lt (by decide))]
  exact b.toNat_lt

theorem ofNat_byte_inj {b b' : UInt8} (h : BitVec.ofNat 64 b.toNat = BitVec.ofNat 64 b'.toNat) :
    b = b' := by
  have := congrArg BitVec.toNat h
  rw [BitVec.toNat_ofNat, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (Nat.lt_trans b.toNat_lt (by decide)),
    Nat.mod_eq_of_lt (Nat.lt_trans b'.toNat_lt (by decide))] at this
  exact UInt8.toNat_inj.mp this

end InitECandidate.Solver.Spec.Inv
