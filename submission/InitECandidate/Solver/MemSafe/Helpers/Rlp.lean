import InitECandidate.Solver.MemSafe.Helpers.SeqN

set_option autoImplicit false

/-!
# The RLP encoders

Exact footprints and returned lengths, with `beLen` the big-endian byte length:

* `rlp_be_len(v)`: writes nothing, returns `beLen v` (`≤ 8`) (`footRet_rlp_be_len`);
* `rlp_put_be(dst, v, n)`: writes `[dst, dst + n)` (`foot_rlp_put_be`);
* `rlp_write_header(dst, base, n)`: writes `[dst, dst + hdrLen n)` and returns `hdrLen n`
  (`hdrLen n = 1` for `n ≤ 55`, else `1 + beLen n`, so `≤ 9`) (`footRet_rlp_write_header`);
* `rlp_encode_bytes(dst, src, n)`: writes `[dst, dst + hdrLen n + n)` and returns a length
  `k` with `1 ≤ k ≤ hdrLen n + n`, exactly `hdrLen n + n` unless `n = 1`
  (`footRet_rlp_encode_bytes`);
* `rlp_encode_word(dst, w)`: writes `[dst, dst + wordLen w)` and returns `wordLen w`
  (`wordLen w = 1` for `w < 128`, else `1 + beLen w`) (`footRet_rlp_encode_word`).

Summaries (conservative constant bounds): `summ_rlp_put_be` for `[.bufArg 2 1 0, .any, .any]`,
`summ_rlp_write_header` for `[.buf 9, .any, .any]`, `summ_rlp_encode_bytes` for
`[.bufArg 2 1 9, .any, .any]`, `summ_rlp_encode_word` for `[.buf 9, .any]`, `summ_rlp_be_len`.
Callers with exactly sized buffers use the footprint specs.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Helpers
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-! ## Lengths -/

/-- The big-endian byte length. -/
def beLen (x : Nat) : Nat := if h : x = 0 then 0 else 1 + beLen (x / 256)
termination_by x
decreasing_by omega

theorem beLen_zero : beLen 0 = 0 := by rw [beLen]; simp

theorem beLen_pos {x : Nat} (h : x ≠ 0) : beLen x = 1 + beLen (x / 256) := by
  rw [beLen]; simp [h]

theorem beLen_le : ∀ (k x : Nat), x < 256 ^ k → beLen x ≤ k
  | 0, x, h => by
      have : x = 0 := by simpa using h
      subst this; simp [beLen_zero]
  | k + 1, x, h => by
      by_cases hx : x = 0
      · subst hx; simp [beLen_zero]
      · rw [beLen_pos hx]
        have : x / 256 < 256 ^ k := by
          rw [Nat.pow_succ] at h
          exact Nat.div_lt_of_lt_mul (by rw [Nat.mul_comm]; exact h)
        have := beLen_le k (x / 256) this
        omega

theorem beLen_le8 {x : Nat} (h : x < 2 ^ 64) : beLen x ≤ 8 :=
  beLen_le 8 x (by rw [show (256 : Nat) ^ 8 = 2 ^ 64 from rfl]; exact h)

theorem beLen_pos' {x : Nat} (h : x ≠ 0) : 1 ≤ beLen x := by
  rw [beLen_pos h]; omega

/-- The RLP header length of a string of length `n`. -/
def hdrLen (n : Nat) : Nat := if n ≤ 55 then 1 else 1 + beLen n

/-- The RLP length of a word. -/
def wordLen (w : Nat) : Nat := if w < 128 then 1 else 1 + beLen w

theorem hdrLen_le {n : Nat} (h : n < 2 ^ 64) : 1 ≤ hdrLen n ∧ hdrLen n ≤ 9 := by
  unfold hdrLen
  have := beLen_le8 h
  split <;> omega

theorem wordLen_le {w : Nat} (h : w < 2 ^ 64) : 1 ≤ wordLen w ∧ wordLen w ≤ 9 := by
  unfold wordLen
  have := beLen_le8 h
  split <;> omega

/-! ## Names and bodies -/

def lN : MlS := nm "ll"
def hN : MlS := nm "h"
def bN : MlS := nm "b"
def baseN : MlS := nm "base"

def beLenBody : ProgHOL 64 :=
  .dec nN .one (cw 0)
    (.seq (.while (.cmp .notEqual (lv vN) (cw 0))
        (.seq (.assign .local vN (shr (lv vN) 8)) (.assign .local nN (.op .add [lv nN, cw 1]))))
      (.return (lv nN)))

def putBeBody : ProgHOL 64 :=
  .dec iN .one (lv nN)
    (.seq (.while (.cmp .lower (cw 0) (lv iN))
        (.seq (.assign .local iN (.op .sub [lv iN, cw 1]))
          (.seq (.storeByte (.op .add [lv dN, lv iN]) (lv vN))
            (.assign .local vN (shr (lv vN) 8)))))
      ret0)

def writeHeaderBody : ProgHOL 64 :=
  .seq (.ite (.cmp .notLower (cw 55) (lv nN))
      (.seq (.storeByte (lv dN) (.op .add [lv baseN, lv nN])) (.return (cw 1))) .skip)
    (.decCall lN .one (nm "rlp_be_len") [lv nN]
      (.seq (.storeByte (lv dN) (.op .add [lv baseN, cw 55, lv lN]))
        (.seq (callD (nm "rlp_put_be") [.op .add [lv dN, cw 1], lv nN, lv lN])
          (.return (.op .add [cw 1, lv lN])))))

def encodeBytesBody : ProgHOL 64 :=
  .seq (.ite (.cmp .equal (lv nN) (cw 1))
      (.dec bN .one (.loadByte (lv sN))
        (.ite (.cmp .lower (lv bN) (cw 128))
          (.seq (.storeByte (lv dN) (lv bN)) (.return (cw 1))) .skip)) .skip)
    (.decCall hN .one (nm "rlp_write_header") [lv dN, cw 128, lv nN]
      (.seq (callD (nm "memcpy") [.op .add [lv dN, lv hN], lv sN, lv nN])
        (.return (.op .add [lv hN, lv nN]))))

def encodeWordBody : ProgHOL 64 :=
  .seq (.ite (.cmp .equal (lv wN) (cw 0))
      (.seq (.storeByte (lv dN) (cw 128)) (.return (cw 1))) .skip)
    (.seq (.ite (.cmp .lower (lv wN) (cw 128))
        (.seq (.storeByte (lv dN) (lv wN)) (.return (cw 1))) .skip)
      (.decCall lN .one (nm "rlp_be_len") [lv wN]
        (.seq (.storeByte (lv dN) (.op .add [cw 128, lv lN]))
          (.seq (callD (nm "rlp_put_be") [.op .add [lv dN, cw 1], lv wN, lv lN])
            (.return (.op .add [cw 1, lv lN]))))))

theorem entry_rlp_be_len : fnEntry Guest.Software.guestFn_rlp_be_len =
    (nm "rlp_be_len", [(vN, .one)], beLenBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_rlp_be_len : guestCode (nm "rlp_be_len") = some ([(vN, .one)], beLenBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 118) (by decide)) ⟨_, rfl⟩
    entry_rlp_be_len

theorem entry_rlp_put_be : fnEntry Guest.Software.guestFn_rlp_put_be =
    (nm "rlp_put_be", [(dN, .one), (vN, .one), (nN, .one)], putBeBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_rlp_put_be : guestCode (nm "rlp_put_be") =
    some ([(dN, .one), (vN, .one), (nN, .one)], putBeBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 119) (by decide)) ⟨_, rfl⟩
    entry_rlp_put_be

theorem entry_rlp_write_header : fnEntry Guest.Software.guestFn_rlp_write_header =
    (nm "rlp_write_header", [(dN, .one), (baseN, .one), (nN, .one)], writeHeaderBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_rlp_write_header : guestCode (nm "rlp_write_header") =
    some ([(dN, .one), (baseN, .one), (nN, .one)], writeHeaderBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 120) (by decide)) ⟨_, rfl⟩
    entry_rlp_write_header

theorem entry_rlp_encode_bytes : fnEntry Guest.Software.guestFn_rlp_encode_bytes =
    (nm "rlp_encode_bytes", [(dN, .one), (sN, .one), (nN, .one)], encodeBytesBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_rlp_encode_bytes : guestCode (nm "rlp_encode_bytes") =
    some ([(dN, .one), (sN, .one), (nN, .one)], encodeBytesBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 122) (by decide)) ⟨_, rfl⟩
    entry_rlp_encode_bytes

theorem entry_rlp_encode_word : fnEntry Guest.Software.guestFn_rlp_encode_word =
    (nm "rlp_encode_word", [(dN, .one), (wN, .one)], encodeWordBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_rlp_encode_word : guestCode (nm "rlp_encode_word") =
    some ([(dN, .one), (wN, .one)], encodeWordBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 123) (by decide)) ⟨_, rfl⟩
    entry_rlp_encode_word

/-! ## Expression facts -/

theorem ev_shr8 {s : State σ} {x : MlS} {V : BitVec 64}
    (h : s.locals.lookup x = some (.val (.word V))) :
    ev s (shr (lv x) 8) = some (.val (.word (V >>> (8 : Nat)))) := by
  unfold shr
  rw [ev_shift (ev_lw h) (ev_cw _ 8)]
  simp [wordShiftHOL]

theorem toNat_shr8 (V : BitVec 64) : (V >>> (8 : Nat)).toNat = V.toNat / 256 := by
  rw [BitVec.toNat_ushiftRight, Nat.shiftRight_eq_div_pow]

theorem ofNat_toNat' {x : BitVec 64} {k : Nat} (h : x.toNat = k) : x = BitVec.ofNat 64 k := by
  subst h; simp

theorem ofNat_add_bv {a : Nat} {N : BitVec 64} (ha : a < 2 ^ 64) :
    BitVec.ofNat 64 a + N = BitVec.ofNat 64 (a + N.toNat) := by
  apply BitVec.eq_of_toNat_eq
  rw [BitVec.toNat_add, BitVec.toNat_ofNat, BitVec.toNat_ofNat, Nat.mod_eq_of_lt ha]

/-! ## `rlp_be_len` -/

/-- `rlp_be_len` returns the byte length of its argument. -/
def BeLenRet (vs : List (ValueHOL 64)) (v : ValueHOL 64) : Prop :=
  ∀ V : BitVec 64, argW vs 0 = some V → v = .val (.word (BitVec.ofNat 64 (beLen V.toNat)))

/-- The loop state of `rlp_be_len`. -/
def BeJ (V0 : BitVec 64) (m : Locals) : Prop :=
  ∃ V Nn : BitVec 64, m.lookup vN = some (.val (.word V)) ∧
    m.lookup nN = some (.val (.word Nn)) ∧ Nn.toNat + beLen V.toNat = beLen V0.toNat

theorem footRet_rlp_be_len (hC : X.code.lookup = guestCode) :
    FootRet σ X (nm "rlp_be_len") (fun _ => True) NoFoot BeLenRet := by
  refine footRet_of_hoareG fun vs body callee rs hl s0 _ hloc _ => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, rfl, hA', hla⟩ := lookupCode_one code_rlp_be_len hl
  obtain ⟨V0, rfl⟩ := val_of_shapeEq_one hA'
  refine hoareG_dec fun s _ hs v hv _ => ?_
  subst s
  rw [ev_cw] at hv
  cases hv
  let Rf := NoFoot [.val (.word V0)]
  let Ret : ValueHOL 64 → Prop := fun v => v = .val (.word (BitVec.ofNat 64 (beLen V0.toNat)))
  refine hoareG_conseq (P := LPre Rf s0 (BeJ V0)) (Q := LQ Rf s0 (fun _ => True) Ret) ?_ ?_
    fun _ _ _ _ h => ⟨h.1, fun w hw V hV => by cases hV; exact h.2.2 w hw⟩
  · refine hoareG_seqL (L2 := fun m => m.lookup nN =
      some (.val (.word (BitVec.ofNat 64 (beLen V0.toNat))))) ?_
      (hoareG_returnQ fun t _ hL w hw => by rw [ev_lw hL] at hw; exact (Option.some.inj hw).symm)
    refine hoareG_whileN ?_ ?_
    · refine hoareG_pre (P := LPre Rf s0 (fun m => BeJ V0 m ∧
        ∃ V : BitVec 64, m.lookup vN = some (.val (.word V)) ∧ V ≠ 0)) ?_ ?_
      · refine hoareG_seqN (L2 := fun m => ∃ V Nn : BitVec 64, m.lookup vN = some (.val (.word (V >>> (8 : Nat)))) ∧
            m.lookup nN = some (.val (.word Nn)) ∧ Nn.toNat + beLen V.toNat = beLen V0.toNat ∧
            V ≠ 0) ?_ ?_
        · refine hoareG_assignN fun t _ ⟨⟨V, Nn, hv, hn, hsum⟩, V', hv', hne⟩ w hw => ?_
          rw [hv] at hv'
          cases hv'
          rw [ev_shr8 hv] at hw
          cases hw
          exact ⟨V, Nn, lookup_update_self _ _ _, by rw [lookup_update_ne _ _ (by decide)]; exact hn,
            hsum, hne⟩
        · refine hoareG_assignN fun t _ ⟨V, Nn, hv, hn, hsum, hne⟩ w hw => ?_
          rw [ev_add2 (ev_lw hn) (ev_cw _ 1)] at hw
          cases hw
          have h8 := beLen_le8 V0.isLt
          have hV : V.toNat ≠ 0 := fun h => hne (BitVec.eq_of_toNat_eq (by simpa using h))
          have hb := beLen_pos hV
          have hn1 : (Nn + BitVec.ofNat 64 1).toNat = Nn.toNat + 1 := toNat_addc (by omega)
          refine ⟨V >>> (8 : Nat), Nn + BitVec.ofNat 64 1,
            by rw [lookup_update_ne _ _ (by decide)]; exact hv, lookup_update_self _ _ _, ?_⟩
          rw [hn1, toNat_shr8]
          omega
      · intro t _ ⟨⟨hJ, hbw⟩, hc⟩
        obtain ⟨V, Nn, hv, hn, hsum⟩ := hJ
        obtain ⟨w, hw, hw0⟩ := hc
        obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
        rw [ev_lw hv] at hx
        cases hx
        rw [ev_cw] at hy
        cases hy
        refine ⟨⟨⟨V, Nn, hv, hn, hsum⟩, V, hv, ?_⟩, hbw⟩
        simpa [wordCmpHOL] using hxy
    · intro t _ ⟨V, Nn, hv, hn, hsum⟩ hc
      obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc
      rw [ev_lw hv] at hx
      cases hx
      rw [ev_cw] at hy
      cases hy
      have hV0 : V = 0 := by simpa [wordCmpHOL] using hxy
      subst hV0
      rw [hn, ofNat_toNat' (x := Nn) (k := beLen V0.toNat) (by simpa [beLen_zero] using hsum)]
  · intro t _ ht
    subst t
    exact ⟨⟨V0, 0, by rw [lk_set_ne _ _ (by decide), hloc]; exact hla,
      lk_set_self _ _ _, by simp⟩, rfl, fun _ _ => rfl⟩

/-! ## `rlp_put_be` -/

/-- The loop state of `rlp_put_be`: `dst = D`, `i = I` with `I ≤ N`. -/
def PutJ (D N : BitVec 64) (m : Locals) : Prop :=
  m.lookup dN = some (.val (.word D)) ∧ ∃ I : BitVec 64, m.lookup iN = some (.val (.word I)) ∧
    I.toNat ≤ N.toNat

/-- ... after the decrement: `I < N`. -/
def PutJs (D N : BitVec 64) (m : Locals) : Prop :=
  m.lookup dN = some (.val (.word D)) ∧ ∃ I : BitVec 64, m.lookup iN = some (.val (.word I)) ∧
    I.toNat < N.toNat

theorem foot_rlp_put_be (hC : X.code.lookup = guestCode) :
    FootSpec σ X (nm "rlp_put_be") (BufPre 0 2) (BufR 0 2) := by
  refine footSpec_of_hoareG fun vs body callee rs hl s0 _ hloc hP => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, Cc, rfl, hA', -, hC', hla, -, hlc⟩ :=
    lookupCode_three code_rlp_put_be (by decide) (by decide) (by decide) hl
  obtain ⟨D, rfl⟩ := val_of_shapeEq_one hA'
  obtain ⟨N, rfl⟩ := val_of_shapeEq_one hC'
  obtain ⟨D', N', hD, hN, hb⟩ := hP
  cases hD
  cases hN
  have hse : scratchEnd < 2 ^ 63 := by decide
  let Rf := BufR 0 2 [.val (.word D), B, .val (.word N)]
  have hR : ∀ a, Overlap D.toNat N.toNat a → Rf a := fun a h => ⟨D, N, rfl, rfl, h⟩
  refine hoareG_dec fun s _ hs v hv _ => ?_
  subst s
  rw [ev_lw (hloc ▸ hlc)] at hv
  cases hv
  refine hoareG_conseq (P := LPre Rf s0 (PutJ D N)) (Q := LP Rf s0 (fun _ => True)) ?_ ?_
    fun _ _ _ _ h => h.1
  · refine hoareG_seqL (L2 := fun _ => True) ?_ hoareG_returnL
    refine hoareG_whileN ?_ (fun _ _ _ _ => trivial)
    refine hoareG_pre (P := LPre Rf s0 (fun m => m.lookup dN = some (.val (.word D)) ∧
      ∃ I : BitVec 64, m.lookup iN = some (.val (.word I)) ∧ I.toNat ≤ N.toNat ∧
        0 < I.toNat)) ?_ ?_
    · refine hoareG_seqN (L2 := PutJs D N) ?_ ?_
      · refine hoareG_assignN fun t _ ⟨hd, I, hi, hIN, hI0⟩ w hw => ?_
        rw [ev_sub2 (ev_lw hi) (ev_cw _ 1)] at hw
        cases hw
        refine ⟨by rw [lookup_update_ne _ _ (by decide)]; exact hd, _, lookup_update_self _ _ _, ?_⟩
        rw [toNat_subc (by omega)]
        omega
      · refine hoareG_seqN (L2 := PutJs D N) ?_ ?_
        · refine hoareG_stByteN fun t _ ⟨hd, I, hi, hIN⟩ w hw => ?_
          rw [ev_add2 (ev_lw hd) (ev_lw hi)] at hw
          cases hw
          have hDN : D.toNat + N.toNat ≤ scratchEnd := by rcases hb with h | h <;> omega
          have hw' := toNat_add2 (D := D) (I := I) (by omega)
          exact hR _ (overlap_byte (by rw [hw']; omega) (by rw [hw']; omega))
        · refine hoareG_assignN fun t _ ⟨hd, I, hi, hIN⟩ w _ => ?_
          exact ⟨(by rw [lookup_update_ne _ _ (by decide)]; exact hd), I,
            (by rw [lookup_update_ne _ _ (by decide)]; exact hi), Nat.le_of_lt hIN⟩
    · intro t _ ⟨⟨⟨hd, I, hi, hIN⟩, hbw⟩, hc⟩
      obtain ⟨w, hw, hw0⟩ := hc
      obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
      rw [ev_cw] at hx
      cases hx
      rw [ev_lw hi] at hy
      cases hy
      have := lower_true hxy
      simp only [BitVec.toNat_ofNat, Nat.zero_mod] at this
      exact ⟨⟨hd, I, hi, hIN, this⟩, hbw⟩
  · intro t _ ht
    subst t
    refine ⟨⟨by rw [lk_set_ne _ _ (by decide), hloc]; exact hla, N, lk_set_self _ _ _, ?_⟩,
      rfl, fun _ _ => rfl⟩
    simp

/-! ## `rlp_write_header` -/

/-- The header buffer `[dst, dst + hdrLen n)` ends below `scratchEnd`. -/
def HdrPre (vs : List (ValueHOL 64)) : Prop :=
  ∃ D : BitVec 64, argW vs 0 = some D ∧ ∀ N : BitVec 64, argW vs 2 = some N →
    D.toNat + hdrLen N.toNat ≤ scratchEnd

def HdrR (vs : List (ValueHOL 64)) (a : BitVec 64) : Prop :=
  ∃ D N : BitVec 64, argW vs 0 = some D ∧ argW vs 2 = some N ∧ Overlap D.toNat (hdrLen N.toNat) a

def HdrRet (vs : List (ValueHOL 64)) (v : ValueHOL 64) : Prop :=
  ∀ N : BitVec 64, argW vs 2 = some N → v = .val (.word (BitVec.ofNat 64 (hdrLen N.toNat)))

theorem evs_one {s : State σ} {e : ExpHOL 64} {v : ValueHOL 64} {vs : List (ValueHOL 64)}
    (he : ev s e = some v) (h : evs s [e] = some vs) : vs = [v] := by
  rw [evs_cons he evs_nil] at h
  exact (Option.some.inj h).symm

theorem footRet_rlp_write_header (hC : X.code.lookup = guestCode) (hA : AlignedDom X) :
    FootRet σ X (nm "rlp_write_header") HdrPre HdrR HdrRet := by
  refine footRet_of_hoareG fun vs body callee rs hl s0 _ hloc hP => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, Bb, Cc, rfl, hA', -, hC', hla, -, hlc⟩ :=
    lookupCode_three code_rlp_write_header (by decide) (by decide) (by decide) hl
  obtain ⟨D, rfl⟩ := val_of_shapeEq_one hA'
  obtain ⟨N, rfl⟩ := val_of_shapeEq_one hC'
  obtain ⟨D', hD, hb⟩ := hP
  cases hD
  have hb := hb N rfl
  have hse : scratchEnd < 2 ^ 63 := by decide
  have h8 := beLen_le8 N.isLt
  let Rf := HdrR [.val (.word D), Bb, .val (.word N)]
  have hR : ∀ a, Overlap D.toNat (hdrLen N.toNat) a → Rf a := fun a h => ⟨D, N, rfl, rfl, h⟩
  let Ret : ValueHOL 64 → Prop := fun v => v = .val (.word (BitVec.ofNat 64 (hdrLen N.toNat)))
  let L0 : Locals → Prop := fun m => m.lookup dN = some (.val (.word D)) ∧
    m.lookup nN = some (.val (.word N))
  have hH := hdrLen_le N.isLt
  refine hoareG_conseq (P := LPre Rf s0 L0) (Q := LQ Rf s0 (fun _ => True) Ret) ?_
    (fun t _ ht => by subst t; exact lpre_init ⟨by rw [hloc]; exact hla, by rw [hloc]; exact hlc⟩)
    fun _ _ _ _ h => ⟨h.1, fun w hw N' hN' => by cases hN'; exact h.2.2 w hw⟩
  refine hoareG_seqL (L2 := fun m => L0 m ∧ 55 < N.toNat) ?_ ?_
  · refine hoareG_ite ?_ ?_
    · refine hoareG_pre (P := LPre Rf s0 (fun m => L0 m ∧ N.toNat ≤ 55)) ?_ ?_
      · refine hoareG_seqL (L2 := fun m => L0 m ∧ N.toNat ≤ 55) ?_ ?_
        · exact hoareG_stP (k := .b) (c := 0) hA (fun _ h => h.1.1) hH.1 (by omega) hR
            (fun h => nomatch h)
        · refine hoareG_returnQ fun t _ hL w hw => ?_
          rw [ev_cw] at hw
          cases hw
          show _ = _
          simp [hdrLen, hL.2]
      · intro t _ ⟨⟨hL, hbw⟩, w, hw, hw0⟩
        obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
        rw [ev_cw] at hx
        cases hx
        rw [ev_lw hL.2] at hy
        cases hy
        simp only [wordCmpHOL, Bool.not_eq_true', decide_eq_false_iff_not, BitVec.lt_def,
          BitVec.toNat_ofNat] at hxy
        exact ⟨⟨hL, by omega⟩, hbw⟩
    · refine hoareG_skip fun t _ ⟨⟨hL, hbw⟩, hc⟩ => ⟨hbw, fun _ => ⟨hL, ?_⟩, fun _ h => nomatch h⟩
      obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc
      rw [ev_cw] at hx
      cases hx
      rw [ev_lw hL.2] at hy
      cases hy
      simp only [wordCmpHOL, Bool.not_eq_false', decide_eq_true_eq, BitVec.lt_def,
        BitVec.toNat_ofNat] at hxy
      omega
  · refine hoareG_decCallFoot (L' := fun _ _ => False) (footRet_rlp_be_len hC)
      (fun _ _ _ _ _ => ⟨trivial, fun _ h => h.elim⟩) ?_ (fun _ _ _ h => h.elim)
    intro s vs v _ hL hvs hret _
    rw [evs_one (ev_lw hL.1.2) hvs] at hret
    have hv := hret N rfl
    subst hv
    have hLL : (BitVec.ofNat 64 (beLen N.toNat)).toNat = beLen N.toNat := by
      rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
    have hhl : hdrLen N.toNat = 1 + beLen N.toNat := by
      have := hL.2
      simp only [hdrLen]
      split <;> omega
    let Lk : Locals → Prop := fun m => m.lookup dN = some (.val (.word D)) ∧
      m.lookup nN = some (.val (.word N)) ∧
      m.lookup lN = some (.val (.word (BitVec.ofNat 64 (beLen N.toNat))))
    have hLk : ∀ m, m = s.locals.update (lN, .val (.word (BitVec.ofNat 64 (beLen N.toNat)))) →
        Lk m := by
      intro m h
      subst h
      refine ⟨?_, ?_, lookup_update_self _ _ _⟩
      · rw [lookup_update_ne _ _ (by decide)]; exact hL.1.1
      · rw [lookup_update_ne _ _ (by decide)]; exact hL.1.2
    refine hoareG_preL (L' := Lk) ?_ hLk
    refine hoareG_seqL (L2 := Lk) (hoareG_stP (k := .b) (c := 0) hA (fun _ h => h.1) hH.1
      (by omega) hR (fun h => nomatch h)) ?_
    refine hoareG_seqL (L2 := Lk) ?_ ?_
    · refine hoareG_callFoot (foot_rlp_put_be hC) fun t _ hpre vs' hvs' => ?_
      obtain ⟨hd, hn, hl⟩ := hpre.1
      rw [evs_cons (ev_add2 (ev_lw hd) (ev_cw _ 1))
        (evs_cons (ev_lw hn) (evs_cons (ev_lw hl) evs_nil))] at hvs'
      cases hvs'
      have hd1 : (D + BitVec.ofNat 64 1).toNat = D.toNat + 1 := toNat_addc (by omega)
      refine ⟨⟨_, _, rfl, rfl, by rw [hd1, hLL]; omega⟩, fun a ⟨D2, N2, hD2, hN2, hov⟩ => ?_⟩
      cases hD2
      cases hN2
      rw [hd1, hLL] at hov
      exact hR a (overlap_mono hov (by omega) (by omega))
    · refine hoareG_returnQ fun t _ hL w hw => ?_
      rw [ev_add2 (ev_cw _ 1) (ev_lw hL.2.2)] at hw
      cases hw
      show _ = _
      rw [hhl, BitVec.ofNat_add_ofNat]

/-! ## `rlp_encode_bytes` -/

/-- The encoding buffer `[dst, dst + hdrLen n + n)` ends below `scratchEnd`. -/
def EncPre (vs : List (ValueHOL 64)) : Prop :=
  ∃ D N : BitVec 64, argW vs 0 = some D ∧ argW vs 2 = some N ∧
    D.toNat + hdrLen N.toNat + N.toNat ≤ scratchEnd

def EncR (vs : List (ValueHOL 64)) (a : BitVec 64) : Prop :=
  ∃ D N : BitVec 64, argW vs 0 = some D ∧ argW vs 2 = some N ∧
    Overlap D.toNat (hdrLen N.toNat + N.toNat) a

/-- The returned length: at least `1`, at most `hdrLen n + n`, exactly that unless `n = 1`. -/
def EncRet (vs : List (ValueHOL 64)) (v : ValueHOL 64) : Prop :=
  ∀ N : BitVec 64, argW vs 2 = some N → ∃ k, v = .val (.word (BitVec.ofNat 64 k)) ∧ 1 ≤ k ∧
    k ≤ hdrLen N.toNat + N.toNat ∧ (N.toNat ≠ 1 → k = hdrLen N.toNat + N.toNat)

theorem footRet_rlp_encode_bytes (hC : X.code.lookup = guestCode) (hA : AlignedDom X) :
    FootRet σ X (nm "rlp_encode_bytes") EncPre EncR EncRet := by
  refine footRet_of_hoareG fun vs body callee rs hl s0 _ hloc hP => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, Sv, Cc, rfl, hA', -, hC', hla, hlb, hlc⟩ :=
    lookupCode_three code_rlp_encode_bytes (by decide) (by decide) (by decide) hl
  obtain ⟨D, rfl⟩ := val_of_shapeEq_one hA'
  obtain ⟨N, rfl⟩ := val_of_shapeEq_one hC'
  obtain ⟨D', N', hD, hN, hb⟩ := hP
  cases hD
  cases hN
  have hse : scratchEnd < 2 ^ 63 := by decide
  have hH := hdrLen_le N.isLt
  let Rf := EncR [.val (.word D), Sv, .val (.word N)]
  have hR : ∀ a, Overlap D.toNat (hdrLen N.toNat + N.toNat) a → Rf a :=
    fun a h => ⟨D, N, rfl, rfl, h⟩
  let Ret : ValueHOL 64 → Prop := fun v => ∃ k, v = .val (.word (BitVec.ofNat 64 k)) ∧ 1 ≤ k ∧
    k ≤ hdrLen N.toNat + N.toNat ∧ (N.toNat ≠ 1 → k = hdrLen N.toNat + N.toNat)
  let L0 : Locals → Prop := fun m => m.lookup dN = some (.val (.word D)) ∧
    m.lookup sN = some Sv ∧ m.lookup nN = some (.val (.word N))
  refine hoareG_conseq (P := LPre Rf s0 L0) (Q := LQ Rf s0 (fun _ => True) Ret) ?_
    (fun t _ ht => by
      subst t
      exact lpre_init ⟨by rw [hloc]; exact hla, by rw [hloc]; exact hlb, by rw [hloc]; exact hlc⟩)
    fun _ _ _ _ h => ⟨h.1, fun w hw N' hN' => by cases hN'; exact h.2.2 w hw⟩
  refine hoareG_seqL (L2 := L0) ?_ ?_
  · refine hoareG_ite ?_ (hoareG_skip fun t _ h => ⟨h.1.2, fun _ => h.1.1, fun _ h => nomatch h⟩)
    refine hoareG_pre (P := LPre Rf s0 (fun m => L0 m ∧ N.toNat = 1)) ?_ ?_
    · refine hoareG_decL (L' := fun _ m' => L0 m') ?_ ?_
      · intro s _ hL v _ _
        refine hoareG_preL (L' := fun m => L0 m ∧ N.toNat = 1) ?_ fun m h => ?_
        · refine hoareG_ite ?_ (hoareG_skip fun t _ h => ⟨h.1.2, fun _ => h.1.1.1,
            fun _ h => nomatch h⟩)
          refine hoareG_pre (P := LPre Rf s0 (fun m => L0 m ∧ N.toNat = 1)) ?_
            fun _ _ h => h.1
          refine hoareG_seqL (L2 := fun m => L0 m ∧ N.toNat = 1)
            (hoareG_stP (k := .b) (c := 0) hA (fun _ h => h.1.1) (by omega) (by omega) hR
              (fun h => nomatch h)) ?_
          refine hoareG_returnQ fun t _ hL w hw => ?_
          rw [ev_cw] at hw
          cases hw
          exact ⟨1, rfl, le_refl _, by omega, fun h => absurd hL.2 h⟩
        · subst h
          obtain ⟨⟨h1, h2, h3⟩, h4⟩ := hL
          refine ⟨⟨?_, ?_, ?_⟩, h4⟩
          · rw [lookup_update_ne _ _ (by decide)]; exact h1
          · rw [lookup_update_ne _ _ (by decide)]; exact h2
          · rw [lookup_update_ne _ _ (by decide)]; exact h3
      · intro m m' _ ⟨h1, h2, h3⟩
        refine ⟨?_, ?_, ?_⟩
        · rw [lookup_resVarEq_ne _ _ (by decide)]; exact h1
        · rw [lookup_resVarEq_ne _ _ (by decide)]; exact h2
        · rw [lookup_resVarEq_ne _ _ (by decide)]; exact h3
    · intro t _ ⟨⟨hL, hbw⟩, w, hw, hw0⟩
      obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
      rw [ev_lw hL.2.2] at hx
      cases hx
      rw [ev_cw] at hy
      cases hy
      simp only [wordCmpHOL, beq_iff_eq] at hxy
      subst hxy
      exact ⟨⟨hL, by simp⟩, hbw⟩
  · refine hoareG_decCallFoot (L' := fun _ _ => False) (footRet_rlp_write_header hC hA) ?_ ?_
      (fun _ _ _ h => h.elim)
    · intro t _ hpre vs' hvs'
      obtain ⟨hd, -, hn⟩ := hpre.1
      rw [evs_cons (ev_lw hd) (evs_cons (ev_cw _ 128) (evs_cons (ev_lw hn) evs_nil))] at hvs'
      cases hvs'
      refine ⟨⟨D, rfl, fun N' hN' => by cases hN'; omega⟩, fun a ⟨D2, N2, hD2, hN2, hov⟩ => ?_⟩
      cases hD2
      cases hN2
      exact hR a (overlap_mono hov (by omega) (by omega))
    · intro s vs' v _ hL hvs' hret _
      obtain ⟨hd, hs', hn⟩ := hL
      rw [evs_cons (ev_lw hd) (evs_cons (ev_cw _ 128) (evs_cons (ev_lw hn) evs_nil))] at hvs'
      cases hvs'
      have hv := hret N rfl
      subst hv
      have hHH : (BitVec.ofNat 64 (hdrLen N.toNat)).toNat = hdrLen N.toNat := by
        rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
      let Lk : Locals → Prop := fun m => m.lookup dN = some (.val (.word D)) ∧
        m.lookup sN = some Sv ∧ m.lookup nN = some (.val (.word N)) ∧
        m.lookup hN = some (.val (.word (BitVec.ofNat 64 (hdrLen N.toNat))))
      have hLk : ∀ m, m = s.locals.update (hN, .val (.word (BitVec.ofNat 64 (hdrLen N.toNat)))) →
          Lk m := by
        intro m h
        subst h
        refine ⟨?_, ?_, ?_, lookup_update_self _ _ _⟩
        · rw [lookup_update_ne _ _ (by decide)]; exact hd
        · rw [lookup_update_ne _ _ (by decide)]; exact hs'
        · rw [lookup_update_ne _ _ (by decide)]; exact hn
      refine hoareG_preL (L' := Lk) ?_ hLk
      refine hoareG_seqL (L2 := Lk) ?_ ?_
      · refine hoareG_callFoot (foot_memcpy hC hA) fun t _ hpre vs2 hvs2 => ?_
        obtain ⟨hd, hs2, hn, hh⟩ := hpre.1
        rw [evs_cons (ev_add2 (ev_lw hd) (ev_lw hh))
          (evs_cons (ev_lv _ _ ▸ hs2) (evs_cons (ev_lw hn) evs_nil))] at hvs2
        cases hvs2
        have hdh : (D + BitVec.ofNat 64 (hdrLen N.toNat)).toNat = D.toNat + hdrLen N.toNat := by
          rw [toNat_add2 (D := D) (I := BitVec.ofNat 64 (hdrLen N.toNat)) (by rw [hHH]; omega), hHH]
        refine ⟨⟨_, _, rfl, rfl, by rw [hdh]; omega⟩, fun a ⟨D2, N2, hD2, hN2, hov⟩ => ?_⟩
        cases hD2
        cases hN2
        rw [hdh] at hov
        exact hR a (overlap_mono hov (by omega) (by omega))
      · refine hoareG_returnQ fun t _ hL w hw => ?_
        rw [ev_add2 (ev_lw hL.2.2.2) (ev_lw hL.2.2.1)] at hw
        cases hw
        refine ⟨hdrLen N.toNat + N.toNat, ?_, by omega, le_refl _, fun _ => rfl⟩
        congr 2
        exact ofNat_add_bv (by omega)

/-! ## `rlp_encode_word` -/

def WPre (vs : List (ValueHOL 64)) : Prop :=
  ∃ D : BitVec 64, argW vs 0 = some D ∧ ∀ W : BitVec 64, argW vs 1 = some W →
    D.toNat + wordLen W.toNat ≤ scratchEnd

def WR (vs : List (ValueHOL 64)) (a : BitVec 64) : Prop :=
  ∃ D W : BitVec 64, argW vs 0 = some D ∧ argW vs 1 = some W ∧ Overlap D.toNat (wordLen W.toNat) a

def WRet (vs : List (ValueHOL 64)) (v : ValueHOL 64) : Prop :=
  ∀ W : BitVec 64, argW vs 1 = some W → v = .val (.word (BitVec.ofNat 64 (wordLen W.toNat)))

theorem footRet_rlp_encode_word (hC : X.code.lookup = guestCode) (hA : AlignedDom X) :
    FootRet σ X (nm "rlp_encode_word") WPre WR WRet := by
  refine footRet_of_hoareG fun vs body callee rs hl s0 _ hloc hP => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, rfl, hA', hB', hla, hlb⟩ := lookupCode_two code_rlp_encode_word (by decide) hl
  obtain ⟨D, rfl⟩ := val_of_shapeEq_one hA'
  obtain ⟨W, rfl⟩ := val_of_shapeEq_one hB'
  obtain ⟨D', hD, hb⟩ := hP
  cases hD
  have hb := hb W rfl
  have hse : scratchEnd < 2 ^ 63 := by decide
  have h8 := beLen_le8 W.isLt
  have hWL := wordLen_le W.isLt
  let Rf := WR [.val (.word D), .val (.word W)]
  have hR : ∀ a, Overlap D.toNat (wordLen W.toNat) a → Rf a := fun a h => ⟨D, W, rfl, rfl, h⟩
  let Ret : ValueHOL 64 → Prop := fun v => v = .val (.word (BitVec.ofNat 64 (wordLen W.toNat)))
  let L0 : Locals → Prop := fun m => m.lookup dN = some (.val (.word D)) ∧
    m.lookup wN = some (.val (.word W))
  refine hoareG_conseq (P := LPre Rf s0 L0) (Q := LQ Rf s0 (fun _ => True) Ret) ?_
    (fun t _ ht => by subst t; exact lpre_init ⟨by rw [hloc]; exact hla, by rw [hloc]; exact hlb⟩)
    fun _ _ _ _ h => ⟨h.1, fun w hw W' hW' => by cases hW'; exact h.2.2 w hw⟩
  -- the one-byte cases `w = 0` and `w < 128`
  have hone : W.toNat < 128 → ∀ (e : ExpHOL 64) (L' : Locals → Prop), HoareG σ X (LPre Rf s0 L0)
      (.seq (.storeByte (lv dN) e) (.return (cw 1))) (LQ Rf s0 L' Ret) := by
    intro hw e L'
    refine hoareG_seqL (L2 := L0)
      (hoareG_stP (k := .b) (c := 0) hA (fun _ h => h.1) hWL.1 (by omega) hR
        (fun h => nomatch h)) ?_
    refine hoareG_returnQ fun t _ _ w hw' => ?_
    rw [ev_cw] at hw'
    cases hw'
    show _ = _
    simp [wordLen, hw]
  refine hoareG_seqL (L2 := L0) ?_ ?_
  · refine hoareG_ite ?_ (hoareG_skip fun t _ h => ⟨h.1.2, fun _ => h.1.1, fun _ h => nomatch h⟩)
    intro t ht ⟨hpre, w, hw, hw0⟩
    obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
    rw [ev_lw hpre.1.2] at hx
    cases hx
    rw [ev_cw] at hy
    cases hy
    simp only [wordCmpHOL, beq_iff_eq] at hxy
    exact hone (by rw [hxy]; decide) _ _ t ht hpre
  refine hoareG_seqL (L2 := fun m => L0 m ∧ 128 ≤ W.toNat) ?_ ?_
  · refine hoareG_ite ?_ ?_
    · intro t ht ⟨hpre, w, hw, hw0⟩
      obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
      rw [ev_lw hpre.1.2] at hx
      cases hx
      rw [ev_cw] at hy
      cases hy
      have := lower_true hxy
      simp only [BitVec.toNat_ofNat] at this
      exact hone (by omega) _ _ t ht hpre
    · refine hoareG_skip fun t _ ⟨⟨hL, hbw⟩, hc⟩ => ⟨hbw, fun _ => ⟨hL, ?_⟩, fun _ h => nomatch h⟩
      obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc
      rw [ev_lw hL.2] at hx
      cases hx
      rw [ev_cw] at hy
      cases hy
      have := lower_false hxy
      simpa using this
  · refine hoareG_decCallFoot (L' := fun _ _ => False) (footRet_rlp_be_len hC)
      (fun _ _ _ _ _ => ⟨trivial, fun _ h => h.elim⟩) ?_ (fun _ _ _ h => h.elim)
    intro s vs v _ hL hvs hret _
    rw [evs_one (ev_lw hL.1.2) hvs] at hret
    have hv := hret W rfl
    subst hv
    have hLL : (BitVec.ofNat 64 (beLen W.toNat)).toNat = beLen W.toNat := by
      rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
    have hwl : wordLen W.toNat = 1 + beLen W.toNat := by
      have := hL.2
      simp only [wordLen]
      split <;> omega
    let Lk : Locals → Prop := fun m => m.lookup dN = some (.val (.word D)) ∧
      m.lookup wN = some (.val (.word W)) ∧
      m.lookup lN = some (.val (.word (BitVec.ofNat 64 (beLen W.toNat))))
    have hLk : ∀ m, m = s.locals.update (lN, .val (.word (BitVec.ofNat 64 (beLen W.toNat)))) →
        Lk m := by
      intro m h
      subst h
      refine ⟨?_, ?_, lookup_update_self _ _ _⟩
      · rw [lookup_update_ne _ _ (by decide)]; exact hL.1.1
      · rw [lookup_update_ne _ _ (by decide)]; exact hL.1.2
    refine hoareG_preL (L' := Lk) ?_ hLk
    refine hoareG_seqL (L2 := Lk) (hoareG_stP (k := .b) (c := 0) hA (fun _ h => h.1) hWL.1
      (by omega) hR (fun h => nomatch h)) ?_
    refine hoareG_seqL (L2 := Lk) ?_ ?_
    · refine hoareG_callFoot (foot_rlp_put_be hC) fun t _ hpre vs' hvs' => ?_
      obtain ⟨hd, hw, hl⟩ := hpre.1
      rw [evs_cons (ev_add2 (ev_lw hd) (ev_cw _ 1))
        (evs_cons (ev_lw hw) (evs_cons (ev_lw hl) evs_nil))] at hvs'
      cases hvs'
      have hd1 : (D + BitVec.ofNat 64 1).toNat = D.toNat + 1 := toNat_addc (by omega)
      refine ⟨⟨_, _, rfl, rfl, by rw [hd1, hLL]; omega⟩, fun a ⟨D2, N2, hD2, hN2, hov⟩ => ?_⟩
      cases hD2
      cases hN2
      rw [hd1, hLL] at hov
      exact hR a (overlap_mono hov (by omega) (by omega))
    · refine hoareG_returnQ fun t _ hL w hw => ?_
      rw [ev_add2 (ev_cw _ 1) (ev_lw hL.2.2)] at hw
      cases hw
      show _ = _
      rw [hwl, BitVec.ofNat_add_ofNat]

/-! ## The summaries -/

def sigRlpPutBe : Sig := { params := [.bufArg 2 1 0, .any, .any], grows := false }
def sigRlpWriteHeader : Sig := { params := [.buf 9, .any, .any], grows := false }
def sigRlpEncodeBytes : Sig := { params := [.bufArg 2 1 9, .any, .any], grows := false }
def sigRlpEncodeWord : Sig := { params := [.buf 9, .any], grows := false }
def sigRlpBeLen : Sig := { params := [.any], grows := false }

theorem summ_rlp_be_len {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hT : TagSlots C)
    (hC : X.code.lookup = guestCode) : Summ σ X C H (nm "rlp_be_len") sigRlpBeLen :=
  summ_of_foot hH hT rfl (footRet_rlp_be_len hC).foot (fun _ _ _ _ _ _ => trivial)
    (fun _ _ _ h => h.elim)

theorem summ_rlp_put_be {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hT : TagSlots C)
    (hC : X.code.lookup = guestCode) : Summ σ X C H (nm "rlp_put_be") sigRlpPutBe :=
  summ_of_foot hH hT rfl (foot_rlp_put_be hC)
    (fun _ _ _ hord hL hA' => bufPre_of_args (i := 0) rfl hord hL hA')
    (fun _ _ _ h => argCells_of_bufR (i := 0) rfl h)

theorem summ_rlp_write_header {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hT : TagSlots C)
    (hC : X.code.lookup = guestCode) (hA : AlignedDom X) :
    Summ σ X C H (nm "rlp_write_header") sigRlpWriteHeader := by
  refine summ_of_foot hH hT rfl (footRet_rlp_write_header hC hA).foot ?_ ?_
  · intro _ _ vs hord hL hA'
    obtain ⟨D, hD, hb⟩ := bufPreK_of_args (i := 0) (n := 9) rfl (by decide) hord hL hA'
    refine ⟨D, hD, fun N _ => ?_⟩
    have := (hdrLen_le N.isLt).2
    omega
  · intro vs a _ ⟨D, N, hD, hN, hov⟩
    refine argCells_of_bufRK (i := 0) (n := 9) rfl ⟨D, hD, ?_⟩
    have := (hdrLen_le N.isLt).2
    exact overlap_mono hov (Nat.le_refl _) (by omega)

theorem summ_rlp_encode_bytes {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hT : TagSlots C)
    (hC : X.code.lookup = guestCode) (hA : AlignedDom X) :
    Summ σ X C H (nm "rlp_encode_bytes") sigRlpEncodeBytes := by
  refine summ_of_foot hH hT rfl (footRet_rlp_encode_bytes hC hA).foot ?_ ?_
  · intro Γ p vs hord hL hA'
    have hlen : 0 < vs.length := by rw [← hA'.1]; decide
    obtain ⟨v, hv⟩ : ∃ v, vs[0]? = some v := ⟨_, List.getElem?_eq_getElem hlen⟩
    obtain ⟨w, x, hw, hx, hb⟩ := hA'.2 0 _ v rfl hv
    refine ⟨w, x, by rw [argW, hv]; exact hw, hx, ?_⟩
    rcases bufOK_bound hord hL w.isLt hb with h | h
    · omega
    · have := (hdrLen_le x.isLt).2
      omega
  · intro vs a _ ⟨D, N, hD, hN, hov⟩
    refine ⟨0, D, hD, Or.inr ⟨2, 1, 9, N, rfl, hN, ?_⟩⟩
    have := (hdrLen_le N.isLt).2
    exact overlap_mono hov (Nat.le_refl _) (by omega)

theorem summ_rlp_encode_word {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hT : TagSlots C)
    (hC : X.code.lookup = guestCode) (hA : AlignedDom X) :
    Summ σ X C H (nm "rlp_encode_word") sigRlpEncodeWord := by
  refine summ_of_foot hH hT rfl (footRet_rlp_encode_word hC hA).foot ?_ ?_
  · intro _ _ vs hord hL hA'
    obtain ⟨D, hD, hb⟩ := bufPreK_of_args (i := 0) (n := 9) rfl (by decide) hord hL hA'
    refine ⟨D, hD, fun W _ => ?_⟩
    have := (wordLen_le W.isLt).2
    omega
  · intro vs a _ ⟨D, W, hD, hW, hov⟩
    refine argCells_of_bufRK (i := 0) (n := 9) rfl ⟨D, hD, ?_⟩
    have := (wordLen_le W.isLt).2
    exact overlap_mono hov (Nat.le_refl _) (by omega)

end InitECandidate.Solver.MemSafe.Helpers
