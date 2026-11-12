import InitECandidate.Solver.Spec.Inv.Bytes
import InitECandidate.Solver.Spec.Inv.HtabDel

/-!
# The content of `memcpy`

`funSpec_memcpy`: a returning `memcpy(D, S, N)` whose source and destination cells are
disjoint (and that does not wrap around the address space, `N < 2 ^ 62`) leaves every byte
`D + j` (`j < N`) equal to the entry byte `S + j`, which was readable, and changes memory only
in the cells overlapping `[D, D + N)` (`CellIn D N`). It writes no global and keeps the
memory domain and byte order. `memcpy_words`: for 8-aligned `D`, `S`, `N` the copy is
word-for-word (`u.memory (D + 8k) = s.memory (S + 8k)`).

The proof is one loop invariant `Cp m0 m D S c` ("the first `c` bytes are copied and only
the cells of `[D, D + c)` changed") threaded through the four loops: two aligned word loops
(by 32 and by 8), then a byte loop by 8 and a byte loop. `memcpy_step_w` / `memcpy_step_b`
are the pure effects of one word and one byte store.
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

/-- `x + i` (`k = 0`) or `x + i + k`. -/
def oE (x : String) : Nat → ExpHOL 64
  | 0 => .op .add [lv (nm x), lv (nm "i")]
  | k + 1 => .op .add [lv (nm x), lv (nm "i"), cw (k + 1)]

def stW (k : Nat) : ProgHOL 64 := .store (oE "dst" k) (.load .one (oE "src" k))
def stB (k : Nat) : ProgHOL 64 := .storeByte (oE "dst" k) (.loadByte (oE "src" k))
def incI (k : Nat) : ProgHOL 64 := .assign .local (nm "i") (.op .add [lv (nm "i"), cw k])
/-- `n >= i + k` -/
def geN (k : Nat) : ExpHOL 64 := .cmp .notLower (lv (nm "n")) (.op .add [lv (nm "i"), cw k])

def cpW32 : ProgHOL 64 := .seq (stW 0) (.seq (stW 8) (.seq (stW 16) (.seq (stW 24) (incI 32))))
def cpW8 : ProgHOL 64 := .seq (stW 0) (incI 8)
def cpB8 : ProgHOL 64 :=
  .seq (stB 0) (.seq (stB 1) (.seq (stB 2) (.seq (stB 3) (.seq (stB 4) (.seq (stB 5)
    (.seq (stB 6) (.seq (stB 7) (incI 8))))))))
def cpB1 : ProgHOL 64 := .seq (stB 0) (incI 1)

/-- `((x | y) & 7) == 0` -/
def alE (x y : String) : ExpHOL 64 := .cmp .equal (.op .and [.op .or [lv (nm x), lv (nm y)], cw 7]) (cw 0)

abbrev mcAligned : ExpHOL 64 := alE "dst" "src"

def mcTail : ProgHOL 64 :=
  .seq (.while (geN 8) cpB8) (.seq (.while (.cmp .lower (lv (nm "i")) (lv (nm "n"))) cpB1) (.return (cw 0)))

def mcBody : ProgHOL 64 :=
  .dec (nm "i") .one (cw 0)
    (.seq (.ite mcAligned (.seq (.while (geN 32) cpW32) (.while (geN 8) cpW8)) .skip) mcTail)

def mcParams : List (MlS × ShapeHOL) := [(nm "dst", .one), (nm "src", .one), (nm "n", .one)]

theorem entry_memcpy : fnEntry Guest.Software.guestFn_memcpy =
    (nm "memcpy", mcParams, mcBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_memcpy : guestCode (nm "memcpy") = some (mcParams, mcBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 16) (by decide)) ⟨_, rfl⟩
    entry_memcpy

/-! ## Cells and the copy invariant -/

/-- The cells a byte access to `[B, B + n)` can touch. -/
def CellIn (B : BitVec 64) (n : Nat) (a : BitVec 64) : Prop :=
  B.toNat / 8 * 8 ≤ a.toNat ∧ a.toNat < B.toNat + n

/-- The first `c` bytes of `[D, ..)` are those of `[S, ..)` in `m0` (which were readable), and
only cells overlapping `[D, D + c)` differ from `m0`. -/
def Cp (m0 m : Mem) (d : BitVec 64 → Prop) (be : Bool) (D S : BitVec 64) (c : Nat) : Prop :=
  (∀ a, ¬ CellIn D c a → m a = m0 a) ∧
  ∀ j : Nat, j < c → kbyte m d be (D + BitVec.ofNat 64 j) = kbyte m0 d be (S + BitVec.ofNat 64 j) ∧
    (kbyte m0 d be (S + BitVec.ofNat 64 j)).isSome

/-- The fixed hypotheses of a copy. -/
structure MCPre (D S N : BitVec 64) : Prop where
  n_lt : N.toNat < 2 ^ 62
  d_le : D.toNat + N.toNat ≤ 2 ^ 64
  s_le : S.toNat + N.toNat ≤ 2 ^ 64
  disj : ∀ a, CellIn D N.toNat a → ¬ CellIn S N.toNat a

theorem add_ofNat_toNat {B : BitVec 64} {j : Nat} (h : B.toNat + j < 2 ^ 64) :
    (B + BitVec.ofNat 64 j).toNat = B.toNat + j := by
  rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := j) (by omega)]
  exact Nat.mod_eq_of_lt h

theorem cp_zero (m0 : Mem) (d : BitVec 64 → Prop) (be : Bool) (D S : BitVec 64) : Cp m0 m0 d be D S 0 :=
  ⟨fun _ _ => rfl, fun _ h => absurd h (Nat.not_lt_zero _)⟩

theorem byte_roundtrip (byte : UInt8) :
    UInt8.ofNat ((BitVec.ofNat 64 (BitVec.ofNat 8 (BitVec.ofNat 64 byte.toNat).toNat).toNat).toNat % 256) =
      byte := by
  have hb := byte.toNat_lt
  have h1 : (BitVec.ofNat 64 byte.toNat).toNat = byte.toNat := by
    rw [BitVec.toNat_ofNat]; exact Nat.mod_eq_of_lt (by omega)
  have h2 : (BitVec.ofNat 8 byte.toNat).toNat = byte.toNat := by
    rw [BitVec.toNat_ofNat]; exact Nat.mod_eq_of_lt (by omega)
  rw [h1, h2, h1, Nat.mod_eq_of_lt hb, UInt8.ofNat_toNat]

section steps
variable {m0 m : Mem} {d : BitVec 64 → Prop} {be : Bool} {D S N : BitVec 64} {c : Nat}
variable (hP : MCPre D S N)
include hP

/-- The source cells are not written. -/
theorem cp_src (hcp : Cp m0 m d be D S c) (hcN : c ≤ N.toNat) {j : Nat} (hj : j < N.toNat) :
    m (panByteAlignHOL (S + BitVec.ofNat 64 j)) = m0 (panByteAlignHOL (S + BitVec.ofNat 64 j)) := by
  apply hcp.1
  intro hin
  apply hP.disj _ ⟨hin.1, by have := hin.2; omega⟩
  have hs := add_ofNat_toNat (B := S) (j := j) (by have := hP.s_le; omega)
  unfold CellIn
  rw [align_toNat, hs]
  constructor
  · exact Nat.mul_le_mul_right 8 (Nat.div_le_div_right (by omega))
  · have := Nat.div_mul_le_self (S.toNat + j) 8
    omega

theorem kbyte_src (hcp : Cp m0 m d be D S c) (hcN : c ≤ N.toNat) {j : Nat} (hj : j < N.toNat) :
    kbyte m d be (S + BitVec.ofNat 64 j) = kbyte m0 d be (S + BitVec.ofNat 64 j) :=
  kbyte_congr (cp_src hP hcp hcN hj)

/-- One aligned word store of the copy. -/
theorem memcpy_step_w (hcp : Cp m0 m d be D S c) (hD8 : D.toNat % 8 = 0) (hS8 : S.toNat % 8 = 0)
    (hc8 : c % 8 = 0) (hcN : c + 8 ≤ N.toNat) (hdS : d (S + BitVec.ofNat 64 c))
    (hdD : d (D + BitVec.ofNat 64 c)) :
    Cp m0 (upd m (D + BitVec.ofNat 64 c) (rd m (S + BitVec.ofNat 64 c))) d be D S (c + 8) := by
  have hdl := hP.d_le
  have hsl := hP.s_le
  have hDc := add_ofNat_toNat (B := D) (j := c) (by omega)
  have hSc := add_ofNat_toNat (B := S) (j := c) (by omega)
  have hDa : (D + BitVec.ofNat 64 c).toNat % 8 = 0 := by rw [hDc]; omega
  have hSa : (S + BitVec.ofNat 64 c).toNat % 8 = 0 := by rw [hSc]; omega
  -- the loaded word is the entry word
  have hsrc : rd m (S + BitVec.ofNat 64 c) = rd m0 (S + BitVec.ofNat 64 c) := by
    have := cp_src hP hcp (by omega) (j := c) (by omega)
    rw [align_self hSa] at this
    unfold rd; rw [this]
  refine ⟨fun a ha => ?_, fun j hj => ?_⟩
  · have hne : a ≠ D + BitVec.ofNat 64 c := by
      intro e; apply ha; unfold CellIn; rw [e, hDc]; constructor
      · have := Nat.div_mul_le_self D.toNat 8; omega
      · omega
    rw [upd_ne hne]
    exact hcp.1 a fun hin => ha ⟨hin.1, by have := hin.2; omega⟩
  · by_cases hjc : j < c
    · obtain ⟨h1, h2⟩ := hcp.2 j hjc
      refine ⟨?_, h2⟩
      rw [kbyte_upd, if_neg]
      · exact h1
      · intro e
        have := congrArg BitVec.toNat e
        rw [align_toNat, add_ofNat_toNat (by omega), hDc] at this
        omega
    · -- the bytes of the stored word
      have hjc' : j - c < 8 := by omega
      have eD : D + BitVec.ofNat 64 j = (D + BitVec.ofNat 64 c) + BitVec.ofNat 64 (j - c) := by
        apply BitVec.eq_of_toNat_eq
        rw [add_ofNat_toNat (by omega), add_ofNat_toNat (by rw [hDc]; omega), hDc]; omega
      have eS : S + BitVec.ofNat 64 j = (S + BitVec.ofNat 64 c) + BitVec.ofNat 64 (j - c) := by
        apply BitVec.eq_of_toNat_eq
        rw [add_ofNat_toNat (by omega), add_ofNat_toNat (by rw [hSc]; omega), hSc]; omega
      rw [eD, eS, kbyte_upd, if_pos (align_of_aligned hDa hjc'), if_pos hdD, kbyte_eq,
        align_of_aligned hSa hjc', if_pos hdS, hsrc]
      refine ⟨?_, by simp⟩
      congr 1
      apply getByte_congr
      have e1 := add_ofNat_toNat (B := D + BitVec.ofNat 64 c) (j := j - c) (by rw [hDc]; omega)
      have e2 := add_ofNat_toNat (B := S + BitVec.ofNat 64 c) (j := j - c) (by rw [hSc]; omega)
      rw [e1, e2, hDc, hSc]
      omega

/-- One byte store of the copy. -/
theorem memcpy_step_b (hcp : Cp m0 m d be D S c) (hcN : c < N.toNat) {byte : UInt8}
    (hb : kbyte m d be (S + BitVec.ofNat 64 c) = some byte)
    (hdD : d (panByteAlignHOL (D + BitVec.ofNat 64 c))) :
    Cp m0 (upd m (panByteAlignHOL (D + BitVec.ofNat 64 c))
      (panSetByteHOL (D + BitVec.ofNat 64 c)
        (BitVec.ofNat 64 (BitVec.ofNat 8 (BitVec.ofNat 64 byte.toNat).toNat).toNat)
        (rd m (panByteAlignHOL (D + BitVec.ofNat 64 c))) be)) d be D S (c + 1) := by
  have hdl := hP.d_le
  have hDc := add_ofNat_toNat (B := D) (j := c) (by omega)
  refine ⟨fun a ha => ?_, fun j hj => ?_⟩
  · have hne : a ≠ panByteAlignHOL (D + BitVec.ofNat 64 c) := by
      intro e; apply ha; unfold CellIn; rw [e, align_toNat, hDc]; constructor
      · exact Nat.mul_le_mul_right 8 (Nat.div_le_div_right (by omega))
      · have := Nat.div_mul_le_self (D.toNat + c) 8; omega
    rw [upd_ne hne]
    exact hcp.1 a fun hin => ha ⟨hin.1, by have := hin.2; omega⟩
  · rw [kbyte_storeByte hdD]
    by_cases hjc : j < c
    · rw [if_neg]
      · exact hcp.2 j hjc
      · intro e
        have := congrArg BitVec.toNat e
        rw [add_ofNat_toNat (by omega), hDc] at this
        omega
    · have hjc' : j = c := by omega
      subst hjc'
      rw [if_pos rfl, byte_roundtrip, ← kbyte_src (D := D) (N := N) hP hcp (by omega) hcN, hb]
      exact ⟨rfl, rfl⟩

end steps

/-! ## Hoare rules for the stores -/

section hoare
variable {σ : Type} {X : Ctx 64}

theorem hoare_storeByte {P : PanSemStateFiniteExact 64 σ → Prop}
    {Q : Option (PanSemResultExact 64) → PanSemStateFiniteExact 64 σ → Prop} {a e : ExpHOL 64}
    (h : ∀ s, InCtx s X → P s → ∀ w x mem, ev s a = some (.val (.word w)) →
      ev s e = some (.val (.word x)) →
      @panMemStoreByteWord8HOL 64 _ s.memory s.memaddrs
        (fun y => Classical.propDecidable (s.memaddrs y)) s.be w (BitVec.ofNat 8 x.toNat) =
        some mem →
      Q none { s with memory := mem }) :
    Hoare σ X P (.storeByte a e) Q := by
  intro s hs hp
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.storeByte a e)]
  dsimp only
  split
  · rename_i w hw
    split
    · rename_i x hx
      split
      · rename_i mem hmem
        intro _
        exact h s hs hp w x mem hw hx hmem
      · intro ht; exact absurd ht (by simp)
    · intro ht; exact absurd ht (by simp)
  · intro ht; exact absurd ht (by simp)

theorem store_word_dom {d : BitVec 64 → Prop} {inst : DecidablePred d} {m mem : Mem} {a x : BitVec 64}
    (h : @panMemStoresHOL 64 _ a (flattenHOL (.val (.word x))) d inst m = some mem) :
    d a ∧ mem = upd m a x := by
  refine ⟨?_, store_word h⟩
  rw [flattenHOL] at h
  simp only [panMemStoresHOL] at h
  split at h
  · rename_i updated hu
    unfold panMemStoreHOL at hu
    split at hu
    · assumption
    · simp at hu
  · simp at h

/-- A sequence whose first part completes normally. -/
theorem hseq {P R : PanSemStateFiniteExact 64 σ → Prop}
    {Q : Option (PanSemResultExact 64) → PanSemStateFiniteExact 64 σ → Prop} {a b : ProgHOL 64}
    (ha : Hoare σ X P a (fun r u => r = none ∧ R u)) (hb : Hoare σ X R b Q) :
    Hoare σ X P (.seq a b) Q :=
  hoare_seq ha (fun _ _ _ hr _ h => absurd h.1 hr) (hoare_pre hb (fun _ _ h => h.2))

theorem ofs_eq (I : BitVec 64) (k : Nat) : I + BitVec.ofNat 64 k = BitVec.ofNat 64 (I.toNat + k) := by
  apply BitVec.eq_of_toNat_eq
  simp only [BitVec.toNat_add, BitVec.toNat_ofNat]
  omega

theorem ev_oE {u : PanSemStateFiniteExact 64 σ} {x : String} {B I : BitVec 64} (hB : DLk u x B)
    (hI : DLk u "i" I) (k : Nat) :
    ev u (oE x k) = some (.val (.word (B + BitVec.ofNat 64 (I.toNat + k)))) := by
  cases k with
  | zero =>
      rw [oE, ev_add2 (ev_lv_w hB) (ev_lv_w hI)]
      simp only [Nat.add_zero, BitVec.ofNat_toNat, BitVec.setWidth_eq]
  | succ k =>
      rw [oE, ev_add3 (ev_lv_w hB) (ev_lv_w hI) (ev_cw u (k + 1)), ofs_eq]

theorem notLower_true {x y : BitVec 64}
    (h : Flapjack.Compiler.Encoders.Asm.wordCmpHOL .notLower x y = true) : y.toNat ≤ x.toNat := by
  simp only [Flapjack.Compiler.Encoders.Asm.wordCmpHOL, Bool.not_eq_true', decide_eq_false_iff_not,
    BitVec.lt_def] at h
  omega

theorem notLower_false {x y : BitVec 64}
    (h : Flapjack.Compiler.Encoders.Asm.wordCmpHOL .notLower x y = false) : x.toNat < y.toNat := by
  simp only [Flapjack.Compiler.Encoders.Asm.wordCmpHOL, Bool.not_eq_false', decide_eq_true_eq,
    BitVec.lt_def] at h
  exact h

end hoare

/-! ## The loops -/

section loops
variable {σ : Type} {X : Ctx 64} (s0 : PanSemStateFiniteExact 64 σ) (D S N : BitVec 64)

/-- The state during the copy: `c` bytes done, the loop counter is `I`. -/
def CpS (I : BitVec 64) (c : Nat) (u : PanSemStateFiniteExact 64 σ) : Prop :=
  DLk u "dst" D ∧ DLk u "src" S ∧ DLk u "n" N ∧ DLk u "i" I ∧ u.memaddrs = s0.memaddrs ∧
    u.be = s0.be ∧ u.globals = s0.globals ∧ Cp s0.memory u.memory s0.memaddrs s0.be D S c

/-- Loop head state, word mode. -/
def JW (u : PanSemStateFiniteExact 64 σ) : Prop :=
  ∃ I : BitVec 64, CpS s0 D S N I I.toNat u ∧ I.toNat ≤ N.toNat ∧ I.toNat % 8 = 0

/-- Loop head state, byte mode. -/
def JB (u : PanSemStateFiniteExact 64 σ) : Prop :=
  ∃ I : BitVec 64, CpS s0 D S N I I.toNat u ∧ I.toNat ≤ N.toNat

variable {s0 D S N} (hP : MCPre D S N)
include hP

theorem hstW {I : BitVec 64} {c : Nat} (k : Nat) (hc : c = I.toNat + k) (hD8 : D.toNat % 8 = 0)
    (hS8 : S.toNat % 8 = 0) (hc8 : c % 8 = 0) (hcN : c + 8 ≤ N.toNat) :
    Hoare σ X (CpS s0 D S N I c) (stW k) (fun r u => r = none ∧ CpS s0 D S N I (c + 8) u) := by
  refine hoare_store fun u _ ⟨hD, hS, hN, hI, hd, hbe, hg, hcp⟩ w v mem hw hv hmem => ?_
  rw [ev_oE hD hI, ← hc] at hw
  cases hw
  obtain ⟨w', hw', hdw', rfl⟩ := ev_load_one hv
  rw [ev_oE hS hI, ← hc] at hw'
  cases hw'
  rw [mem_word u.memory] at hmem
  obtain ⟨hdD, rfl⟩ := store_word_dom hmem
  refine ⟨rfl, hD, hS, hN, hI, hd, hbe, hg, ?_⟩
  rw [hd] at hdD hdw'
  exact memcpy_step_w hP hcp hD8 hS8 hc8 hcN hdw' hdD

theorem hstB {I : BitVec 64} {c : Nat} (k : Nat) (hc : c = I.toNat + k) (hcN : c < N.toNat) :
    Hoare σ X (CpS s0 D S N I c) (stB k) (fun r u => r = none ∧ CpS s0 D S N I (c + 1) u) := by
  refine hoare_storeByte fun u _ ⟨hD, hS, hN, hI, hd, hbe, hg, hcp⟩ w x mem hw hx hmem => ?_
  rw [ev_oE hD hI, ← hc] at hw
  cases hw
  obtain ⟨w', hw', byte, hbyte, hxv⟩ := ev_loadByte_inv hx
  rw [ev_oE hS hI, ← hc] at hw'
  cases hw'
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hxv
  subst hxv
  have hmem' := hmem
  rw [hd, hbe] at hmem' hbyte
  obtain ⟨hdD, rfl⟩ := storeByte_eq hmem'
  refine ⟨rfl, hD, hS, hN, hI, hd, hbe, hg, ?_⟩
  exact memcpy_step_b hP hcp hcN hbyte hdD

theorem hinc {I : BitVec 64} (k : Nat) (hk : I.toNat + k ≤ N.toNat) :
    Hoare σ X (CpS s0 D S N I (I.toNat + k)) (incI k)
      (fun r u => r = none ∧ CpS s0 D S N (I + BitVec.ofNat 64 k) (I + BitVec.ofNat 64 k).toNat u) := by
  refine hoare_assign fun u _ ⟨hD, hS, hN, hI, hd, hbe, hg, hcp⟩ v hv _ => ?_
  rw [ev_add2 (ev_lv_w hI) (ev_cw u k)] at hv
  cases hv
  have ht : (I + BitVec.ofNat 64 k).toNat = I.toNat + k := by
    rw [ofs_eq, BitVec.toNat_ofNat]; have := hP.n_lt; exact Nat.mod_eq_of_lt (by omega)
  refine ⟨rfl, by lks, by lks, by lks, ?_, hd, hbe, hg, by rw [ht]; exact hcp⟩
  unfold DLk; rw [lk_set_self]

omit hP in
theorem geN_true {u : PanSemStateFiniteExact 64 σ} {I : BitVec 64} {k : Nat} (hN : DLk u "n" N)
    (hI : DLk u "i" I) (hc : CondTrue u (geN k)) (hlt : I.toNat + k < 2 ^ 64) :
    I.toNat + k ≤ N.toNat := by
  obtain ⟨w, hw, hw0⟩ := hc
  obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
  rw [ev_lv_w hN] at hx
  rw [ev_add2 (ev_lv_w hI) (ev_cw u k), ofs_eq] at hy
  cases hx; cases hy
  have := notLower_true hxy
  rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt hlt] at this
  exact this

omit hP in
theorem geN_false {u : PanSemStateFiniteExact 64 σ} {I : BitVec 64} {k : Nat} (hN : DLk u "n" N)
    (hI : DLk u "i" I) (hc : ev u (geN k) = some (.val (.word 0))) (hlt : I.toNat + k < 2 ^ 64) :
    N.toNat < I.toNat + k := by
  obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc
  rw [ev_lv_w hN] at hx
  rw [ev_add2 (ev_lv_w hI) (ev_cw u k), ofs_eq] at hy
  cases hx; cases hy
  have := notLower_false hxy
  rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt hlt] at this
  exact this

theorem loopW32 (hD8 : D.toNat % 8 = 0) (hS8 : S.toNat % 8 = 0) :
    Hoare σ X (JW s0 D S N) (.while (geN 32) cpW32) (fun r u => r = none ∧ JW s0 D S N u) := by
  have hn := hP.n_lt
  refine hoare_while (fun _ h => h) ?_ (fun u _ h _ => ⟨rfl, h⟩)
  intro u hu ⟨⟨I, hcs, hle, hI8⟩, hc⟩ ht
  have h32 := geN_true hcs.2.2.1 hcs.2.2.2.1 hc (by omega)
  have H : Hoare σ X (CpS s0 D S N I I.toNat) cpW32 (fun r u => r = none ∧
      CpS s0 D S N (I + BitVec.ofNat 64 32) (I + BitVec.ofNat 64 32).toNat u) :=
    hseq (hstW hP 0 rfl hD8 hS8 hI8 (by omega))
      (hseq (hstW hP 8 rfl hD8 hS8 (by omega) (by omega))
        (hseq (hstW hP 16 (by omega) hD8 hS8 (by omega) (by omega))
          (hseq (hstW hP 24 (by omega) hD8 hS8 (by omega) (by omega))
            (hoare_pre (hinc hP 32 (by omega)) (fun _ _ h => by
              rw [show I.toNat + 8 + 8 + 8 + 8 = I.toNat + 32 by omega] at h; exact h)))))
  have := H u hu hcs ht
  have ht' : (I + BitVec.ofNat 64 32).toNat = I.toNat + 32 := by
    rw [ofs_eq, BitVec.toNat_ofNat]; exact Nat.mod_eq_of_lt (by omega)
  refine ⟨fun hr => ⟨_, (this.2), by omega, by omega⟩, fun hr => absurd (this.1.symm.trans hr) (by simp),
    fun hr => absurd (this.1.symm.trans hr) (by simp), fun v hr => absurd (this.1.symm.trans hr) (by simp)⟩

theorem loopW8 (hD8 : D.toNat % 8 = 0) (hS8 : S.toNat % 8 = 0) :
    Hoare σ X (JW s0 D S N) (.while (geN 8) cpW8) (fun r u => r = none ∧ JB s0 D S N u) := by
  have hn := hP.n_lt
  refine hoare_while (fun _ h => h) ?_ (fun u _ ⟨I, hcs, hle, _⟩ _ => ⟨rfl, I, hcs, hle⟩)
  intro u hu ⟨⟨I, hcs, hle, hI8⟩, hc⟩ ht
  have h8 := geN_true hcs.2.2.1 hcs.2.2.2.1 hc (by omega)
  have H : Hoare σ X (CpS s0 D S N I I.toNat) cpW8 (fun r u => r = none ∧
      CpS s0 D S N (I + BitVec.ofNat 64 8) (I + BitVec.ofNat 64 8).toNat u) :=
    hseq (hstW hP 0 rfl hD8 hS8 hI8 (by omega)) (hinc hP 8 (by omega))
  have := H u hu hcs ht
  have ht' : (I + BitVec.ofNat 64 8).toNat = I.toNat + 8 := by
    rw [ofs_eq, BitVec.toNat_ofNat]; exact Nat.mod_eq_of_lt (by omega)
  refine ⟨fun hr => ⟨_, (this.2), by omega, by omega⟩, fun hr => absurd (this.1.symm.trans hr) (by simp),
    fun hr => absurd (this.1.symm.trans hr) (by simp), fun v hr => absurd (this.1.symm.trans hr) (by simp)⟩

theorem loopB8 :
    Hoare σ X (JB s0 D S N) (.while (geN 8) cpB8) (fun r u => r = none ∧ JB s0 D S N u) := by
  have hn := hP.n_lt
  refine hoare_while (fun _ h => h) ?_ (fun u _ h _ => ⟨rfl, h⟩)
  intro u hu ⟨⟨I, hcs, hle⟩, hc⟩ ht
  have h8 := geN_true hcs.2.2.1 hcs.2.2.2.1 hc (by omega)
  have H : Hoare σ X (CpS s0 D S N I I.toNat) cpB8 (fun r u => r = none ∧
      CpS s0 D S N (I + BitVec.ofNat 64 8) (I + BitVec.ofNat 64 8).toNat u) :=
    hseq (hstB hP 0 rfl (by omega)) (hseq (hstB hP 1 rfl (by omega))
      (hseq (hstB hP 2 (by omega) (by omega)) (hseq (hstB hP 3 (by omega) (by omega))
        (hseq (hstB hP 4 (by omega) (by omega)) (hseq (hstB hP 5 (by omega) (by omega))
          (hseq (hstB hP 6 (by omega) (by omega)) (hseq (hstB hP 7 (by omega) (by omega))
            (hoare_pre (hinc hP 8 (by omega)) (fun _ _ h => by
              rw [show I.toNat + 0 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 = I.toNat + 8 by omega] at h
              exact h)))))))))
  have := H u hu hcs ht
  have ht' : (I + BitVec.ofNat 64 8).toNat = I.toNat + 8 := by
    rw [ofs_eq, BitVec.toNat_ofNat]; exact Nat.mod_eq_of_lt (by omega)
  refine ⟨fun hr => ⟨_, (this.2), by omega⟩, fun hr => absurd (this.1.symm.trans hr) (by simp),
    fun hr => absurd (this.1.symm.trans hr) (by simp), fun v hr => absurd (this.1.symm.trans hr) (by simp)⟩

theorem loopB1 :
    Hoare σ X (JB s0 D S N) (.while (.cmp .lower (lv (nm "i")) (lv (nm "n"))) cpB1)
      (fun r u => r = none ∧ CpS s0 D S N N N.toNat u) := by
  have hn := hP.n_lt
  refine hoare_while (fun _ h => h) ?_ ?_
  · intro u hu ⟨⟨I, hcs, hle⟩, hc⟩ ht
    have h1 : I.toNat < N.toNat := by
      obtain ⟨w, hw, hw0⟩ := hc
      obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
      rw [ev_lv_w hcs.2.2.2.1] at hx
      rw [ev_lv_w hcs.2.2.1] at hy
      cases hx; cases hy
      exact lower_true hxy
    have H : Hoare σ X (CpS s0 D S N I I.toNat) cpB1 (fun r u => r = none ∧
        CpS s0 D S N (I + BitVec.ofNat 64 1) (I + BitVec.ofNat 64 1).toNat u) :=
      hseq (hstB hP 0 rfl (by omega)) (hinc hP 1 (by omega))
    have := H u hu hcs ht
    have ht' : (I + BitVec.ofNat 64 1).toNat = I.toNat + 1 := by
      rw [ofs_eq, BitVec.toNat_ofNat]; exact Nat.mod_eq_of_lt (by omega)
    refine ⟨fun hr => ⟨_, (this.2), by omega⟩, fun hr => absurd (this.1.symm.trans hr) (by simp),
      fun hr => absurd (this.1.symm.trans hr) (by simp), fun v hr => absurd (this.1.symm.trans hr) (by simp)⟩
  · intro u _ ⟨I, hcs, hle⟩ hc
    obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc
    rw [ev_lv_w hcs.2.2.2.1] at hx
    rw [ev_lv_w hcs.2.2.1] at hy
    cases hx; cases hy
    have := lower_false hxy
    have e : I = N := BitVec.eq_of_toNat_eq (by omega)
    subst e
    exact ⟨rfl, hcs⟩

omit hP in
/-- The ite condition of the aligned path. -/
theorem alE_true {u : PanSemStateFiniteExact 64 σ} {x y : String} (hD : DLk u x D) (hS : DLk u y S)
    {w : BitVec 64} (hw : ev u (alE x y) = some (.val (.word w))) (hw0 : w ≠ 0) :
    D.toNat % 8 = 0 ∧ S.toNat % 8 = 0 := by
  obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
  rw [ev_cw] at hy
  cases hy
  obtain ⟨o, z, ho, hz, hxe⟩ := ev_and2_inv hx
  rw [ev_cw] at hz
  cases hz
  obtain ⟨a, b, ha, hb, hoe⟩ := ev_op2_inv ho
  rw [ev_lv_w hD] at ha
  rw [ev_lv_w hS] at hb
  cases ha; cases hb
  rw [hoe] at ho
  have hor : o = D ||| S := by
    have : wordOpHOL .or [D, S] = some (D ||| (S ||| 0#64)) := rfl
    rw [this] at ho
    simp only [Option.map_some, Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at ho
    rw [← ho, BitVec.or_zero]
  subst hor
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hxe
  subst hxe
  simp only [Flapjack.Compiler.Encoders.Asm.wordCmpHOL, beq_iff_eq] at hxy
  have h1 := congrArg BitVec.toNat hxy
  rw [BitVec.toNat_and, BitVec.toNat_or, BitVec.toNat_ofNat, BitVec.toNat_ofNat] at h1
  have h7 : (7 : Nat) % 2 ^ 64 = 2 ^ 3 - 1 := by decide
  rw [h7, Nat.and_two_pow_sub_one_eq_mod, Nat.or_mod_two_pow, Nat.or_eq_zero_iff] at h1
  exact ⟨h1.1, h1.2⟩

omit hP in
theorem cps_zero (hD : DLk s0 "dst" D) (hS : DLk s0 "src" S) (hN : DLk s0 "n" N) :
    CpS s0 D S N 0 0 (setVarHOLFinite (nm "i") (.val (.word (BitVec.ofNat 64 0))) s0) := by
  refine ⟨by lks, by lks, by lks, by unfold DLk; rw [lk_set_self]; rfl, rfl, rfl, rfl,
    cp_zero _ _ _ _ _⟩

/-- What a returning copy did. -/
def CopyPost (s0 u : PanSemStateFiniteExact 64 σ) (D S N : BitVec 64) : Prop :=
  u.memaddrs = s0.memaddrs ∧ u.be = s0.be ∧ u.globals = s0.globals ∧
    Cp s0.memory u.memory s0.memaddrs s0.be D S N.toNat

theorem mcBody_hoare (hD : DLk s0 "dst" D) (hS : DLk s0 "src" S) (hN : DLk s0 "n" N) :
    Hoare σ X (fun t => t = s0) mcBody (fun r u => ∀ v, r = some (.returned v) → CopyPost s0 u D S N) := by
  refine hoare_dec fun u _ hu v hv _ => ?_
  have hu' : u = s0 := hu
  subst hu'
  rw [ev_cw] at hv
  cases hv
  have h0 := cps_zero hD hS hN
  refine hseq (R := JB u D S N) ?_ ?_
  · refine hoare_ite ?_ ?_
    · intro t ht ⟨ht0, w, hw, hw0⟩ htr
      subst ht0
      obtain ⟨hD8, hS8⟩ := alE_true h0.1 h0.2.1 hw hw0
      exact hseq (loopW32 hP hD8 hS8) (loopW8 hP hD8 hS8) _ ht ⟨0, h0, by simp, by simp⟩ htr
    · exact hoare_skip fun t _ ⟨ht0, _⟩ => by subst ht0; exact ⟨rfl, 0, h0, by simp⟩
  · refine hseq (loopB8 hP) (hseq (loopB1 hP) ?_)
    refine hoare_return fun t _ hcs v _ => ?_
    intro v' hv'
    exact ⟨hcs.2.2.2.2.1, hcs.2.2.2.2.2.1, hcs.2.2.2.2.2.2.1, hcs.2.2.2.2.2.2.2⟩

end loops

/-! ## The specification -/

section spec
variable {σ : Type} {X : Ctx 64}

theorem lookupCode_three_full {code : MlS → Option (List (MlS × ShapeHOL) × ProgHOL 64 × ShapeHOL)}
    {f pa pb pc : MlS} {sa sb sc : ShapeHOL} {bd : ProgHOL 64} {rsh : ShapeHOL}
    (hc : code f = some ([(pa, sa), (pb, sb), (pc, sc)], bd, rsh)) (hab : pa ≠ pb) (hac : pa ≠ pc)
    (hbc : pb ≠ pc)
    {vs : List (ValueHOL 64)} {body : ProgHOL 64} {callee : HolFiniteMapExact MlS (ValueHOL 64)}
    {rs : ShapeHOL} (h : PanSemStateFiniteExact.lookupCodeHOLFinite code f vs = some (body, callee, rs)) :
    body = bd ∧ rs = rsh ∧ ∃ A B C, vs = [A, B, C] ∧ shapeEqHOL sa (shapeOfHOLExact A) = true ∧
      shapeEqHOL sb (shapeOfHOLExact B) = true ∧ shapeEqHOL sc (shapeOfHOLExact C) = true ∧
      callee.lookup pa = some A ∧ callee.lookup pb = some B ∧ callee.lookup pc = some C := by
  unfold PanSemStateFiniteExact.lookupCodeHOLFinite at h
  split at h
  · simp at h
  · rename_i body' cl rs' hx
    simp only [Option.some.injEq, Prod.mk.injEq] at h
    obtain ⟨rfl, rfl, rfl⟩ := h
    unfold lookupCodeHOLExact at hx
    rw [hc] at hx
    dsimp only at hx
    split at hx
    · rename_i hcond
      simp only [Option.some.injEq, Prod.mk.injEq] at hx
      obtain ⟨rfl, rfl, rfl⟩ := hx
      obtain ⟨-, hlen, hall⟩ := hcond
      match vs, hlen, hall with
      | [A, B, C], _, hall =>
          simp only [List.zip_cons_cons, List.zip_nil_right, List.all_cons, List.all_nil,
            Bool.and_true, Bool.and_eq_true] at hall
          refine ⟨rfl, rfl, A, B, C, rfl, hall.1, hall.2.1, hall.2.2, ?_, ?_, ?_⟩
          · simp [hab, hac]
          · simp [hbc]
          · simp
    · simp at hx

/-- **`memcpy` copies.** -/
theorem funSpec_memcpy (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "memcpy") (fun vs s r u => ∀ D S N : BitVec 64,
      vs = [.val (.word D), .val (.word S), .val (.word N)] → MCPre D S N →
      ∀ v, r = .returned v → CopyPost s u D S N) := by
  intro vs body callee rs hl s hs hloc r hr D S N hvs hP v hv
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, C, hABC, -, -, -, hA, hB, hC'⟩ :=
    lookupCode_three_full code_memcpy (by decide) (by decide) (by decide) hl
  rw [hvs] at hABC
  simp only [List.cons.injEq, and_true] at hABC
  obtain ⟨rfl, rfl, rfl⟩ := hABC
  have hD : DLk s "dst" D := by unfold DLk; rw [hloc]; exact hA
  have hS : DLk s "src" S := by unfold DLk; rw [hloc]; exact hB
  have hN : DLk s "n" N := by unfold DLk; rw [hloc]; exact hC'
  have H := mcBody_hoare (X := X) hP hD hS hN s hs rfl (by rw [hr, hv]; trivial)
  rw [hr, hv] at H
  exact H _ rfl

theorem copyPost_bytes {s u : PanSemStateFiniteExact 64 σ} {D S N : BitVec 64}
    (h : CopyPost s u D S N) {j : BitVec 64} (hj : j.toNat < N.toNat) :
    kbyte u.memory s.memaddrs s.be (D + j) = kbyte s.memory s.memaddrs s.be (S + j) ∧
      (kbyte s.memory s.memaddrs s.be (S + j)).isSome := by
  have := h.2.2.2.2 j.toNat hj
  rwa [BitVec.ofNat_toNat, BitVec.setWidth_eq] at this

theorem copyPost_out {s u : PanSemStateFiniteExact 64 σ} {D S N : BitVec 64}
    (h : CopyPost s u D S N) {a : BitVec 64} (ha : ¬ CellIn D N.toNat a) : u.memory a = s.memory a :=
  h.2.2.2.1 a ha

/-- **Aligned copies are word copies.** -/
theorem copyPost_words {s u : PanSemStateFiniteExact 64 σ} {D S N : BitVec 64}
    (h : CopyPost s u D S N) (hP : MCPre D S N) (hD8 : D.toNat % 8 = 0) (hS8 : S.toNat % 8 = 0)
    (hN8 : N.toNat % 8 = 0) {k : Nat} (hk : 8 * k < N.toNat) :
    u.memory (D + BitVec.ofNat 64 (8 * k)) = s.memory (S + BitVec.ofNat 64 (8 * k)) ∧
      s.memaddrs (D + BitVec.ofNat 64 (8 * k)) ∧ s.memaddrs (S + BitVec.ofNat 64 (8 * k)) := by
  have hdl := hP.d_le
  have hsl := hP.s_le
  have hDc := add_ofNat_toNat (B := D) (j := 8 * k) (by omega)
  have hSc := add_ofNat_toNat (B := S) (j := 8 * k) (by omega)
  have hDa : (D + BitVec.ofNat 64 (8 * k)).toNat % 8 = 0 := by rw [hDc]; omega
  have hSa : (S + BitVec.ofNat 64 (8 * k)).toNat % 8 = 0 := by rw [hSc]; omega
  have hb : ∀ j < 8, kbyte u.memory s.memaddrs s.be (D + BitVec.ofNat 64 (8 * k) + BitVec.ofNat 64 j) =
      kbyte s.memory s.memaddrs s.be (S + BitVec.ofNat 64 (8 * k) + BitVec.ofNat 64 j) ∧
      (kbyte s.memory s.memaddrs s.be (S + BitVec.ofNat 64 (8 * k) + BitVec.ofNat 64 j)).isSome := by
    intro j hj
    have := h.2.2.2.2 (8 * k + j) (by omega)
    have e : ∀ B : BitVec 64, B + BitVec.ofNat 64 (8 * k) + BitVec.ofNat 64 j =
        B + BitVec.ofNat 64 (8 * k + j) := by
      intro B; apply BitVec.eq_of_toNat_eq; simp only [BitVec.toNat_add, BitVec.toNat_ofNat]; omega
    rw [e, e]; exact this
  have hdS : s.memaddrs (S + BitVec.ofNat 64 (8 * k)) := by
    have := (hb 0 (by decide)).2
    rw [kbyte_isSome, align_of_aligned hSa (by decide)] at this
    exact this
  have hdD : s.memaddrs (D + BitVec.ofNat 64 (8 * k)) := by
    have := (hb 0 (by decide)).2
    rw [← (hb 0 (by decide)).1, kbyte_isSome, align_of_aligned hDa (by decide)] at this
    exact this
  refine ⟨?_, hdD, hdS⟩
  rw [mem_word u.memory, mem_word s.memory]
  congr 1
  apply word_of_bytes (be := s.be) hDa hSa
  intro j hj
  have := (hb j hj).1
  rw [kbyte_eq, kbyte_eq, align_of_aligned hDa hj, align_of_aligned hSa hj, if_pos hdD, if_pos hdS] at this
  exact Option.some.inj this

end spec

end InitECandidate.Solver.Spec.Inv
