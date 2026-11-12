import InitECandidate.Solver.MemSafe.Aw.Rule
import InitECandidate.Solver.MemSafe.Helpers.Rlp

set_option autoImplicit false

/-!
# The RLP writers, away from `scratchEnd`

`Helpers/Rlp.lean` states its footprints with `dst + n ≤ scratchEnd`, used only as no-wrap. The
above-writer rule follows pointers that may pass `scratchEnd` (the memory domain extends past it),
so these are the same proofs with the bound `bA = 2^62`.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Aw
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers

variable {σ : Type} {X : Ctx 64}

/-- The bound of this file. -/
def bA : Nat := 2 ^ 62

def BufPreA (i j : Nat) (vs : List (ValueHOL 64)) : Prop :=
  ∃ D N : BitVec 64, argW vs i = some D ∧ argW vs j = some N ∧
    (N.toNat = 0 ∨ D.toNat + N.toNat ≤ bA)

theorem nw_of_preA {D N : BitVec 64} (h : N.toNat = 0 ∨ D.toNat + N.toNat ≤ bA) :
    N.toNat = 0 ∨ D.toNat + N.toNat < 2 ^ 63 := by
  rcases h with h | h
  · exact Or.inl h
  · right
    have : bA < 2 ^ 63 := by decide
    omega

theorem foot_memcpyB (hC : X.code.lookup = guestCode) (hA : AlignedDom X) :
    FootSpec σ X (nm "memcpy") (BufPreA 0 2) (BufR 0 2) := by
  refine footSpec_of_hoareG fun vs body callee rs hl s0 _ hloc hP => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, Cc, rfl, hA', -, hC', hla, -, hlc⟩ :=
    lookupCode_three code_memcpy (by decide) (by decide) (by decide) hl
  obtain ⟨D, rfl⟩ := val_of_shapeEq_one hA'
  obtain ⟨N, rfl⟩ := val_of_shapeEq_one hC'
  obtain ⟨D', N', hD, hN, hb⟩ := hP
  cases hD
  cases hN
  exact hoareG_memSkel hA (fun k _ cs h => blkOK_cp k cs h)
    (fun a h => ⟨D, N, rfl, rfl, h⟩) (hloc ▸ hla) (hloc ▸ hlc) (nw_of_preA hb)

theorem foot_rlp_put_beB (hC : X.code.lookup = guestCode) :
    FootSpec σ X (nm "rlp_put_be") (BufPreA 0 2) (BufR 0 2) := by
  refine footSpec_of_hoareG fun vs body callee rs hl s0 _ hloc hP => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, Cc, rfl, hA', -, hC', hla, -, hlc⟩ :=
    lookupCode_three code_rlp_put_be (by decide) (by decide) (by decide) hl
  obtain ⟨D, rfl⟩ := val_of_shapeEq_one hA'
  obtain ⟨N, rfl⟩ := val_of_shapeEq_one hC'
  obtain ⟨D', N', hD, hN, hb⟩ := hP
  cases hD
  cases hN
  have hse : bA < 2 ^ 63 := by decide
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
          have hDN : D.toNat + N.toNat ≤ bA := by rcases hb with h | h <;> omega
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


/-- The header buffer `[dst, dst + hdrLen n)` ends below `bA`. -/
def HdrPreA (vs : List (ValueHOL 64)) : Prop :=
  ∃ D : BitVec 64, argW vs 0 = some D ∧ ∀ N : BitVec 64, argW vs 2 = some N →
    D.toNat + hdrLen N.toNat ≤ bA

theorem footRet_write_headerB (hC : X.code.lookup = guestCode) (hA : AlignedDom X) :
    FootRet σ X (nm "rlp_write_header") HdrPreA Helpers.HdrR Helpers.HdrRet := by
  refine footRet_of_hoareG fun vs body callee rs hl s0 _ hloc hP => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, Bb, Cc, rfl, hA', -, hC', hla, -, hlc⟩ :=
    lookupCode_three code_rlp_write_header (by decide) (by decide) (by decide) hl
  obtain ⟨D, rfl⟩ := val_of_shapeEq_one hA'
  obtain ⟨N, rfl⟩ := val_of_shapeEq_one hC'
  obtain ⟨D', hD, hb⟩ := hP
  cases hD
  have hb := hb N rfl
  have hse : bA < 2 ^ 63 := by decide
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
    · refine hoareG_callFoot (foot_rlp_put_beB hC) fun t _ hpre vs' hvs' => ?_
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


/-- The encoding buffer `[dst, dst + hdrLen n + n)` ends below `bA`. -/
def EncPreA (vs : List (ValueHOL 64)) : Prop :=
  ∃ D N : BitVec 64, argW vs 0 = some D ∧ argW vs 2 = some N ∧
    D.toNat + hdrLen N.toNat + N.toNat ≤ bA

theorem footRet_encode_bytesB (hC : X.code.lookup = guestCode) (hA : AlignedDom X) :
    FootRet σ X (nm "rlp_encode_bytes") EncPreA Helpers.EncR Helpers.EncRet := by
  refine footRet_of_hoareG fun vs body callee rs hl s0 _ hloc hP => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, Sv, Cc, rfl, hA', -, hC', hla, hlb, hlc⟩ :=
    lookupCode_three code_rlp_encode_bytes (by decide) (by decide) (by decide) hl
  obtain ⟨D, rfl⟩ := val_of_shapeEq_one hA'
  obtain ⟨N, rfl⟩ := val_of_shapeEq_one hC'
  obtain ⟨D', N', hD, hN, hb⟩ := hP
  cases hD
  cases hN
  have hse : bA < 2 ^ 63 := by decide
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
  · refine hoareG_decCallFoot (L' := fun _ _ => False) (footRet_write_headerB hC hA) ?_ ?_
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
      · refine hoareG_callFoot (foot_memcpyB hC hA) fun t _ hpre vs2 hvs2 => ?_
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


def WPreA (vs : List (ValueHOL 64)) : Prop :=
  ∃ D : BitVec 64, argW vs 0 = some D ∧ ∀ W : BitVec 64, argW vs 1 = some W →
    D.toNat + wordLen W.toNat ≤ bA

theorem footRet_encode_wordB (hC : X.code.lookup = guestCode) (hA : AlignedDom X) :
    FootRet σ X (nm "rlp_encode_word") WPreA Helpers.WR Helpers.WRet := by
  refine footRet_of_hoareG fun vs body callee rs hl s0 _ hloc hP => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, rfl, hA', hB', hla, hlb⟩ := lookupCode_two code_rlp_encode_word (by decide) hl
  obtain ⟨D, rfl⟩ := val_of_shapeEq_one hA'
  obtain ⟨W, rfl⟩ := val_of_shapeEq_one hB'
  obtain ⟨D', hD, hb⟩ := hP
  cases hD
  have hb := hb W rfl
  have hse : bA < 2 ^ 63 := by decide
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
    · refine hoareG_callFoot (foot_rlp_put_beB hC) fun t _ hpre vs' hvs' => ?_
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


end InitECandidate.Solver.MemSafe.Aw

#print axioms InitECandidate.Solver.MemSafe.Aw.footRet_encode_bytesB
#print axioms InitECandidate.Solver.MemSafe.Aw.footRet_encode_wordB
