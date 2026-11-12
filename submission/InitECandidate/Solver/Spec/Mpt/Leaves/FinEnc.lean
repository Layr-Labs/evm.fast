import InitECandidate.Solver.Spec.Mpt.Leaves.FinRef

/-!
# The RLP writers under `DomTop`, with exact lengths

`MemSafe.Helpers` proves the writers under a no-wrap precondition on the destination buffer
(`HdrPre`, `EncPre`). `_node_rlp_finish` cannot supply one before the end: its buffer length
`hl + payload` is computed mod `2^64`. Here the writers need no precondition; instead a good
result bounds the destination: under `DomTop X` (domain cells below `2^62`) the first byte store
at `dst` succeeds only for `dst < 2^62 + 8` (`hoareG_st8First`), and `footD_memcpy` bounds the
copy.

* `foot_rlp_put_be'`: `rlp_put_be` with the precondition `dst + n < 2^64`;
* `footD_rlp_write_header`: writes `[dst, dst + hdrLen n)`, returns `hdrLen n`, and
  `dst + hdrLen n < 2^63`;
* `footD_rlp_encode_bytes`: writes `[dst, dst + e)` and returns `e = encLenN fb n` (`fb` the byte at
  `src` in the entry state: the guest's `rlp_bytes_encoded_len(fb, n)`, also for `n = 1`), with
  `dst + e < 2^63`;
* `ret_rlp_encode_list_header`, `ret_rlp_list_header_len`: the list header writer and length.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.Spec.Mpt.Leaves
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.Spec.Mpt.Dec (State)
open InitECandidate.Solver.MemSafe.Helpers (BWPost AlignedDom Locals byteAlign_toNat LPre LQ LN
  FootRet FootSpec footRet_of_hoareG footSpec_of_hoareG hoareG_seqL hoareG_seqN hoareG_returnQ
  hoareG_decCallFoot hoareG_preL hoareG_assignN hoareG_whileN hoareG_stByteN lpre_init
  overlap_mono overlap_byte toNat_subc toNat_add2 toNat_addc dN nN sN iN vN lN hN bN baseN
  footRet_rlp_be_len PutJ PutJs HdrR abn_good abn_ne_returned)

variable {σ : Type} {X : Ctx 64}

open MemSafe (rd ptrsOf Ptrs heapEnd heapBase scratchEnd Overlap ModifiesOnly gword gHeap argW)

/-! ## Generic steps -/

/-- A byte store at the local `p` (= `P`) under `DomTop`: it changes only `P`'s cell, and its
success puts `P` below `2^62 + 8`. -/
theorem hoareG_st8First (hT : DomTop X) {p : MlS} {P : BitVec 64} {e : ExpHOL 64}
    {Rf : BitVec 64 → Prop} {s0 : State σ} {L : Locals → Prop} {Ret : ValueHOL 64 → Prop}
    (hLp : ∀ m, L m → m.lookup p = some (.val (.word P)))
    (hR : P.toNat < 2 ^ 62 + 8 → ∀ a, Overlap P.toNat 1 a → Rf a) :
    HoareG σ X (LPre Rf s0 L) (.storeByte (lv p) e)
      (LQ Rf s0 (fun m => L m ∧ P.toNat < 2 ^ 62 + 8) Ret) := by
  refine MemSafe.hoareG_storeByte fun t hs hpre w x mem ha _ hst => ?_
  have hm := MemSafe.Helpers.storeByte_mod hst
  have hdom := (Spec.Inv.storeByte_eq hst).1
  have hlt := hT _ (hs.2.1 ▸ hdom)
  rw [byteAlign_toNat] at hlt
  rw [ev_lw (hLp _ hpre.1)] at ha
  cases ha
  have hP : P.toNat < 2 ^ 62 + 8 := by omega
  exact ⟨⟨hpre.2.1, hpre.2.2.trans (hm.mono fun a ha' => ha' ▸ hR hP _
    (overlap_byte (le_refl _) (by omega)))⟩, fun _ => ⟨hpre.1, hP⟩, fun _ h => nomatch h⟩

/-- `f(args);` for a footprint callee whose return fact feeds the locals invariant. -/
theorem hoareG_callFootL {f : MlS} {args : List (ExpHOL 64)} {Pre : List (ValueHOL 64) → Prop}
    {R : List (ValueHOL 64) → BitVec 64 → Prop} {RetF : List (ValueHOL 64) → ValueHOL 64 → Prop}
    (hf : FootRet σ X f Pre R RetF) {Rf : BitVec 64 → Prop} {s0 : State σ}
    {L L' : Locals → Prop} {Ret : ValueHOL 64 → Prop}
    (h : ∀ s : State σ, InCtx s X → LPre Rf s0 L s → ∀ vs, evs s args = some vs →
      Pre vs ∧ (∀ a, R vs a → Rf a) ∧ ∀ v, RetF vs v → L' s.locals) :
    HoareG σ X (LPre Rf s0 L) (.call (some (none, none)) f args) (LQ Rf s0 L' Ret) := by
  refine MemSafe.hoareG_callD hf ?_ ?_
  · intro s hs hpre vs hvs callee v st hR _
    obtain ⟨hP, hsub, hL'⟩ := h s hs hpre vs hvs
    obtain ⟨hgl, hmod, hret⟩ := hR (by simp [Good]) hP
    exact ⟨⟨hgl.trans hpre.2.1, hpre.2.2.trans (hmod.mono hsub)⟩, fun _ => hL' v (hret v rfl),
      fun _ h => nomatch h⟩
  · intro s hs hpre vs hvs callee r st hR _ habn
    obtain ⟨hP, hsub, -⟩ := h s hs hpre vs hvs
    obtain ⟨hgl, hmod, -⟩ := hR (abn_good habn) hP
    exact ⟨⟨hgl.trans hpre.2.1, hpre.2.2.trans (hmod.mono hsub)⟩, (fun h => nomatch h),
      fun v hv => absurd (Option.some.inj hv) (abn_ne_returned habn v)⟩

/-- `memcpy` under `DomTop` as a footprint spec with its no-wrap return fact. -/
theorem footRetD_memcpy (hC : X.code.lookup = guestCode) (hA : AlignedDom X) (hT : DomTop X) :
    FootRet σ X (nm "memcpy")
      (fun vs => ∃ D S N : BitVec 64, vs = [.val (.word D), .val (.word S), .val (.word N)])
      (fun vs a => ∃ D S N : BitVec 64, vs = [.val (.word D), .val (.word S), .val (.word N)] ∧
        Overlap D.toNat N.toNat a)
      (fun vs _ => ∀ D S N : BitVec 64, vs = [.val (.word D), .val (.word S), .val (.word N)] →
        N.toNat = 0 ∨ D.toNat + N.toNat < 2 ^ 63) := by
  intro vs body callee rs hl s hs hloc r hr hg ⟨D, S, N, hvs⟩
  obtain ⟨-, hgl, hm, hnw⟩ := footD_memcpy hC hA hT vs body callee rs hl s hs hloc r hr hg D S N hvs
  refine ⟨hgl, hm.mono fun a ha => ⟨D, S, N, hvs, ha⟩, fun _ _ D' S' N' hvs' => ?_⟩
  rw [hvs] at hvs'
  simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs'
  obtain ⟨rfl, rfl, rfl⟩ := hvs'
  exact hnw

/-! ## `rlp_put_be` with a no-wrap precondition -/

def PutPre (vs : List (ValueHOL 64)) : Prop :=
  ∃ D N : BitVec 64, argW vs 0 = some D ∧ argW vs 2 = some N ∧ D.toNat + N.toNat < 2 ^ 64

theorem foot_rlp_put_be' (hC : X.code.lookup = guestCode) :
    FootSpec σ X (nm "rlp_put_be") PutPre (MemSafe.Helpers.BufR 0 2) := by
  refine footSpec_of_hoareG fun vs body callee rs hl s0 _ hloc hP => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, Cc, rfl, hA', -, hC', hla, -, hlc⟩ :=
    lookupCode_three MemSafe.Helpers.code_rlp_put_be (by decide) (by decide) (by decide) hl
  obtain ⟨D, rfl⟩ := val_of_shapeEq_one hA'
  obtain ⟨N, rfl⟩ := val_of_shapeEq_one hC'
  obtain ⟨D', N', hD, hN, hb⟩ := hP
  cases hD
  cases hN
  let Rf := MemSafe.Helpers.BufR 0 2 [.val (.word D), B, .val (.word N)]
  have hR : ∀ a, Overlap D.toNat N.toNat a → Rf a := fun a h => ⟨D, N, rfl, rfl, h⟩
  refine hoareG_dec fun s _ hs v hv _ => ?_
  subst s
  rw [ev_lw (hloc ▸ hlc)] at hv
  cases hv
  refine hoareG_conseq (P := LPre Rf s0 (PutJ D N)) (Q := MemSafe.Helpers.LP Rf s0 (fun _ => True))
    ?_ ?_ fun _ _ _ _ h => h.1
  · refine hoareG_seqL (L2 := fun _ => True) ?_ MemSafe.Helpers.hoareG_returnL
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
    refine ⟨⟨by rw [lk_set_ne _ _ (by decide), hloc]; exact hla, N, lk_set_self _ _ _, le_refl _⟩,
      rfl, fun _ _ => rfl⟩

/-! ## `rlp_write_header` -/

/-- The return of `rlp_write_header(dst, base, n)`: `hdrLen n`, and `dst + hdrLen n < 2^63`. -/
def HdrRetD (vs : List (ValueHOL 64)) (v : ValueHOL 64) : Prop :=
  ∀ D N : BitVec 64, argW vs 0 = some D → argW vs 2 = some N →
    v = .val (.word (BitVec.ofNat 64 (MemSafe.Helpers.hdrLen N.toNat))) ∧
      D.toNat + MemSafe.Helpers.hdrLen N.toNat < 2 ^ 63

theorem footD_rlp_write_header (hC : X.code.lookup = guestCode) (hT : DomTop X) :
    FootRet σ X (nm "rlp_write_header") (fun _ => True) HdrR HdrRetD := by
  refine footRet_of_hoareG fun vs body callee rs hl s0 _ hloc _ => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, Bb, Cc, rfl, hA', -, hC', hla, -, hlc⟩ :=
    lookupCode_three MemSafe.Helpers.code_rlp_write_header (by decide) (by decide) (by decide) hl
  obtain ⟨D, rfl⟩ := val_of_shapeEq_one hA'
  obtain ⟨N, rfl⟩ := val_of_shapeEq_one hC'
  have h8 := MemSafe.Helpers.beLen_le8 N.isLt
  let Rf := HdrR [.val (.word D), Bb, .val (.word N)]
  have hR : ∀ a, Overlap D.toNat (MemSafe.Helpers.hdrLen N.toNat) a → Rf a :=
    fun a h => ⟨D, N, rfl, rfl, h⟩
  have hH := MemSafe.Helpers.hdrLen_le N.isLt
  let Ret : ValueHOL 64 → Prop := fun v =>
    v = .val (.word (BitVec.ofNat 64 (MemSafe.Helpers.hdrLen N.toNat))) ∧
      D.toNat + MemSafe.Helpers.hdrLen N.toNat < 2 ^ 63
  let L0 : Locals → Prop := fun m => m.lookup dN = some (.val (.word D)) ∧
    m.lookup nN = some (.val (.word N))
  refine hoareG_conseq (P := LPre Rf s0 L0) (Q := LQ Rf s0 (fun _ => True) Ret) ?_
    (fun t _ ht => by subst t; exact lpre_init ⟨by rw [hloc]; exact hla, by rw [hloc]; exact hlc⟩)
    fun _ _ _ _ h => ⟨h.1, fun w hw D' N' hD' hN' => by cases hD'; cases hN'; exact h.2.2 w hw⟩
  refine hoareG_seqL (L2 := fun m => L0 m ∧ 55 < N.toNat) ?_ ?_
  · refine hoareG_ite ?_ ?_
    · refine hoareG_pre (P := LPre Rf s0 (fun m => L0 m ∧ N.toNat ≤ 55)) ?_ ?_
      · refine hoareG_seqL (L2 := fun m => (L0 m ∧ N.toNat ≤ 55) ∧ D.toNat < 2 ^ 62 + 8) ?_ ?_
        · exact hoareG_st8First hT (fun _ h => h.1.1)
            (fun _ a h => hR a (overlap_mono h (le_refl _) (by omega)))
        · refine hoareG_returnQ fun t _ hL w hw => ?_
          rw [ev_cw] at hw
          cases hw
          refine ⟨?_, by omega⟩
          simp [MemSafe.Helpers.hdrLen, hL.1.2]
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
    rw [MemSafe.Helpers.evs_one (ev_lw hL.1.2) hvs] at hret
    have hv := hret N rfl
    subst hv
    have hLL : (BitVec.ofNat 64 (MemSafe.Helpers.beLen N.toNat)).toNat =
        MemSafe.Helpers.beLen N.toNat := by
      rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
    have hhl : MemSafe.Helpers.hdrLen N.toNat = 1 + MemSafe.Helpers.beLen N.toNat := by
      have := hL.2
      simp only [MemSafe.Helpers.hdrLen]
      split <;> omega
    let Lk : Locals → Prop := fun m => m.lookup dN = some (.val (.word D)) ∧
      m.lookup nN = some (.val (.word N)) ∧
      m.lookup lN = some (.val (.word (BitVec.ofNat 64 (MemSafe.Helpers.beLen N.toNat))))
    have hLk : ∀ m, m = s.locals.update (lN, .val (.word (BitVec.ofNat 64
        (MemSafe.Helpers.beLen N.toNat)))) → Lk m := by
      intro m h
      subst h
      refine ⟨?_, ?_, lookup_update_self _ _ _⟩
      · rw [lookup_update_ne _ _ (by decide)]; exact hL.1.1
      · rw [lookup_update_ne _ _ (by decide)]; exact hL.1.2
    refine hoareG_preL (L' := Lk) ?_ hLk
    refine hoareG_seqL (L2 := fun m => Lk m ∧ D.toNat < 2 ^ 62 + 8)
      (hoareG_st8First hT (fun _ h => h.1)
        (fun _ a h => hR a (overlap_mono h (le_refl _) (by omega)))) ?_
    refine hoareG_seqL (L2 := fun m => Lk m ∧ D.toNat < 2 ^ 62 + 8) ?_ ?_
    · refine MemSafe.Helpers.hoareG_callFoot (foot_rlp_put_be' hC) fun t _ hpre vs' hvs' => ?_
      obtain ⟨⟨hd, hn, hl⟩, hD⟩ := hpre.1
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
      rw [ev_add2 (ev_cw _ 1) (ev_lw hL.1.2.2)] at hw
      cases hw
      refine ⟨?_, by omega⟩
      show _ = _
      rw [hhl, BitVec.ofNat_add_ofNat]

/-! ## `rlp_encode_bytes` -/

/-- The length `rlp_encode_bytes(dst, src, n)` writes and returns, `fb` the byte at `src`. -/
def encLenN (fb N : BitVec 64) : Nat :=
  if N = 1 ∧ fb.toNat < 128 then 1 else MemSafe.Helpers.hdrLen N.toNat + N.toNat

theorem hdrLen_eq (N : BitVec 64) : hdrLen N = BitVec.ofNat 64 (MemSafe.Helpers.hdrLen N.toNat) := by
  unfold hdrLen MemSafe.Helpers.hdrLen
  split
  · rfl
  · rw [beLen_eq]
    show BitVec.ofNat 64 1 + _ = _
    rw [BitVec.ofNat_add_ofNat]

theorem encLen_eq (fb N : BitVec 64) : encLen fb N = BitVec.ofNat 64 (encLenN fb N) := by
  unfold encLen encLenN
  split
  · rfl
  · rw [hdrLen_eq, MemSafe.Helpers.ofNat_add_bv]
    have := MemSafe.Helpers.hdrLen_le N.isLt
    omega

theorem encLen_toNat {fb N : BitVec 64} (h : encLenN fb N < 2 ^ 64) :
    (encLen fb N).toNat = encLenN fb N := by
  rw [encLen_eq, BitVec.toNat_ofNat, Nat.mod_eq_of_lt h]

/-- **`rlp_encode_bytes(dst, src, n)` under `DomTop`**, for any `n`: writes `[dst, dst + e)`,
returns `e = encLenN fb n` (`fb` the byte at `src` in the entry state), `dst + e < 2^63`. -/
theorem footD_rlp_encode_bytes (hC : X.code.lookup = guestCode) (hA : AlignedDom X)
    (hT : DomTop X) :
    FunSpec σ X (nm "rlp_encode_bytes") (fun vs s r t => Good (some r) → ∀ D S N : BitVec 64,
      vs = [.val (.word D), .val (.word S), .val (.word N)] →
      t.globals = s.globals ∧ ModifiesOnly (Overlap D.toNat (encLenN (ld8W s S) N)) s.memory t.memory ∧
      ∀ v, r = .returned v → v = .val (.word (BitVec.ofNat 64 (encLenN (ld8W s S) N))) ∧
        D.toNat + encLenN (ld8W s S) N < 2 ^ 63) := by
  intro vs body callee rs hl s0 hs hloc r hr hg D S N hvs
  rw [hC] at hl
  obtain ⟨rfl, -, A, Sv, Cc, rfl, -, -, -, hla, hlb, hlc⟩ :=
    lookupCode_three MemSafe.Helpers.code_rlp_encode_bytes (by decide) (by decide) (by decide) hl
  simp only [List.cons.injEq, and_true] at hvs
  obtain ⟨rfl, rfl, rfl⟩ := hvs
  set FB := ld8W s0 S with hFB
  set E := encLenN FB N with hE
  have hH := MemSafe.Helpers.hdrLen_le N.isLt
  have hE1 : 1 ≤ E := by rw [hE, encLenN]; split <;> omega
  let Rf : BitVec 64 → Prop := Overlap D.toNat E
  let Ret : ValueHOL 64 → Prop := fun v => v = .val (.word (BitVec.ofNat 64 E)) ∧ D.toNat + E < 2 ^ 63
  let L0 : Locals → Prop := fun m => m.lookup dN = some (.val (.word D)) ∧
    m.lookup sN = some (.val (.word S)) ∧ m.lookup nN = some (.val (.word N))
  have hL0 : L0 s0.locals := ⟨by rw [hloc]; exact hla, by rw [hloc]; exact hlb, by rw [hloc]; exact hlc⟩
  have H : HoareG σ X (fun t => t = s0) MemSafe.Helpers.encodeBytesBody (LQ Rf s0 (fun _ => True) Ret) := by
    unfold MemSafe.Helpers.encodeBytesBody
    refine hoareG_seq (R := fun r t => (r = none ∧ LPre Rf s0 (fun m => L0 m ∧
        ¬ (N = 1 ∧ FB.toNat < 128)) t) ∨ (r ≠ none ∧ LQ Rf s0 (fun _ => True) Ret r t)) ?_
      (fun _ _ _ hr _ h => h.elim (fun h => absurd h.1 hr) (fun h => h.2)) ?_
    · refine hoareG_ite ?_ (hoareG_skip fun t _ ⟨ht, hc⟩ => ?_)
      · refine hoareG_dec fun t _ ⟨ht, w, hw, hw0⟩ v hv _ => ?_
        subst t
        have hN1 : N = 1 := equal_true (cmp_val_true hw hw0 (ev_lw hL0.2.2) (ev_cw _ 1))
        obtain rfl := ev_loadByte_ld8W (ev_lw hL0.2.1) hv
        have hlb : (setVarHOLFinite bN (.val (.word FB)) s0).locals.lookup bN =
            some (.val (.word FB)) := lk_set_self _ _ _
        have hL1 : L0 (setVarHOLFinite bN (.val (.word FB)) s0).locals := by
          refine ⟨?_, ?_, ?_⟩
          · rw [lk_set_ne _ _ (by decide)]; exact hL0.1
          · rw [lk_set_ne _ _ (by decide)]; exact hL0.2.1
          · rw [lk_set_ne _ _ (by decide)]; exact hL0.2.2
        refine hoareG_ite ?_ (hoareG_skip fun t _ ⟨ht, hc⟩ => ?_)
        · refine hoareG_pre (P := LPre Rf s0 (fun m => L0 m ∧ m.lookup bN = some (.val (.word FB))
            ∧ E = 1)) ?_ fun t _ ⟨ht, w', hw', hw0'⟩ => ?_
          · refine hoareG_conseq (Q := LQ Rf s0 (fun _ => False) Ret) ?_ (fun _ _ h => h)
              fun r t _ _ h => Or.inr ⟨fun hr => h.2.1 hr, h.1, fun _ => trivial, h.2.2⟩
            · refine hoareG_seqL (L2 := fun m => (L0 m ∧ m.lookup bN = some (.val (.word FB)) ∧
                E = 1) ∧ D.toNat < 2 ^ 62 + 8) ?_ ?_
              · exact hoareG_st8First hT (fun _ h => h.1.1) fun _ a h =>
                  overlap_mono h (le_refl _) (by omega)
              · refine hoareG_returnQ fun t _ hL w hw => ?_
                rw [ev_cw] at hw
                cases hw
                refine ⟨by rw [hL.1.2.2], by rw [hL.1.2.2]; omega⟩
          · subst t
            have hlt := lower_true (cmp_val_true hw' hw0' (ev_lw hlb) (ev_cw _ 128))
            refine ⟨⟨hL1, hlb, ?_⟩, rfl, fun _ _ => rfl⟩
            rw [hE, encLenN, if_pos ⟨hN1, by simpa using hlt⟩]
        · subst t
          have hge := lower_false (cmp_val_false hc (ev_lw hlb) (ev_cw _ 128))
          refine Or.inl ⟨rfl, ⟨?_, ?_⟩, rfl, fun _ _ => rfl⟩
          · show L0 (_ : Locals)
            exact ⟨by rw [lookup_resVarEq_ne _ _ (by decide)]; exact hL1.1,
              by rw [lookup_resVarEq_ne _ _ (by decide)]; exact hL1.2.1,
              by rw [lookup_resVarEq_ne _ _ (by decide)]; exact hL1.2.2⟩
          · intro ⟨_, h⟩; simp at hge; omega
      · subst t
        have hN1 : N ≠ 1 := equal_false (cmp_val_false hc (ev_lw hL0.2.2) (ev_cw _ 1))
        exact Or.inl ⟨rfl, ⟨hL0, fun h => hN1 h.1⟩, rfl, fun _ _ => rfl⟩
    -- the header and the copy
    refine hoareG_pre (P := LPre Rf s0 (fun m => L0 m ∧ ¬ (N = 1 ∧ FB.toNat < 128))) ?_
      fun t _ h => h.elim (fun h => h.2) (fun h => absurd rfl h.1)
    have hEN : ∀ m, L0 m ∧ ¬ (N = 1 ∧ FB.toNat < 128) →
        E = MemSafe.Helpers.hdrLen N.toNat + N.toNat := fun m h => by
      rw [hE, encLenN, if_neg h.2]
    refine hoareG_decCallFoot (L' := fun _ _ => False) (footD_rlp_write_header hC hT) ?_ ?_
      (fun _ _ _ h => h.elim)
    · intro t _ hpre vs' hvs'
      obtain ⟨⟨hd, -, hn⟩, hne⟩ := hpre.1
      rw [evs_cons (ev_lw hd) (evs_cons (ev_cw _ 128) (evs_cons (ev_lw hn) evs_nil))] at hvs'
      cases hvs'
      have hE' := hEN _ hpre.1
      refine ⟨trivial, fun a ⟨D2, N2, hD2, hN2, hov⟩ => ?_⟩
      cases hD2
      cases hN2
      exact overlap_mono hov (le_refl _) (by omega)
    · intro s vs' v _ hL hvs' hret _
      obtain ⟨⟨hd, hs', hn⟩, hne⟩ := hL
      have hE' := hEN _ ⟨⟨hd, hs', hn⟩, hne⟩
      rw [evs_cons (ev_lw hd) (evs_cons (ev_cw _ 128) (evs_cons (ev_lw hn) evs_nil))] at hvs'
      cases hvs'
      obtain ⟨hv, hDH⟩ := hret D N rfl rfl
      subst hv
      have hHH : (BitVec.ofNat 64 (MemSafe.Helpers.hdrLen N.toNat)).toNat =
          MemSafe.Helpers.hdrLen N.toNat := by
        rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
      let Lk : Locals → Prop := fun m => m.lookup dN = some (.val (.word D)) ∧
        m.lookup sN = some (.val (.word S)) ∧ m.lookup nN = some (.val (.word N)) ∧
        m.lookup hN = some (.val (.word (BitVec.ofNat 64 (MemSafe.Helpers.hdrLen N.toNat))))
      have hLk : ∀ m, m = s.locals.update (hN, .val (.word (BitVec.ofNat 64
          (MemSafe.Helpers.hdrLen N.toNat)))) → Lk m := by
        intro m h
        subst h
        refine ⟨?_, ?_, ?_, lookup_update_self _ _ _⟩
        · rw [lookup_update_ne _ _ (by decide)]; exact hd
        · rw [lookup_update_ne _ _ (by decide)]; exact hs'
        · rw [lookup_update_ne _ _ (by decide)]; exact hn
      have hdh : (D + BitVec.ofNat 64 (MemSafe.Helpers.hdrLen N.toNat)).toNat =
          D.toNat + MemSafe.Helpers.hdrLen N.toNat := by
        rw [toNat_add2 (D := D) (I := BitVec.ofNat 64 (MemSafe.Helpers.hdrLen N.toNat))
          (by rw [hHH]; omega), hHH]
      refine hoareG_preL (L' := Lk) ?_ hLk
      refine hoareG_seqL (L2 := fun m => Lk m ∧ (N.toNat = 0 ∨
        D.toNat + MemSafe.Helpers.hdrLen N.toNat + N.toNat < 2 ^ 63)) ?_ ?_
      · refine hoareG_callFootL (footRetD_memcpy hC hA hT) fun t _ hpre vs2 hvs2 => ?_
        obtain ⟨hd, hs2, hn, hh⟩ := hpre.1
        rw [evs_cons (ev_add2 (ev_lw hd) (ev_lw hh))
          (evs_cons (ev_lw hs2) (evs_cons (ev_lw hn) evs_nil))] at hvs2
        cases hvs2
        refine ⟨⟨_, _, _, rfl⟩, fun a ⟨D2, S2, N2, hvs3, hov⟩ => ?_, fun v hv => ⟨hpre.1, ?_⟩⟩
        · simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs3
          obtain ⟨rfl, rfl, rfl⟩ := hvs3
          rw [hdh] at hov
          exact overlap_mono hov (by omega) (by omega)
        · have := hv _ _ _ rfl
          rw [hdh] at this
          omega
      · refine hoareG_returnQ fun t _ hL w hw => ?_
        rw [ev_add2 (ev_lw hL.1.2.2.2) (ev_lw hL.1.2.2.1)] at hw
        cases hw
        refine ⟨?_, by rcases hL.2 with h | h <;> omega⟩
        rw [hE', MemSafe.Helpers.ofNat_add_bv (by omega)]
  have := H s0 hs rfl (by rw [hr]; exact hg)
  rw [hr] at this
  obtain ⟨⟨hgl, hm⟩, -, hret⟩ := this
  exact ⟨hgl, hm, fun v hv => hret v (by rw [hv])⟩

end InitECandidate.Solver.Spec.Mpt.Leaves
