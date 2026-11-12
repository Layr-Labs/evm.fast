import InitECandidate.Solver.Spec.Fq12.Submul

/-!
# Byte views against word stores

* `wslot_inBuf`: the word cells of coefficient `m < 13` belong to the buffer.
* `ba_slot_aligned`: for an aligned buffer, the byte `i` of coefficient `k` lives in the word
  cell `k * 32 + 8 ⌊i / 8⌋`; `ba_ne_wslot_unaligned`: for an unaligned buffer no byte lives
  in a word cell of a coefficient.
* `slotZ_iff_words`: for an aligned buffer a coefficient is byte-zero iff its four words
  are zero (and readable).
* `slotZ_frame'`, `slotNZ_frame'`: the byte view of coefficient `k` only reads its byte
  cells.
-/

namespace InitECandidate.Solver.Spec.Fq12
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

theorem wslot_inBuf {x m c : BitVec 64} (hm : m.toNat < 13) (h : WSlot (sl x m) c) : InBuf x c := by
  obtain ⟨j, hj, rfl⟩ := h
  refine ⟨m.toNat * 32 + 8 * j, by omega, Or.inl ?_⟩
  bv_omega

theorem ba_mod8 (x : BitVec 64) : (ba x).toNat % 8 = 0 := by
  rw [ba_toNat]; omega

/-- The byte cell of byte `i` of coefficient `k` of an aligned buffer. -/
theorem ba_slot_aligned {x k i : BitVec 64} (hx : x.toNat % 8 = 0) (hk : k.toNat < 13)
    (hi : i.toNat < 32) :
    ba (x + k * 32 + i) = sl x k + BitVec.ofNat 64 (8 * (i.toNat / 8)) := by
  apply BitVec.eq_of_toNat_eq
  rw [ba_toNat]
  simp only [sl, BitVec.toNat_add, BitVec.toNat_mul, BitVec.toNat_ofNat]
  have := x.isLt
  have h32 : (32 : BitVec 64).toNat = 32 := rfl
  rw [h32]
  rw [Nat.mod_eq_of_lt (a := k.toNat * 32) (by omega), Nat.mod_eq_of_lt (a := 8 * (i.toNat / 8)) (by omega)]
  omega

/-- In an unaligned buffer, no byte cell is a word cell of a coefficient. -/
theorem ba_ne_wslot_unaligned {x m c y : BitVec 64} (hx : x.toNat % 8 ≠ 0)
    (h : WSlot (sl x m) c) : c ≠ ba y := by
  obtain ⟨j, hj, rfl⟩ := h
  intro he
  have h1 := ba_mod8 y
  rw [← he] at h1
  simp only [sl, BitVec.toNat_add, BitVec.toNat_mul, BitVec.toNat_ofNat] at h1
  have := x.isLt
  have h32 : (BitVec.ofNat 64 32 : BitVec 64).toNat = 32 := rfl
  omega

/-- In an aligned buffer, the byte cells of coefficient `k` are not word cells of another
coefficient `m`. -/
theorem ba_ne_wslot_aligned {x k m i c : BitVec 64} (hx : x.toNat % 8 = 0) (hk : k.toNat < 13)
    (hm : m.toNat < 13) (hkm : k ≠ m) (hi : i.toNat < 32) (h : WSlot (sl x m) c) :
    c ≠ ba (x + k * 32 + i) := by
  rw [ba_slot_aligned hx hk hi]
  obtain ⟨j, hj, rfl⟩ := h
  intro he
  apply hkm
  apply BitVec.eq_of_toNat_eq
  have := congrArg BitVec.toNat he
  simp only [sl, BitVec.toNat_add, BitVec.toNat_mul, BitVec.toNat_ofNat] at this
  omega

variable {σ : Type}

theorem slotZ_frame' {s t : PanSemStateFiniteExact 64 σ} {a k : BitVec 64}
    (hd : t.memaddrs = s.memaddrs) (hbe : t.be = s.be)
    (hm : ∀ i : BitVec 64, i.toNat < 32 → t.memory (ba (a + k * 32 + i)) = s.memory (ba (a + k * 32 + i)))
    (h : SlotZ s a k) : SlotZ t a k := by
  intro i hi
  unfold ByteZ
  rw [rdB_frame hd hbe (hm i hi)]
  exact h i hi

theorem slotNZ_frame' {s t : PanSemStateFiniteExact 64 σ} {a k : BitVec 64}
    (hd : t.memaddrs = s.memaddrs) (hbe : t.be = s.be)
    (hm : ∀ i : BitVec 64, i.toNat < 32 → t.memory (ba (a + k * 32 + i)) = s.memory (ba (a + k * 32 + i)))
    (h : SlotNZ s a k) : SlotNZ t a k := by
  obtain ⟨i, hi, b, hb, hb0⟩ := h
  refine ⟨i, hi, b, ?_, hb0⟩
  rw [rdB_frame hd hbe (hm i hi)]
  exact hb

/-! ## Bytes of a word -/

theorem byte_zero_of_word {w : BitVec 64} (h : ∀ b : Nat, b < 8 → (w.toNat / 256 ^ b) % 256 = 0) :
    w = 0 := by
  have hw := w.isLt
  apply BitVec.eq_of_toNat_eq
  have h0 := h 0 (by omega); have h1 := h 1 (by omega); have h2 := h 2 (by omega)
  have h3 := h 3 (by omega); have h4 := h 4 (by omega); have h5 := h 5 (by omega)
  have h6 := h 6 (by omega); have h7 := h 7 (by omega)
  simp only [Nat.pow_zero, Nat.div_one, Nat.pow_one] at h0 h1
  norm_num at h2 h3 h4 h5 h6 h7
  show w.toNat = 0
  omega

theorem getByte_zero (x : BitVec 64) (be : Bool) : panGetByteHOL x 0 be = 0 := by
  simp [panGetByteHOL]

theorem slot_addr_mod8 {x k i : BitVec 64} (hx : x.toNat % 8 = 0) :
    (x + k * 32 + i).toNat % 8 = i.toNat % 8 := by
  simp only [BitVec.toNat_add, BitVec.toNat_mul]
  have h32 : (32 : BitVec 64).toNat = 32 := rfl
  rw [h32]
  omega

theorem dom4_cell {D : BitVec 64 → Prop} {y : BitVec 64} (h : Dom4 D y) {j : Nat} (hj : j < 4) :
    D (y + BitVec.ofNat 64 (8 * j)) := by
  obtain ⟨h0, h1, h2, h3⟩ := h
  rcases (show j = 0 ∨ j = 1 ∨ j = 2 ∨ j = 3 by omega) with rfl | rfl | rfl | rfl
  · simpa using h0
  · exact h1
  · exact h2
  · exact h3

theorem words4_cell {m : BitVec 64 → HolWordLab 64} {y : BitVec 64} {ws : List (BitVec 64)}
    (h : words4 m y = ws) {j : Nat} (hj : j < 4) :
    cellW m (y + BitVec.ofNat 64 (8 * j)) = ws.getD j 0 := by
  subst h
  rcases (show j = 0 ∨ j = 1 ∨ j = 2 ∨ j = 3 by omega) with rfl | rfl | rfl | rfl
  · simp [words4]
  · rfl
  · rfl
  · rfl

/-- In an aligned buffer, zero words make a byte-zero coefficient. -/
theorem slotZ_of_words_zero {s : PanSemStateFiniteExact 64 σ} {x k : BitVec 64}
    (hx : x.toNat % 8 = 0) (hk : k.toNat < 13) (hdom : Dom4 s.memaddrs (sl x k))
    (hz : words4 s.memory (sl x k) = [0, 0, 0, 0]) : SlotZ s x k := by
  intro i hi
  unfold ByteZ rdB
  rw [loadByte_eq, ba_slot_aligned hx hk hi, if_pos (dom4_cell hdom (by omega)),
    words4_cell hz (by omega)]
  have : ([0, 0, 0, 0] : List (BitVec 64)).getD (i.toNat / 8) 0 = 0 := by
    rcases (show i.toNat / 8 = 0 ∨ i.toNat / 8 = 1 ∨ i.toNat / 8 = 2 ∨ i.toNat / 8 = 3 by omega)
      with h | h | h | h <;> rw [h] <;> rfl
  rw [this, getByte_zero]

theorem uint8_ofNat_eq_zero {n : Nat} (h : UInt8.ofNat n = 0) : n % 256 = 0 := by
  have := congrArg UInt8.toNat h
  simpa [UInt8.toNat_ofNat] using this

/-- In an aligned buffer, a byte-zero coefficient has zero words. -/
theorem words_zero_of_slotZ {s : PanSemStateFiniteExact 64 σ} {x k : BitVec 64}
    (hx : x.toNat % 8 = 0) (hk : k.toNat < 13) (h : SlotZ s x k) :
    ∀ j : Nat, j < 4 → cellW s.memory (sl x k + BitVec.ofNat 64 (8 * j)) = 0 := by
  intro j hj
  apply byte_zero_of_word
  intro b hb
  -- byte `8 j + b'` of the coefficient reads digit `b` of the word
  have key : ∀ b' : Nat, b' < 8 → ((cellW s.memory (sl x k + BitVec.ofNat 64 (8 * j))).toNat /
      256 ^ (if s.be then 8 - 1 - b' else b')) % 256 = 0 := by
    intro b' hb'
    have hi : (BitVec.ofNat 64 (8 * j + b')).toNat < 32 := by
      rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]; omega
    have hz := h _ hi
    unfold ByteZ rdB at hz
    rw [loadByte_eq, ba_slot_aligned hx hk hi] at hz
    split at hz
    · simp only [Option.some.injEq] at hz
      have hidx : (BitVec.ofNat 64 (8 * j + b')).toNat / 8 = j := by
        rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]; omega
      rw [hidx] at hz
      unfold panGetByteHOL at hz
      simp only at hz
      have hm := slot_addr_mod8 (k := k) (i := BitVec.ofNat 64 (8 * j + b')) hx
      rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := 8 * j + b') (by omega)] at hm
      have hm' : (8 * j + b') % 8 = b' := by omega
      rw [hm, hm'] at hz
      have h2 := uint8_ofNat_eq_zero hz
      rw [Nat.mod_mod, show 64 / 8 = 8 from rfl] at h2
      exact h2
    · simp at hz
  by_cases hbe : s.be
  · have := key (7 - b) (by omega)
    rw [if_pos hbe, show 8 - 1 - (7 - b) = b by omega] at this
    exact this
  · have := key b hb
    rw [if_neg hbe] at this
    exact this

end InitECandidate.Solver.Spec.Fq12
