import InitECandidate.Solver.Spec.Fq12.CodeFq12Inv

/-!
# Byte and word views of the coefficient buffers

The guest memory is a total map from addresses to words (`HolWordLab` has the single
constructor `word`). A byte load at `x` reads the cell `ba x` (`panByteAlignHOL`, the
address with its low three bits cleared); a word load or store at `x` reads or writes the
cell `x` itself. `fq_poly_deg` reads the 32 bytes of a coefficient (`ByteZ`, `SlotZ`,
`DegFacts`), the division loop reads and writes its four words.

* `cellW`, `rdB`, `ByteZ`, `ByteNZ`, `SlotZ`, `SlotNZ`, `DegFacts`.
* `InBuf x c`: the cell `c` is one of the cells a 416-byte buffer at `x` is accessed
  through (`x + i` or `ba (x + i)`, `i < 416`); `Disj x y` for disjoint buffers.
* `rdB_frame`, `slotZ_frame`, `degFacts_frame`: views depend only on their cells.
* `degFacts_unique`.
-/

namespace InitECandidate.Solver.Spec.Fq12
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-- The word stored in a cell. -/
def cellW (m : BitVec 64 → HolWordLab 64) (c : BitVec 64) : BitVec 64 :=
  match m c with
  | .word w => w

theorem cell_eq (m : BitVec 64 → HolWordLab 64) (c : BitVec 64) : m c = .word (cellW m c) := by
  unfold cellW
  cases m c
  rfl

/-- `byte_align` on 64-bit words. -/
abbrev ba (x : BitVec 64) : BitVec 64 := panByteAlignHOL x

theorem ba_toNat (x : BitVec 64) : (ba x).toNat = x.toNat - x.toNat % 8 := by
  show (BitVec.ofNat 64 ((x.toNat / 2 ^ Nat.log2 (64 / 8)) * 2 ^ Nat.log2 (64 / 8))).toNat = _
  rw [show Nat.log2 (64 / 8) = 3 by decide, BitVec.toNat_ofNat]
  have := x.isLt
  have h := Nat.div_add_mod x.toNat (2 ^ 3)
  rw [Nat.mod_eq_of_lt (by omega)]
  omega

variable {σ : Type}

/-- The byte at `x` as the byte load reads it. -/
noncomputable def rdB (s : PanSemStateFiniteExact 64 σ) (x : BitVec 64) : Option UInt8 :=
  @panMemLoadByteHOL 64 _ s.memory s.memaddrs (fun a => Classical.propDecidable (s.memaddrs a))
    s.be x

def ByteZ (s : PanSemStateFiniteExact 64 σ) (x : BitVec 64) : Prop := rdB s x = some 0
def ByteNZ (s : PanSemStateFiniteExact 64 σ) (x : BitVec 64) : Prop :=
  ∃ b, rdB s x = some b ∧ b ≠ 0

theorem byteZ_not_NZ {s : PanSemStateFiniteExact 64 σ} {x : BitVec 64} (h : ByteZ s x) :
    ¬ ByteNZ s x := by
  rintro ⟨b, hb, hb0⟩
  rw [ByteZ, hb] at h
  exact hb0 (Option.some.inj h)

/-- The 32 bytes of coefficient `k` of the buffer at `a` are zero. -/
def SlotZ (s : PanSemStateFiniteExact 64 σ) (a k : BitVec 64) : Prop :=
  ∀ i : BitVec 64, i.toNat < 32 → ByteZ s (a + k * 32 + i)

def SlotNZ (s : PanSemStateFiniteExact 64 σ) (a k : BitVec 64) : Prop :=
  ∃ i : BitVec 64, i.toNat < 32 ∧ ByteNZ s (a + k * 32 + i)

theorem slotZ_not_NZ {s : PanSemStateFiniteExact 64 σ} {a k : BitVec 64} (h : SlotZ s a k) :
    ¬ SlotNZ s a k := by
  rintro ⟨i, hi, hnz⟩
  exact byteZ_not_NZ (h i hi) hnz

/-- `d` is the degree `fq_poly_deg(a, 13)` reports: `-1` for the zero polynomial, else the
index of the highest coefficient with a nonzero byte. -/
def DegFacts (s : PanSemStateFiniteExact 64 σ) (a d : BitVec 64) : Prop :=
  (d = 0 - 1 ∧ ∀ k : BitVec 64, k.toNat < 13 → SlotZ s a k) ∨
  (d.toNat < 13 ∧ SlotNZ s a d ∧ ∀ k : BitVec 64, d.toNat < k.toNat → k.toNat < 13 → SlotZ s a k)

theorem m1_toNat : (0 - 1 : BitVec 64).toNat = 2 ^ 64 - 1 := by decide

theorem degFacts_unique {s : PanSemStateFiniteExact 64 σ} {a d d' : BitVec 64}
    (h : DegFacts s a d) (h' : DegFacts s a d') : d = d' := by
  rcases h with ⟨rfl, hz⟩ | ⟨hd, hnz, hz⟩ <;> rcases h' with ⟨rfl, hz'⟩ | ⟨hd', hnz', hz'⟩
  · rfl
  · exact absurd hnz' (slotZ_not_NZ (hz d' hd'))
  · exact absurd hnz (slotZ_not_NZ (hz' d hd))
  · rcases Nat.lt_trichotomy d.toNat d'.toNat with hlt | heq | hgt
    · exact absurd hnz' (slotZ_not_NZ (hz d' hlt hd'))
    · exact BitVec.eq_of_toNat_eq heq
    · exact absurd hnz (slotZ_not_NZ (hz' d hgt hd))

/-- The measure of the division loops: `deg + 1`, `0` for the zero polynomial. -/
def degM (d : BitVec 64) : Nat := if d = 0 - 1 then 0 else d.toNat + 1

theorem degM_le {s : PanSemStateFiniteExact 64 σ} {a d : BitVec 64} (h : DegFacts s a d) :
    degM d ≤ 13 := by
  unfold degM
  rcases h with ⟨rfl, -⟩ | ⟨hd, -, -⟩
  · simp
  · split <;> omega

/-! ## Frames -/

theorem loadByte_eq (m : BitVec 64 → HolWordLab 64) (dom : BitVec 64 → Prop)
    (inst : DecidablePred dom) (be : Bool) (x : BitVec 64) :
    @panMemLoadByteHOL 64 _ m dom inst be x =
      if dom (ba x) then some (panGetByteHOL x (cellW m (ba x)) be) else none := by
  unfold panMemLoadByteHOL
  dsimp only
  have h := cell_eq m (ba x)
  revert h
  generalize m (ba x) = w
  intro h
  cases w with
  | word v =>
      simp only [HolWordLab.word.injEq] at h
      rw [← h]

theorem rdB_frame {s t : PanSemStateFiniteExact 64 σ} {x : BitVec 64}
    (hd : t.memaddrs = s.memaddrs) (hbe : t.be = s.be) (hm : t.memory (ba x) = s.memory (ba x)) :
    rdB t x = rdB s x := by
  unfold rdB
  rw [loadByte_eq, loadByte_eq, hbe]
  have e3 : cellW t.memory (ba x) = cellW s.memory (ba x) := by unfold cellW; rw [hm]
  rw [e3]
  by_cases h1 : s.memaddrs (ba x)
  · rw [if_pos h1, if_pos (by rw [hd]; exact h1)]
  · rw [if_neg h1, if_neg (by rw [hd]; exact h1)]

/-- The cells a 416-byte buffer at `x` is accessed through. -/
def InBuf (x c : BitVec 64) : Prop :=
  ∃ i : Nat, i < 416 ∧ (c = x + BitVec.ofNat 64 i ∨ c = ba (x + BitVec.ofNat 64 i))

def Disj (x y : BitVec 64) : Prop := ∀ c, InBuf x c → InBuf y c → False

theorem Disj.symm {x y : BitVec 64} (h : Disj x y) : Disj y x := fun c hy hx => h c hx hy

theorem slot_off (a k i : BitVec 64) (hk : k.toNat < 13) (hi : i.toNat < 32) :
    a + k * 32 + i = a + BitVec.ofNat 64 (k.toNat * 32 + i.toNat) := by
  bv_omega

theorem inBuf_byte (a k i : BitVec 64) (hk : k.toNat < 13) (hi : i.toNat < 32) :
    InBuf a (ba (a + k * 32 + i)) :=
  ⟨k.toNat * 32 + i.toNat, by omega, Or.inr (by rw [slot_off a k i hk hi])⟩

/-- A byte view of a slot only depends on its cells. -/
theorem slotZ_frame {s t : PanSemStateFiniteExact 64 σ} {a k : BitVec 64} (hk : k.toNat < 13)
    (hd : t.memaddrs = s.memaddrs) (hbe : t.be = s.be)
    (hm : ∀ c, InBuf a c → t.memory c = s.memory c) (h : SlotZ s a k) : SlotZ t a k := by
  intro i hi
  unfold ByteZ
  rw [rdB_frame hd hbe (hm _ (inBuf_byte a k i hk hi))]
  exact h i hi

theorem slotNZ_frame {s t : PanSemStateFiniteExact 64 σ} {a k : BitVec 64} (hk : k.toNat < 13)
    (hd : t.memaddrs = s.memaddrs) (hbe : t.be = s.be)
    (hm : ∀ c, InBuf a c → t.memory c = s.memory c) (h : SlotNZ s a k) : SlotNZ t a k := by
  obtain ⟨i, hi, b, hb, hb0⟩ := h
  refine ⟨i, hi, b, ?_, hb0⟩
  rw [rdB_frame hd hbe (hm _ (inBuf_byte a k i hk hi))]
  exact hb

theorem degFacts_frame {s t : PanSemStateFiniteExact 64 σ} {a d : BitVec 64}
    (hd : t.memaddrs = s.memaddrs) (hbe : t.be = s.be)
    (hm : ∀ c, InBuf a c → t.memory c = s.memory c) (h : DegFacts s a d) : DegFacts t a d := by
  rcases h with ⟨h1, h2⟩ | ⟨h1, h2, h3⟩
  · exact Or.inl ⟨h1, fun k hk => slotZ_frame hk hd hbe hm (h2 k hk)⟩
  · exact Or.inr ⟨h1, slotNZ_frame h1 hd hbe hm h2,
      fun k hk1 hk2 => slotZ_frame hk2 hd hbe hm (h3 k hk1 hk2)⟩

end InitECandidate.Solver.Spec.Fq12
