import InitECandidate.Solver.Spec.Inv.MemeqFull

/-!
# `htab_first_diff` returns the first differing key bit

`funSpec_first_diff`: a returning `htab_first_diff(A, B, KL)` (`KL ≤ 2 ^ 20`) returns a word `d`
with `FDPost`:

* either `d < 8 KL`, the keys at `A` and `B` agree on every bit `c < d` (`kbit`, as the trie
  walk reads it) and both bits `d` are defined and differ;
* or `d = 8 KL` and the `KL` bytes agree.

The outer loop keeps "the first `i` bytes agree"; on a nonzero `x = A[i] ^ B[i]` the inner
loop keeps "bits `7, 6, .., 7 - j + 1` of `x` are zero" and returns at the first set bit
(it cannot run out: a nonzero byte has a set bit, `byte_of_bits`).
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.Spec.Inv
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-! ## The code -/

def fdBit : ExpHOL 64 :=
  .cmp .notEqual (.op .and [.shift .lsr (lv (nm "x")) (.op .sub [cw 7, lv (nm "j")]), cw 1]) (cw 0)

def fdInner : ProgHOL 64 :=
  .seq (.ite fdBit (.return (.op .add [.panop .mul [lv (nm "i"), cw 8], lv (nm "j")])) .skip)
    (.assign .local (nm "j") (.op .add [lv (nm "j"), cw 1]))

def fdX : ExpHOL 64 := .op .xor [.loadByte (oE "a" 0), .loadByte (oE "b" 0)]

def fdJLoop : ProgHOL 64 := .while (.cmp .less (lv (nm "j")) (cw 8)) fdInner

def fdOuter : ProgHOL 64 :=
  .dec (nm "x") .one fdX
    (.seq (.ite (.cmp .notEqual (lv (nm "x")) (cw 0)) (.dec (nm "j") .one (cw 0) fdJLoop) .skip) (incI 1))

def fdBody : ProgHOL 64 :=
  .dec (nm "i") .one (cw 0)
    (.seq (.while (.cmp .lower (lv (nm "i")) (lv (nm "key_len"))) fdOuter)
      (.return (.panop .mul [lv (nm "key_len"), cw 8])))

def fdParams : List (MlS × ShapeHOL) := [(nm "a", .one), (nm "b", .one), (nm "key_len", .one)]

theorem entry_first_diff : fnEntry Guest.Software.guestFn_htab_first_diff =
    (nm "htab_first_diff", fdParams, fdBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_first_diff : guestCode (nm "htab_first_diff") = some (fdParams, fdBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 130) (by decide)) ⟨_, rfl⟩
    entry_first_diff

/-! ## Bits -/

/-- The bit test of the walk, at `c = 8 q + r`. -/
def bitOf (byte : UInt8) (r : Nat) : Bool :=
  ((BitVec.ofNat 64 byte.toNat >>> (7 - r : Nat)) &&& BitVec.ofNat 64 1) == BitVec.ofNat 64 0

theorem kbit_eq (m : Mem) (d : BitVec 64 → Prop) (be : Bool) (K c : BitVec 64) :
    kbit m d be K c = (kbyte m d be (K + BitVec.ofNat 64 (c.toNat / 8))).map
      fun byte => bitOf byte (c.toNat % 8) := by
  have h1 : c >>> (3 : Nat) = BitVec.ofNat 64 (c.toNat / 8) := by
    apply BitVec.eq_of_toNat_eq
    rw [BitVec.toNat_ushiftRight, Nat.shiftRight_eq_div_pow, BitVec.toNat_ofNat,
      Nat.mod_eq_of_lt (by have := c.isLt; omega)]
  have h2 : (BitVec.ofNat 64 7 - (c &&& BitVec.ofNat 64 7)).toNat = 7 - c.toNat % 8 := by
    have h7 : (c &&& BitVec.ofNat 64 7).toNat = c.toNat % 8 := by
      rw [BitVec.toNat_and, BitVec.toNat_ofNat]
      have : (7 : Nat) % 2 ^ 64 = 2 ^ 3 - 1 := by decide
      rw [this, Nat.and_two_pow_sub_one_eq_mod]
    rw [BitVec.toNat_sub_of_le (by rw [BitVec.le_def, h7]; simp; omega), h7]
    simp
  unfold kbit bitOf
  rw [h1, h2]

theorem bitOf_eq_of_xor {ba bb : UInt8} {r : Nat}
    (h : ((BitVec.ofNat 64 ba.toNat ^^^ BitVec.ofNat 64 bb.toNat) >>> (7 - r : Nat)) &&& BitVec.ofNat 64 1 =
      BitVec.ofNat 64 0) : bitOf ba r = bitOf bb r := by
  unfold bitOf
  rw [bit_xor] at h
  have e1 := byte_bit_iff (BitVec.ofNat 64 ba.toNat) (7 - r)
  have e2 := byte_bit_iff (BitVec.ofNat 64 bb.toNat) (7 - r)
  by_cases hb : (BitVec.ofNat 64 ba.toNat).getLsbD (7 - r) = false
  · rw [beq_iff_eq.mpr (e1.mpr hb), beq_iff_eq.mpr (e2.mpr (h ▸ hb))]
  · have hb' : (BitVec.ofNat 64 bb.toNat).getLsbD (7 - r) ≠ false := h ▸ hb
    have n1 : ¬ (((BitVec.ofNat 64 ba.toNat >>> (7 - r : Nat)) &&& BitVec.ofNat 64 1) = BitVec.ofNat 64 0) :=
      fun h' => hb (e1.mp h')
    have n2 : ¬ (((BitVec.ofNat 64 bb.toNat >>> (7 - r : Nat)) &&& BitVec.ofNat 64 1) = BitVec.ofNat 64 0) :=
      fun h' => hb' (e2.mp h')
    simp only [beq_eq_false_iff_ne.mpr n1, beq_eq_false_iff_ne.mpr n2]

theorem bitOf_ne_of_xor {ba bb : UInt8} {r : Nat}
    (h : ((BitVec.ofNat 64 ba.toNat ^^^ BitVec.ofNat 64 bb.toNat) >>> (7 - r : Nat)) &&& BitVec.ofNat 64 1 ≠
      BitVec.ofNat 64 0) : bitOf ba r ≠ bitOf bb r := by
  unfold bitOf
  rw [Ne, bit_xor] at h
  have e1 := byte_bit_iff (BitVec.ofNat 64 ba.toNat) (7 - r)
  have e2 := byte_bit_iff (BitVec.ofNat 64 bb.toNat) (7 - r)
  intro heq
  apply h
  cases h1 : (BitVec.ofNat 64 ba.toNat).getLsbD (7 - r) <;>
    cases h2 : (BitVec.ofNat 64 bb.toNat).getLsbD (7 - r)
  · rfl
  · rw [beq_iff_eq.mpr (e1.mpr h1)] at heq
    have : ¬ (((BitVec.ofNat 64 bb.toNat >>> (7 - r : Nat)) &&& BitVec.ofNat 64 1) = BitVec.ofNat 64 0) :=
      fun h' => by rw [e2.mp h'] at h2; cases h2
    rw [beq_eq_false_iff_ne.mpr this] at heq; cases heq
  · rw [beq_iff_eq.mpr (e2.mpr h2)] at heq
    have : ¬ (((BitVec.ofNat 64 ba.toNat >>> (7 - r : Nat)) &&& BitVec.ofNat 64 1) = BitVec.ofNat 64 0) :=
      fun h' => by rw [e1.mp h'] at h1; cases h1
    rw [beq_eq_false_iff_ne.mpr this] at heq; cases heq
  · rfl

/-- A nonzero byte has a set bit among `7 - j`, `j < 8`. -/
theorem xor_bit_exists {ba bb : UInt8}
    (h0 : BitVec.ofNat 64 ba.toNat ^^^ BitVec.ofNat 64 bb.toNat ≠ 0)
    (h : ∀ j < 8, ((BitVec.ofNat 64 ba.toNat ^^^ BitVec.ofNat 64 bb.toNat) >>> (7 - j : Nat)) &&&
      BitVec.ofNat 64 1 = BitVec.ofNat 64 0) : False := by
  apply h0
  have hb : BitVec.ofNat 64 ba.toNat = BitVec.ofNat 64 bb.toNat := by
    apply byte_of_bits (ofNat_byte_lt ba) (ofNat_byte_lt bb)
    intro s hs
    have := h (7 - s) (by omega)
    rw [show 7 - (7 - s) = s by omega, bit_xor] at this
    exact this
  rw [hb, BitVec.xor_self]; rfl

/-! ## The post -/

/-- What a returned `d` says about the keys at `A` and `B` of `KL` bytes. -/
def FDPost (m : Mem) (d : BitVec 64 → Prop) (be : Bool) (A B KL dv : BitVec 64) : Prop :=
  (dv.toNat < 8 * KL.toNat ∧ (∀ c : BitVec 64, c.toNat < dv.toNat → kbit m d be A c = kbit m d be B c) ∧
    ∃ x y, kbit m d be A dv = some x ∧ kbit m d be B dv = some y ∧ x ≠ y) ∨
  (dv.toNat = 8 * KL.toNat ∧ ∀ j : Nat, j < KL.toNat →
    kbyte m d be (A + BitVec.ofNat 64 j) = kbyte m d be (B + BitVec.ofNat 64 j))

/-! ## The Hoare proof -/

section hoare
variable {σ : Type} {X : Ctx 64} (s0 : PanSemStateFiniteExact 64 σ) (A B KL : BitVec 64)

/-- The outer loop state. -/
def FS (I : BitVec 64) (u : PanSemStateFiniteExact 64 σ) : Prop :=
  DLk u "a" A ∧ DLk u "b" B ∧ DLk u "key_len" KL ∧ DLk u "i" I ∧ u.memory = s0.memory ∧
    u.memaddrs = s0.memaddrs ∧ u.be = s0.be ∧ I.toNat ≤ KL.toNat ∧
    ∀ j : Nat, j < I.toNat → kbyte s0.memory s0.memaddrs s0.be (A + BitVec.ofNat 64 j) =
      kbyte s0.memory s0.memaddrs s0.be (B + BitVec.ofNat 64 j)

def FSx (u : PanSemStateFiniteExact 64 σ) : Prop := ∃ I, FS s0 A B KL I u

/-- After the byte comparison: the first `I + 1` bytes agree. -/
def FG (I : BitVec 64) (u : PanSemStateFiniteExact 64 σ) : Prop :=
  DLk u "a" A ∧ DLk u "b" B ∧ DLk u "key_len" KL ∧ DLk u "i" I ∧ u.memory = s0.memory ∧
    u.memaddrs = s0.memaddrs ∧ u.be = s0.be ∧ I.toNat + 1 ≤ KL.toNat ∧
    ∀ j : Nat, j < I.toNat + 1 → kbyte s0.memory s0.memaddrs s0.be (A + BitVec.ofNat 64 j) =
      kbyte s0.memory s0.memaddrs s0.be (B + BitVec.ofNat 64 j)

/-- The post. -/
abbrev FQ (J : PanSemStateFiniteExact 64 σ → Prop) (r : Option (PanSemResultExact 64))
    (u : PanSemStateFiniteExact 64 σ) : Prop :=
  (r = none → J u) ∧ ∀ r', r = some r' → ∃ dv, r' = .returned (.val (.word dv)) ∧
    FDPost s0.memory s0.memaddrs s0.be A B KL dv

/-- The inner loop state: byte `I` differs (`x = A[I] ^ B[I] ≠ 0`), bits `7 .. 8 - J` of `x`
are zero. -/
def FJ (I : BitVec 64) (ba bb : UInt8) (J : BitVec 64) (u : PanSemStateFiniteExact 64 σ) : Prop :=
  DLk u "a" A ∧ DLk u "b" B ∧ DLk u "key_len" KL ∧ DLk u "i" I ∧
    DLk u "x" (BitVec.ofNat 64 ba.toNat ^^^ BitVec.ofNat 64 bb.toNat) ∧ DLk u "j" J ∧
    J.toNat ≤ 8 ∧
    ∀ j < J.toNat, ((BitVec.ofNat 64 ba.toNat ^^^ BitVec.ofNat 64 bb.toNat) >>> (7 - j : Nat)) &&&
      BitVec.ofNat 64 1 = BitVec.ofNat 64 0

variable {s0 A B KL} (hKL : KL.toNat ≤ 2 ^ 20)
include hKL

/-- The return inside the inner loop. -/
theorem fd_ret {I : BitVec 64} {ba bb : UInt8} {J : BitVec 64} (hI : I.toNat < KL.toNat)
    (hpre : ∀ j : Nat, j < I.toNat → kbyte s0.memory s0.memaddrs s0.be (A + BitVec.ofNat 64 j) =
      kbyte s0.memory s0.memaddrs s0.be (B + BitVec.ofNat 64 j))
    (ha : kbyte s0.memory s0.memaddrs s0.be (A + BitVec.ofNat 64 I.toNat) = some ba)
    (hb : kbyte s0.memory s0.memaddrs s0.be (B + BitVec.ofNat 64 I.toNat) = some bb)
    (hJ : J.toNat < 8)
    (hz : ∀ j < J.toNat, ((BitVec.ofNat 64 ba.toNat ^^^ BitVec.ofNat 64 bb.toNat) >>> (7 - j : Nat)) &&&
      BitVec.ofNat 64 1 = BitVec.ofNat 64 0)
    (hs : ((BitVec.ofNat 64 ba.toNat ^^^ BitVec.ofNat 64 bb.toNat) >>> (7 - J.toNat : Nat)) &&&
      BitVec.ofNat 64 1 ≠ BitVec.ofNat 64 0) :
    FDPost s0.memory s0.memaddrs s0.be A B KL (I * BitVec.ofNat 64 8 + J) := by
  have hd : (I * BitVec.ofNat 64 8 + J).toNat = 8 * I.toNat + J.toNat := by
    rw [BitVec.toNat_add, BitVec.toNat_mul, BitVec.toNat_ofNat]
    have h1 : I.toNat * (8 % 2 ^ 64) % 2 ^ 64 = 8 * I.toNat := by
      rw [show (8 : Nat) % 2 ^ 64 = 8 by decide, Nat.mod_eq_of_lt (by omega), Nat.mul_comm]
    rw [h1, Nat.mod_eq_of_lt (by omega)]
  left
  refine ⟨by rw [hd]; omega, fun c hc => ?_, ?_⟩
  · rw [hd] at hc
    rw [kbit_eq, kbit_eq]
    by_cases hq : c.toNat / 8 < I.toNat
    · rw [hpre _ hq]
    · have hq' : c.toNat / 8 = I.toNat := by omega
      rw [hq', ha, hb]
      simp only [Option.map_some, Option.some.injEq]
      exact bitOf_eq_of_xor (hz _ (by omega))
  · rw [kbit_eq, kbit_eq, hd]
    have hq : (8 * I.toNat + J.toNat) / 8 = I.toNat := by omega
    have hr : (8 * I.toNat + J.toNat) % 8 = J.toNat := by omega
    rw [hq, hr, ha, hb]
    exact ⟨_, _, rfl, rfl, bitOf_ne_of_xor hs⟩

omit hKL in
theorem signedLess_small {J : BitVec 64} (hJ : J.toNat < 2 ^ 62) :
    Flapjack.Compiler.Encoders.Asm.wordCmpHOL .less J (BitVec.ofNat 64 8) = decide (J.toNat < 8) := by
  simp only [Flapjack.Compiler.Encoders.Asm.wordCmpHOL, Flapjack.Compiler.Encoders.Asm.holAsmSignedLess]
  rw [if_pos (by simp; omega), if_pos (by simp)]
  simp

omit hKL in
/-- The bit test of the inner loop. -/
theorem ev_fdBit {u : PanSemStateFiniteExact 64 σ} {xv J : BitVec 64} (hx : DLk u "x" xv)
    (hj : DLk u "j" J) (hJ : J.toNat < 8) {w : BitVec 64} (hw : ev u fdBit = some (.val (.word w))) :
    (w ≠ 0 ↔ (xv >>> (7 - J.toNat : Nat)) &&& BitVec.ofNat 64 1 ≠ BitVec.ofNat 64 0) := by
  obtain ⟨a1, z0, ha1, hz0, hv⟩ := ev_cmp_inv hw
  rw [ev_cw] at hz0
  cases hz0
  obtain ⟨sh, one, hsh, hone, hav⟩ := ev_and2_inv ha1
  rw [ev_cw] at hone
  cases hone
  obtain ⟨xx, amt, hxx, hamt, z, hz, hzv⟩ := ev_shift_inv hsh
  rw [ev_lv_w hx] at hxx
  cases hxx
  obtain ⟨sev, jj, hsev, hjj, hamtv⟩ := ev_sub2_inv hamt
  rw [ev_cw] at hsev
  cases hsev
  rw [ev_lv_w hj] at hjj
  cases hjj
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hamtv hzv hav
  subst hamtv
  have ht : (BitVec.ofNat 64 7 - J).toNat = 7 - J.toNat := by
    rw [BitVec.toNat_sub_of_le (by rw [BitVec.le_def]; simp; omega)]; simp
  rw [ht, lsr_lt _ (by omega)] at hz
  cases hz
  subst hzv hav
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hv
  subst hv
  by_cases h : (xv >>> (7 - J.toNat : Nat)) &&& BitVec.ofNat 64 1 = BitVec.ofNat 64 0
  · simp [Flapjack.Compiler.Encoders.Asm.wordCmpHOL, h]
  · simp [Flapjack.Compiler.Encoders.Asm.wordCmpHOL, h]

/-- The returns of `htab_first_diff`. -/
abbrev FR (s0 : PanSemStateFiniteExact 64 σ) (A B KL : BitVec 64) (r : Option (PanSemResultExact 64)) : Prop :=
  ∀ r', r = some r' → ∃ dv, r' = .returned (.val (.word dv)) ∧ FDPost s0.memory s0.memaddrs s0.be A B KL dv

/-- One step of the inner loop. -/
theorem fd_inner_body {I : BitVec 64} {ba bb : UInt8} {J : BitVec 64} (hI : I.toNat < KL.toNat)
    (hpre : ∀ j : Nat, j < I.toNat → kbyte s0.memory s0.memaddrs s0.be (A + BitVec.ofNat 64 j) =
      kbyte s0.memory s0.memaddrs s0.be (B + BitVec.ofNat 64 j))
    (ha : kbyte s0.memory s0.memaddrs s0.be (A + BitVec.ofNat 64 I.toNat) = some ba)
    (hb : kbyte s0.memory s0.memaddrs s0.be (B + BitVec.ofNat 64 I.toNat) = some bb)
    (hJ : J.toNat < 8) :
    Hoare σ X (FJ A B KL I ba bb J) fdInner
      (fun r t => (r = none → ∃ J', FJ A B KL I ba bb J' t) ∧ FR s0 A B KL r) := by
  refine hoare_seq (R := fun r t => (r = none ∧ FJ A B KL I ba bb J t ∧
      ((BitVec.ofNat 64 ba.toNat ^^^ BitVec.ofNat 64 bb.toNat) >>> (7 - J.toNat : Nat)) &&&
        BitVec.ofNat 64 1 = BitVec.ofNat 64 0) ∨ (r ≠ none ∧ FR s0 A B KL r)) ?_ ?_ ?_
  · refine hoare_ite ?_ ?_
    · refine hoare_return fun t _ ⟨⟨hA, hB, hK, hi, hx, hj, hJ8, hz⟩, w, hw, hw0⟩ v hv => ?_
      refine Or.inr ⟨by simp, fun r' hr' => ?_⟩
      have hs := (ev_fdBit hx hj hJ hw).mp hw0
      rw [ev_add2 (ev_mul2 (ev_lv_w hi) (ev_cw t 8)) (ev_lv_w hj)] at hv
      cases hv
      refine ⟨_, (Option.some.inj hr').symm, ?_⟩
      exact fd_ret hKL hI hpre ha hb hJ hz hs
    · refine hoare_skip fun t _ ⟨hfj, hw⟩ => Or.inl ⟨rfl, hfj, ?_⟩
      have := ev_fdBit hfj.2.2.2.2.1 hfj.2.2.2.2.2.1 hJ hw
      by_contra hne
      exact absurd (this.mpr hne) (by simp)
  · intro r t _ hr _ h
    rcases h with h | h
    · exact absurd h.1 hr
    · exact ⟨fun h' => absurd h' hr, h.2⟩
  · refine hoare_assign fun t _ h v hv _ => ?_
    rcases h with ⟨-, ⟨hA, hB, hK, hi, hx, hj, hJ8, hz⟩, hzJ⟩ | ⟨h, -⟩
    · rw [ev_add2 (ev_lv_w hj) (ev_cw t 1)] at hv
      cases hv
      refine ⟨fun _ => ⟨J + BitVec.ofNat 64 1, by lks, by lks, by lks, by lks, by lks, ?_, ?_, ?_⟩,
        fun r' h => (by cases h)⟩
      · unfold DLk; rw [lk_set_self]
      · rw [ofs_eq, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]; omega
      · rw [ofs_eq, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
        intro j hj'
        by_cases hjJ : j < J.toNat
        · exact hz j hjJ
        · rw [show j = J.toNat by omega]; exact hzJ
    · exact absurd rfl h

/-- The inner loop: it can only return, with `FDPost`. -/
theorem fd_inner {I : BitVec 64} {ba bb : UInt8} (hI : I.toNat < KL.toNat)
    (hpre : ∀ j : Nat, j < I.toNat → kbyte s0.memory s0.memaddrs s0.be (A + BitVec.ofNat 64 j) =
      kbyte s0.memory s0.memaddrs s0.be (B + BitVec.ofNat 64 j))
    (ha : kbyte s0.memory s0.memaddrs s0.be (A + BitVec.ofNat 64 I.toNat) = some ba)
    (hb : kbyte s0.memory s0.memaddrs s0.be (B + BitVec.ofNat 64 I.toNat) = some bb)
    (hx0 : BitVec.ofNat 64 ba.toNat ^^^ BitVec.ofNat 64 bb.toNat ≠ 0) :
    Hoare σ X (fun u => ∃ J, FJ A B KL I ba bb J u) fdJLoop
      (fun r _ => r ≠ none ∧ FR s0 A B KL r) := by
  refine hoare_while (fun _ h => h) ?_ ?_
  · intro u hu ⟨⟨J, hfj⟩, hc⟩ ht
    have hJ : J.toNat < 8 := by
      obtain ⟨w, hw, hw0⟩ := hc
      obtain ⟨x, y, hx', hy, hxy⟩ := cmp_true hw hw0
      rw [ev_lv_w hfj.2.2.2.2.2.1] at hx'
      rw [ev_cw] at hy
      cases hx'; cases hy
      rw [signedLess_small (by have := hfj.2.2.2.2.2.2.1; omega)] at hxy
      simpa using hxy
    have H := fd_inner_body hKL hI hpre ha hb hJ u hu hfj ht
    refine ⟨H.1, fun hr => ?_, fun hr => ?_, fun v hr => ⟨by rw [hr]; simp, H.2⟩⟩
    · obtain ⟨dv, hdv, -⟩ := H.2 _ hr; cases hdv
    · obtain ⟨dv, hdv, -⟩ := H.2 _ hr; cases hdv
  · intro u _ ⟨J, hA, hB, hK, hi, hx, hj, hJ8, hz⟩ hc
    exfalso
    obtain ⟨x, y, hx', hy, hxy⟩ := cmp_false hc
    rw [ev_lv_w hj] at hx'
    rw [ev_cw] at hy
    cases hx'; cases hy
    rw [signedLess_small (by omega)] at hxy
    have h8 : J.toNat = 8 := by simp at hxy; omega
    exact xor_bit_exists hx0 fun j hj => hz j (by omega)

omit hKL in
theorem ev_fdX {u : PanSemStateFiniteExact 64 σ} {I : BitVec 64} (hA : DLk u "a" A) (hB : DLk u "b" B)
    (hi : DLk u "i" I) {v : ValueHOL 64} (hv : ev u fdX = some v) :
    ∃ ba bb : UInt8, kbyte u.memory u.memaddrs u.be (A + BitVec.ofNat 64 I.toNat) = some ba ∧
      kbyte u.memory u.memaddrs u.be (B + BitVec.ofNat 64 I.toNat) = some bb ∧
      v = .val (.word (BitVec.ofNat 64 ba.toNat ^^^ BitVec.ofNat 64 bb.toNat)) := by
  obtain ⟨x, y, hx, hy, hxy⟩ := ev_op2_inv hv
  obtain ⟨wa, hwa, ba, hba, hxv⟩ := ev_loadByte_inv hx
  obtain ⟨wb, hwb, bb, hbb, hyv⟩ := ev_loadByte_inv hy
  rw [ev_oE hA hi, Nat.add_zero] at hwa
  rw [ev_oE hB hi, Nat.add_zero] at hwb
  cases hwa; cases hwb
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hxv hyv
  subst hxv hyv
  refine ⟨ba, bb, hba, hbb, ?_⟩
  have hv' : ev u (.op .xor [.loadByte (oE "a" 0), .loadByte (oE "b" 0)]) = some v := hv
  rw [hxy] at hv'
  replace hv := hv'
  have : wordOpHOL .xor [BitVec.ofNat 64 ba.toNat, BitVec.ofNat 64 bb.toNat] =
      some (BitVec.ofNat 64 ba.toNat ^^^ (BitVec.ofNat 64 bb.toNat ^^^ 0#64)) := rfl
  rw [this, BitVec.xor_zero] at hv
  exact (Option.some.inj hv).symm

/-- One step of the outer loop. -/
theorem fd_outer {I : BitVec 64} (hI : I.toNat < KL.toNat) :
    Hoare σ X (FS s0 A B KL I) fdOuter (fun r t => (r = none → FSx s0 A B KL t) ∧ FR s0 A B KL r) := by
  refine hoare_dec fun u _ ⟨hA, hB, hK, hi, hm, hd, hbe, hle, hpre⟩ v hv _ => ?_
  obtain ⟨ba, bb, ha, hb, rfl⟩ := ev_fdX hA hB hi hv
  rw [hm, hd, hbe] at ha hb
  let xv := BitVec.ofNat 64 ba.toNat ^^^ BitVec.ofNat 64 bb.toNat
  have hx : DLk (setVarHOLFinite (nm "x") (.val (.word xv)) u) "x" xv := by
    unfold DLk; rw [lk_set_self]
  refine hoare_post (Q := fun r t => (r = none → FS s0 A B KL (I + BitVec.ofNat 64 1) t) ∧
      FR s0 A B KL r) ?_ fun r t _ _ h => ⟨fun hr => ?_, h.2⟩
  · refine hoare_seq (R := fun r t => (r = none ∧ FG s0 A B KL I t) ∨ (r ≠ none ∧ FR s0 A B KL r)) ?_
      ?_ ?_
    · refine hoare_ite ?_ ?_
      · intro t ht ⟨ht0, w, hw, hw0⟩ htr
        subst ht0
        have hx0 : xv ≠ 0 := by
          obtain ⟨x, y, hx', hy, hxy⟩ := cmp_true hw hw0
          rw [ev_lv_w hx] at hx'
          rw [ev_cw] at hy
          cases hx'; cases hy
          simpa [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] using hxy
        refine (hoare_dec (P := fun t => t = setVarHOLFinite (nm "x") (.val (.word xv)) u)
          (Q := fun r t => (r = none ∧ FG s0 A B KL I t) ∨
          (r ≠ none ∧ FR s0 A B KL r)) (fun t1 _ ht1 v1 hv1 _ => ?_)) _ ht rfl htr
        rw [ev_cw] at hv1
        cases hv1
        subst ht1
        refine hoare_pre (hoare_post (fd_inner hKL hI hpre ha hb hx0) fun r t _ _ h => Or.inr h) ?_
        · intro t2 _ ht2
          subst ht2
          refine ⟨0, by lks, by lks, by lks, by lks, by lks, ?_, by simp, fun j hj => by simp at hj⟩
          unfold DLk; rw [lk_set_self]; rfl
      · refine hoare_skip fun t _ ⟨ht0, hw⟩ => ?_
        subst ht0
        have heq : ba = bb := by
          obtain ⟨x, y, hx', hy, hxy⟩ := cmp_false hw
          rw [ev_lv_w hx] at hx'
          rw [ev_cw] at hy
          cases hx'; cases hy
          have hxy' : xv = 0 := by simpa [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] using hxy
          have h0 : BitVec.ofNat 64 ba.toNat ^^^ BitVec.ofNat 64 bb.toNat = 0 := hxy'
          have : BitVec.ofNat 64 ba.toNat = BitVec.ofNat 64 bb.toNat := by
            apply BitVec.eq_of_getLsbD_eq
            intro i hi
            have := congrArg (fun z => z.getLsbD i) h0
            simp only [BitVec.getLsbD_xor, BitVec.getLsbD_zero] at this
            revert this
            cases (BitVec.ofNat 64 ba.toNat).getLsbD i <;> cases (BitVec.ofNat 64 bb.toNat).getLsbD i <;>
              simp
          exact ofNat_byte_inj this
        refine Or.inl ⟨rfl, by lks, by lks, by lks, by lks, hm, hd, hbe, by omega, fun j hj => ?_⟩
        by_cases hjI : j < I.toNat
        · exact hpre j hjI
        · rw [show j = I.toNat by omega, ha, hb, heq]
    · intro r t _ hr _ h
      rcases h with h | h
      · exact absurd h.1 hr
      · exact ⟨fun h' => absurd h' hr, h.2⟩
    · refine hoare_assign fun t _ h v hv _ => ?_
      rcases h with ⟨-, ⟨hA', hB', hK', hi', hm', hd', hbe', hle', hpre'⟩⟩ | ⟨h, -⟩
      · rw [ev_add2 (ev_lv_w hi') (ev_cw t 1)] at hv
        cases hv
        have ht1 : (I + BitVec.ofNat 64 1).toNat = I.toNat + 1 := by
          rw [ofs_eq, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
        refine ⟨fun _ => ⟨by lks, by lks, by lks, ?_, hm', hd', hbe', by omega, by rw [ht1]; exact hpre'⟩,
          fun r' h => (by cases h)⟩
        unfold DLk; rw [lk_set_self]
      · exact absurd rfl h
  · obtain ⟨hA', hB', hK', hi', hm', hd', hbe', hle', hpre'⟩ := h.1 hr
    exact ⟨_, by lks, by lks, by lks, by lks, hm', hd', hbe', hle', hpre'⟩

theorem fdBody_hoare (hA : DLk s0 "a" A) (hB : DLk s0 "b" B) (hK : DLk s0 "key_len" KL) :
    Hoare σ X (fun t => t = s0) fdBody (fun r _ => FR s0 A B KL r) := by
  refine hoare_dec fun u _ hu v hv _ => ?_
  have hu' : u = s0 := hu
  subst hu'
  rw [ev_cw] at hv
  cases hv
  refine hoare_seq (R := fun r t => (r = none → ∃ I, FS u A B KL I t ∧ I = KL) ∧ FR u A B KL r) ?_
    (fun r t _ _ _ h => h.2) ?_
  · refine hoare_pre (P := FSx u A B KL) ?_ fun t _ ht => ?_
    · refine hoare_while (fun _ h => h) ?_ ?_
      · intro t ht ⟨⟨I, hfs⟩, hc⟩ htr
        have hI : I.toNat < KL.toNat := by
          obtain ⟨w, hw, hw0⟩ := hc
          obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
          rw [ev_lv_w hfs.2.2.2.1] at hx
          rw [ev_lv_w hfs.2.2.1] at hy
          cases hx; cases hy
          exact lower_true hxy
        have H := fd_outer hKL hI t ht hfs htr
        refine ⟨H.1, fun hr => ?_, fun hr => ?_, fun v hr => ⟨fun h' => (by rw [hr] at h'; cases h'), H.2⟩⟩
        · obtain ⟨dv, hdv, -⟩ := H.2 _ hr; cases hdv
        · obtain ⟨dv, hdv, -⟩ := H.2 _ hr; cases hdv
      · intro t _ ⟨I, hfs⟩ hc
        obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc
        rw [ev_lv_w hfs.2.2.2.1] at hx
        rw [ev_lv_w hfs.2.2.1] at hy
        cases hx; cases hy
        have := lower_false hxy
        exact ⟨fun _ => ⟨I, hfs, BitVec.eq_of_toNat_eq (by have := hfs.2.2.2.2.2.2.2.1; omega)⟩,
          fun r' h => (by cases h)⟩
    · subst ht
      refine ⟨0, by lks, by lks, by lks, by unfold DLk; rw [lk_set_self]; rfl, rfl, rfl, rfl, by simp,
        fun j hj => by simp at hj⟩
  · refine hoare_return fun t _ ⟨h1, _⟩ v hv => ?_
    obtain ⟨I, hfs, hIK⟩ := h1 rfl
    subst hIK
    rw [ev_mul2 (ev_lv_w hfs.2.2.1) (ev_cw t 8)] at hv
    cases hv
    intro r' hr'
    refine ⟨_, (Option.some.inj hr').symm, Or.inr ⟨?_, hfs.2.2.2.2.2.2.2.2⟩⟩
    rw [BitVec.toNat_mul, BitVec.toNat_ofNat]
    rw [show (8 : Nat) % 2 ^ 64 = 8 by decide, Nat.mod_eq_of_lt (by omega), Nat.mul_comm]

end hoare

/-! ## The specification -/

section spec
variable {σ : Type} {X : Ctx 64}

/-- **`htab_first_diff` returns the first differing bit.** -/
theorem funSpec_first_diff (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "htab_first_diff") (fun vs s r _ => ∀ A B KL : BitVec 64,
      vs = [.val (.word A), .val (.word B), .val (.word KL)] → KL.toNat ≤ 2 ^ 20 →
      ∀ dv, r = .returned (.val (.word dv)) → FDPost s.memory s.memaddrs s.be A B KL dv) := by
  intro vs body callee rs hl s hs hloc r hr A B KL hvs hKL dv hv
  rw [hC] at hl
  obtain ⟨rfl, -, A', B', C', hABC, -, -, -, hA, hB, hC'⟩ :=
    lookupCode_three_full code_first_diff (by decide) (by decide) (by decide) hl
  rw [hvs] at hABC
  simp only [List.cons.injEq, and_true] at hABC
  obtain ⟨rfl, rfl, rfl⟩ := hABC
  have hA0 : DLk s "a" A := by unfold DLk; rw [hloc]; exact hA
  have hB0 : DLk s "b" B := by unfold DLk; rw [hloc]; exact hB
  have hK0 : DLk s "key_len" KL := by unfold DLk; rw [hloc]; exact hC'
  have H := fdBody_hoare (X := X) hKL hA0 hB0 hK0 s hs rfl (by rw [hr, hv]; trivial)
  rw [hr, hv] at H
  obtain ⟨dv', hdv, hp⟩ := H _ rfl
  simp only [PanSemResultExact.returned.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hdv
  subst hdv
  exact hp

def fdFns : EntryList := [fnEntry Guest.Software.guestFn_htab_first_diff]

theorem fdFns_valid : ∀ e ∈ fdFns, guestCode e.1 = some e.2 := by
  intro e he
  simp only [fdFns, List.mem_cons, List.not_mem_nil, or_false] at he
  subst he
  exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 130) (by decide)) ⟨_, rfl⟩

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem fdFns_mw : fdFns.all (fun e => mwFreeB (fdFns.map Prod.fst) e.2.2.1) = true := by
  decide_cbv

theorem fd_mem : (fdFns.map Prod.fst).contains (nm "htab_first_diff") = true := by decide_cbv

/-- `htab_first_diff` writes no memory. -/
theorem funSpec_first_diff_mw (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "htab_first_diff") (fun _ s _ t => t.memory = s.memory) :=
  funSpec_mw (by rw [hC]; exact closed_of_entries (chk := mwFreeB) fdFns_valid fdFns_mw) fd_mem

end spec

end InitECandidate.Solver.Spec.Inv
