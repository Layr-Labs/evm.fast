import InitECandidate.Solver.MemSafe.Aw.Code

set_option autoImplicit false

/-!
# Leaf writers with an in-range conclusion (target A)

For the above-writer rule a writer gets no size precondition on its buffer. Every writer stores at
`dst` first, so in a good run `dst` is in the memory domain: `InD dst`. That is a *conclusion*
(it appears in the return predicate), and it is what keeps `dst + c` from wrapping afterwards.

* `InD D`: `D.toNat < domTop + 8`.
* `hoareG_stB0`: the byte store at offset `0`, which adds `InD P` to the locals invariant.
* `hoareG_stBA`: a byte store at `p + c` once `InD P` is known.
* Footprint of every writer: the cells `AbvR D` (`D` the `dst` argument); precondition only
  `D.toNat ≤ 2^61`.
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

/-- The address is in the memory domain's range (up to the last cell's bytes). -/
def InD (D : BitVec 64) : Prop := D.toNat < domTop + 8

/-- The footprint `AbvR D` for the `i`-th argument. -/
def AbvArg (i : Nat) (vs : List (ValueHOL 64)) (a : BitVec 64) : Prop :=
  ∃ D : BitVec 64, argW vs i = some D ∧ AbvR D a

theorem abvR_of_overlap {D D' : BitVec 64} {n : Nat} {a : BitVec 64} (h : Overlap D'.toNat n a)
    (hle : D.toNat ≤ D'.toNat) : AbvR D a := by
  obtain ⟨h1, h2, -⟩ := h
  exact ⟨h1, by omega⟩

theorem abvR_mono {D D' : BitVec 64} {a : BitVec 64} (h : AbvR D' a) (hle : D.toNat ≤ D'.toNat) :
    AbvR D a := ⟨h.1, by have := h.2; omega⟩

/-- **A byte store at offset `0`**: it lands in the domain, which adds `InD P`. -/
theorem hoareG_stB0 (hA : AlignedDom X) (hT : DomBelow X) {p : MlS} {P : BitVec 64}
    {e : ExpHOL 64} {Rf : BitVec 64 → Prop} {s0 : State σ} {L : Locals → Prop}
    {Ret : ValueHOL 64 → Prop} (hLp : ∀ m, L m → m.lookup p = some (.val (.word P)))
    (hD : P.toNat ≤ 2 ^ 61) (hR : ∀ a, AbvR P a → Rf a) :
    HoareG σ X (LPre Rf s0 L) (stP p .b 0 e) (LQ Rf s0 (fun m => L m ∧ InD P) Ret) := by
  have hw : (P + BitVec.ofNat 64 0).toNat = P.toNat := toNat_addc (by omega)
  refine hoareG_storeByte fun t hs hpre w x mem ha _ hst => ?_
  have hm := storeByte_mod hst
  rw [ev_offP (hLp _ hpre.1) 0] at ha
  cases ha
  have hdX : X.memaddrs (panByteAlignHOL (P + BitVec.ofNat 64 0)) := hs.2.1 ▸ storeByte_dom hst
  have hal := hA _ hdX
  have hlt := hT _ hdX
  have hba := byteAlign_toNat (P + BitVec.ofNat 64 0)
  refine ⟨⟨hpre.2.1, hpre.2.2.trans (hm.mono fun a ha' => ?_)⟩,
    fun _ => ⟨hpre.1, ?_⟩, fun _ h => nomatch h⟩
  · subst ha'
    exact hR _ ⟨hal, by omega⟩
  · show P.toNat < domTop + 8
    omega

/-- **A byte store at `p + c`**, `c < 64`, once `InD P` is known. -/
theorem hoareG_stBA (hA : AlignedDom X) {p : MlS} {P : BitVec 64} {c : Nat} {e : ExpHOL 64}
    {Rf : BitVec 64 → Prop} {s0 : State σ} {L : Locals → Prop} {Ret : ValueHOL 64 → Prop}
    (hLp : ∀ m, L m → m.lookup p = some (.val (.word P))) (hI : InD P) (hc : c < 64)
    (hR : ∀ a, AbvR P a → Rf a) :
    HoareG σ X (LPre Rf s0 L) (stP p .b c e) (LQ Rf s0 L Ret) := by
  have hs0 : domTop < 2 ^ 62 := by decide
  have hw : (P + BitVec.ofNat 64 c).toNat = P.toNat + c := toNat_addc (by unfold InD at hI; omega)
  refine hoareG_storeByte fun t hs hpre w x mem ha _ hst => ?_
  have hm := storeByte_mod hst
  rw [ev_offP (hLp _ hpre.1) c] at ha
  cases ha
  have hdX : X.memaddrs (panByteAlignHOL (P + BitVec.ofNat 64 c)) := hs.2.1 ▸ storeByte_dom hst
  have hal := hA _ hdX
  have hba := byteAlign_toNat (P + BitVec.ofNat 64 c)
  refine ⟨⟨hpre.2.1, hpre.2.2.trans (hm.mono fun a ha' => ?_)⟩, fun _ => hpre.1,
    fun _ h => nomatch h⟩
  subst ha'
  exact hR _ ⟨hal, by omega⟩

/-! ## `rlp_write_header` -/

def HdrPreW (vs : List (ValueHOL 64)) : Prop :=
  ∃ D : BitVec 64, argW vs 0 = some D ∧ D.toNat ≤ 2 ^ 61

def HdrRetA (vs : List (ValueHOL 64)) (v : ValueHOL 64) : Prop :=
  ∀ D N : BitVec 64, argW vs 0 = some D → argW vs 2 = some N →
    InD D ∧ v = .val (.word (BitVec.ofNat 64 (hdrLen N.toNat)))

theorem footRet_write_headerA (hC : X.code.lookup = guestCode) (hA : AlignedDom X)
    (hT : DomBelow X) :
    FootRet σ X (nm "rlp_write_header") HdrPreW (AbvArg 0) HdrRetA := by
  refine footRet_of_hoareG fun vs body callee rs hl s0 _ hloc hP => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, Bb, Cc, rfl, hA', -, hC', hla, -, hlc⟩ :=
    lookupCode_three code_rlp_write_header (by decide) (by decide) (by decide) hl
  obtain ⟨D, rfl⟩ := val_of_shapeEq_one hA'
  obtain ⟨N, rfl⟩ := val_of_shapeEq_one hC'
  obtain ⟨D', hD, hb⟩ := hP
  cases hD
  have h8 := beLen_le8 N.isLt
  have hs0 : domTop < 2 ^ 62 := by decide
  let Rf := AbvArg 0 [.val (.word D), Bb, .val (.word N)]
  have hR : ∀ a, AbvR D a → Rf a := fun a h => ⟨D, rfl, h⟩
  let Ret : ValueHOL 64 → Prop := fun v =>
    InD D ∧ v = .val (.word (BitVec.ofNat 64 (hdrLen N.toNat)))
  let L0 : Locals → Prop := fun m => m.lookup dN = some (.val (.word D)) ∧
    m.lookup nN = some (.val (.word N))
  refine hoareG_conseq (P := LPre Rf s0 L0) (Q := LQ Rf s0 (fun _ => True) Ret) ?_
    (fun t _ ht => by subst t; exact lpre_init ⟨by rw [hloc]; exact hla, by rw [hloc]; exact hlc⟩)
    fun _ _ _ _ h => ⟨h.1, fun w hw D2 N2 hD2 hN2 => by cases hD2; cases hN2; exact h.2.2 w hw⟩
  refine hoareG_seqL (L2 := fun m => L0 m ∧ 55 < N.toNat) ?_ ?_
  · refine hoareG_ite ?_ ?_
    · refine hoareG_pre (P := LPre Rf s0 (fun m => L0 m ∧ N.toNat ≤ 55)) ?_ ?_
      · refine hoareG_seqL (L2 := fun m => (L0 m ∧ N.toNat ≤ 55) ∧ InD D) ?_ ?_
        · exact hoareG_stB0 hA hT (fun _ h => h.1.1) hb hR
        · refine hoareG_returnQ fun t _ hL w hw => ?_
          rw [ev_cw] at hw
          cases hw
          refine ⟨hL.2, ?_⟩
          show _ = _
          simp [hdrLen, hL.1.2]
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
    refine hoareG_seqL (L2 := fun m => Lk m ∧ InD D) (hoareG_stB0 hA hT (fun _ h => h.1) hb hR) ?_
    refine hoareG_seqL (L2 := fun m => Lk m ∧ InD D) ?_ ?_
    · refine hoareG_callFoot (foot_rlp_put_beB hC) fun t _ hpre vs' hvs' => ?_
      obtain ⟨⟨hd, hn, hl⟩, hI⟩ := hpre.1
      unfold InD at hI
      rw [evs_cons (ev_add2 (ev_lw hd) (ev_cw _ 1))
        (evs_cons (ev_lw hn) (evs_cons (ev_lw hl) evs_nil))] at hvs'
      cases hvs'
      have hd1 : (D + BitVec.ofNat 64 1).toNat = D.toNat + 1 := toNat_addc (by omega)
      refine ⟨⟨_, _, rfl, rfl, by rw [hd1, hLL]; unfold bA; omega⟩, fun a ⟨D2, N2, hD2, hN2, hov⟩ => ?_⟩
      cases hD2
      cases hN2
      exact hR a (abvR_of_overlap hov (by rw [hd1]; omega))
    · refine hoareG_returnQ fun t _ hL w hw => ?_
      rw [ev_add2 (ev_cw _ 1) (ev_lw hL.1.2.2)] at hw
      cases hw
      refine ⟨hL.2, ?_⟩
      show _ = _
      rw [hhl, BitVec.ofNat_add_ofNat]


/-! ## Header lengths -/

def HlRet (i : Nat) (vs : List (ValueHOL 64)) (v : ValueHOL 64) : Prop :=
  ∀ N : BitVec 64, argW vs i = some N → v = .val (.word (BitVec.ofNat 64 (hdrLen N.toNat)))

theorem footRet_header_len (hC : X.code.lookup = guestCode) :
    FootRet σ X (nm "rlp_header_len") (fun _ => True) NoFoot (HlRet 0) := by
  refine footRet_of_hoareG fun vs body callee rs hl s0 _ hloc _ => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, rfl, hA', hla⟩ := lookupCode_one code_rlp_header_len hl
  obtain ⟨N, rfl⟩ := val_of_shapeEq_one hA'
  have h8 := beLen_le8 N.isLt
  let Rf := NoFoot [.val (.word N)]
  let Ret : ValueHOL 64 → Prop := fun v => v = .val (.word (BitVec.ofNat 64 (hdrLen N.toNat)))
  let L0 : Locals → Prop := fun m => m.lookup nN = some (.val (.word N))
  refine hoareG_conseq (P := LPre Rf s0 L0) (Q := LQ Rf s0 (fun _ => True) Ret) ?_
    (fun t _ ht => by subst t; exact lpre_init (by rw [hloc]; exact hla))
    fun _ _ _ _ h => ⟨h.1, fun w hw N' hN' => by cases hN'; exact h.2.2 w hw⟩
  refine hoareG_seqL (L2 := fun m => L0 m ∧ 55 < N.toNat) ?_ ?_
  · refine hoareG_ite ?_ ?_
    · refine hoareG_pre (P := LPre Rf s0 (fun m => L0 m ∧ N.toNat ≤ 55)) ?_ ?_
      · refine hoareG_returnQ fun t _ hL w hw => ?_
        rw [ev_cw] at hw
        cases hw
        show _ = _
        simp [hdrLen, hL.2]
      · intro t _ ⟨⟨hL, hbw⟩, w, hw, hw0⟩
        obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
        rw [ev_cw] at hx
        cases hx
        rw [ev_lw hL] at hy
        cases hy
        simp only [wordCmpHOL, Bool.not_eq_true', decide_eq_false_iff_not, BitVec.lt_def,
          BitVec.toNat_ofNat] at hxy
        exact ⟨⟨hL, by omega⟩, hbw⟩
    · refine hoareG_skip fun t _ ⟨⟨hL, hbw⟩, hc⟩ => ⟨hbw, fun _ => ⟨hL, ?_⟩, fun _ h => nomatch h⟩
      obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc
      rw [ev_cw] at hx
      cases hx
      rw [ev_lw hL] at hy
      cases hy
      simp only [wordCmpHOL, Bool.not_eq_false', decide_eq_true_eq, BitVec.lt_def,
        BitVec.toNat_ofNat] at hxy
      omega
  · refine hoareG_decCallFoot (L' := fun _ _ => False) (footRet_rlp_be_len hC)
      (fun _ _ _ _ _ => ⟨trivial, fun _ h => h.elim⟩) ?_ (fun _ _ _ h => h.elim)
    intro s vs v _ hL hvs hret _
    rw [evs_one (ev_lw hL.1) hvs] at hret
    have hv := hret N rfl
    subst hv
    have hhl : hdrLen N.toNat = 1 + beLen N.toNat := by
      have := hL.2
      simp only [hdrLen]
      split <;> omega
    let Lk : Locals → Prop := fun m => m.lookup nN = some (.val (.word N)) ∧
      m.lookup lN = some (.val (.word (BitVec.ofNat 64 (beLen N.toNat))))
    have hLk : ∀ m, m = s.locals.update (lN, .val (.word (BitVec.ofNat 64 (beLen N.toNat)))) →
        Lk m := by
      intro m h
      subst h
      refine ⟨?_, lookup_update_self _ _ _⟩
      rw [lookup_update_ne _ _ (by decide)]; exact hL.1
    refine hoareG_preL (L' := Lk) ?_ hLk
    refine hoareG_returnQ fun t _ hL w hw => ?_
    rw [ev_add2 (ev_cw _ 1) (ev_lw hL.2)] at hw
    cases hw
    show _ = _
    rw [hhl, BitVec.ofNat_add_ofNat]

theorem footRet_list_header_len (hC : X.code.lookup = guestCode) :
    FootRet σ X (nm "rlp_list_header_len") (fun _ => True) NoFoot (HlRet 0) := by
  refine footRet_of_hoareG fun vs body callee rs hl s0 _ hloc _ => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, rfl, hA', hla⟩ := lookupCode_one code_rlp_list_header_len hl
  obtain ⟨N, rfl⟩ := val_of_shapeEq_one hA'
  let Rf := NoFoot [.val (.word N)]
  let L0 : Locals → Prop := fun m => m.lookup plN = some (.val (.word N))
  refine hoareG_conseq (P := LPre Rf s0 L0)
    (Q := LQ Rf s0 (fun _ => True) (fun v => HlRet 0 [.val (.word N)] v)) ?_
    (fun t _ ht => by subst t; exact lpre_init (by rw [hloc]; exact hla))
    fun _ _ _ _ h => ⟨h.1, h.2.2⟩
  refine hoareG_tailFoot (footRet_header_len hC) fun t _ hpre vs' hvs' => ?_
  rw [evs_one (ev_lw hpre.1) hvs'] at *
  exact ⟨trivial, fun a ha => ha.elim, fun v hv => hv⟩


/-! ## `rlp_encode_list_header` -/

def LhRet (vs : List (ValueHOL 64)) (v : ValueHOL 64) : Prop :=
  ∀ D N : BitVec 64, argW vs 0 = some D → argW vs 1 = some N →
    InD D ∧ v = .val (.word (BitVec.ofNat 64 (hdrLen N.toNat)))

theorem footRet_encode_list_headerA (hC : X.code.lookup = guestCode) (hA : AlignedDom X)
    (hT : DomBelow X) :
    FootRet σ X (nm "rlp_encode_list_header") HdrPreW (AbvArg 0) LhRet := by
  refine footRet_of_hoareG fun vs body callee rs hl s0 _ hloc hP => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, Bb, rfl, hA', hB', hla, hlb⟩ :=
    lookupCode_two code_rlp_encode_list_header (by decide) hl
  obtain ⟨D, rfl⟩ := val_of_shapeEq_one hA'
  obtain ⟨N, rfl⟩ := val_of_shapeEq_one hB'
  obtain ⟨D', hD, hb⟩ := hP
  cases hD
  let Rf := AbvArg 0 [.val (.word D), .val (.word N)]
  let L0 : Locals → Prop := fun m => m.lookup dN = some (.val (.word D)) ∧
    m.lookup plN = some (.val (.word N))
  refine hoareG_conseq (P := LPre Rf s0 L0)
    (Q := LQ Rf s0 (fun _ => True) (fun v => LhRet [.val (.word D), .val (.word N)] v)) ?_
    (fun t _ ht => by subst t; exact lpre_init ⟨by rw [hloc]; exact hla, by rw [hloc]; exact hlb⟩)
    fun _ _ _ _ h => ⟨h.1, h.2.2⟩
  refine hoareG_tailFoot (footRet_write_headerA hC hA hT) fun t _ hpre vs' hvs' => ?_
  obtain ⟨hd, hn⟩ := hpre.1
  rw [evs_cons (ev_lw hd) (evs_cons (ev_cw _ 192) (evs_cons (ev_lw hn) evs_nil))] at hvs'
  cases hvs'
  refine ⟨⟨D, rfl, hb⟩, fun a ⟨D2, hD2, h⟩ => ?_, fun v hv D2 N2 hD2 hN2 => ?_⟩
  · cases hD2
    exact ⟨D, rfl, h⟩
  · cases hD2
    cases hN2
    exact hv D N rfl rfl

/-! ## `rlp_encode_word` -/

def WRetA (vs : List (ValueHOL 64)) (v : ValueHOL 64) : Prop :=
  ∀ D : BitVec 64, argW vs 0 = some D →
    InD D ∧ ∃ k : Nat, v = .val (.word (BitVec.ofNat 64 k)) ∧ 1 ≤ k ∧ D.toNat + k ≤ domTop + 128

theorem footRet_encode_wordA (hC : X.code.lookup = guestCode) (hA : AlignedDom X)
    (hT : DomBelow X) :
    FootRet σ X (nm "rlp_encode_word") HdrPreW (AbvArg 0) WRetA := by
  refine footRet_of_hoareG fun vs body callee rs hl s0 _ hloc hP => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, rfl, hA', hB', hla, hlb⟩ := lookupCode_two code_rlp_encode_word (by decide) hl
  obtain ⟨D, rfl⟩ := val_of_shapeEq_one hA'
  obtain ⟨W, rfl⟩ := val_of_shapeEq_one hB'
  obtain ⟨D', hD, hb⟩ := hP
  cases hD
  have hs0 : domTop < 2 ^ 62 := by decide
  have h8 := beLen_le8 W.isLt
  have hWL := wordLen_le W.isLt
  let Rf := AbvArg 0 [.val (.word D), .val (.word W)]
  have hR : ∀ a, AbvR D a → Rf a := fun a h => ⟨D, rfl, h⟩
  let Ret : ValueHOL 64 → Prop := fun v =>
    InD D ∧ v = .val (.word (BitVec.ofNat 64 (wordLen W.toNat)))
  let L0 : Locals → Prop := fun m => m.lookup dN = some (.val (.word D)) ∧
    m.lookup wN = some (.val (.word W))
  refine hoareG_conseq (P := LPre Rf s0 L0) (Q := LQ Rf s0 (fun _ => True) Ret) ?_
    (fun t _ ht => by subst t; exact lpre_init ⟨by rw [hloc]; exact hla, by rw [hloc]; exact hlb⟩)
    fun _ _ _ _ h => ⟨h.1, fun w hw D2 hD2 => by
      cases hD2
      obtain ⟨hI, hv⟩ := h.2.2 w hw
      refine ⟨hI, wordLen W.toNat, hv, hWL.1, ?_⟩
      unfold InD at hI
      omega⟩
  -- the one-byte cases `w = 0` and `w < 128`
  have hone : W.toNat < 128 → ∀ (e : ExpHOL 64) (L' : Locals → Prop), HoareG σ X (LPre Rf s0 L0)
      (.seq (.storeByte (lv dN) e) (.return (cw 1))) (LQ Rf s0 L' Ret) := by
    intro hw e L'
    refine hoareG_seqL (L2 := fun m => L0 m ∧ InD D)
      (hoareG_stB0 hA hT (fun _ h => h.1) hb hR) ?_
    refine hoareG_returnQ fun t _ hL w hw' => ?_
    rw [ev_cw] at hw'
    cases hw'
    refine ⟨hL.2, ?_⟩
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
    refine hoareG_seqL (L2 := fun m => Lk m ∧ InD D) (hoareG_stB0 hA hT (fun _ h => h.1) hb hR) ?_
    refine hoareG_seqL (L2 := fun m => Lk m ∧ InD D) ?_ ?_
    · refine hoareG_callFoot (foot_rlp_put_beB hC) fun t _ hpre vs' hvs' => ?_
      obtain ⟨⟨hd, hw, hl⟩, hI⟩ := hpre.1
      unfold InD at hI
      rw [evs_cons (ev_add2 (ev_lw hd) (ev_cw _ 1))
        (evs_cons (ev_lw hw) (evs_cons (ev_lw hl) evs_nil))] at hvs'
      cases hvs'
      have hd1 : (D + BitVec.ofNat 64 1).toNat = D.toNat + 1 := toNat_addc (by omega)
      refine ⟨⟨_, _, rfl, rfl, by rw [hd1, hLL]; unfold bA; omega⟩,
        fun a ⟨D2, N2, hD2, hN2, hov⟩ => ?_⟩
      cases hD2
      cases hN2
      exact hR a (abvR_of_overlap hov (by rw [hd1]; omega))
    · refine hoareG_returnQ fun t _ hL w hw => ?_
      rw [ev_add2 (ev_cw _ 1) (ev_lw hL.1.2.2)] at hw
      cases hw
      refine ⟨hL.2, ?_⟩
      show _ = _
      rw [hwl, BitVec.ofNat_add_ofNat]

/-! ## `memcpy` as a `FootRet`, and calls that keep the callee's return facts -/

def MemcpyRetA (vs : List (ValueHOL 64)) (_ : ValueHOL 64) : Prop :=
  ∀ D N : BitVec 64, argW vs 0 = some D → argW vs 2 = some N →
    N.toNat = 0 ∨ D.toNat + N.toNat ≤ domTop + 64

theorem footRet_memcpyA (hC : X.code.lookup = guestCode) (hA : AlignedDom X) (hT : DomBelow X) :
    FootRet σ X (nm "memcpy")
      (fun vs => ∃ D N : BitVec 64, argW vs 0 = some D ∧ argW vs 2 = some N ∧ D.toNat ≤ 2 ^ 62)
      (AbvArg 0) MemcpyRetA :=
  (funSpec_memcpyA (σ := σ) hC hA hT).mono fun vs s r t h hg hP => by
    obtain ⟨D, N, hD, hN, hb⟩ := hP
    have h' := h hg D N hD hN hb
    refine ⟨h'.1, h'.2.1.mono (fun a ha => ⟨D, hD, ha⟩), fun v _ D2 N2 hD2 hN2 => ?_⟩
    rw [hD] at hD2
    rw [hN] at hN2
    cases hD2
    cases hN2
    exact h'.2.2

/-- `f(args);` for a callee with a footprint and return spec, keeping what the return spec says
about the call in the locals invariant. -/
theorem hoareG_callFootR {f : MlS} {args : List (ExpHOL 64)} {Pre : List (ValueHOL 64) → Prop}
    {R : List (ValueHOL 64) → BitVec 64 → Prop} {RetF : List (ValueHOL 64) → ValueHOL 64 → Prop}
    (hf : FootRet σ X f Pre R RetF)
    {Rf : BitVec 64 → Prop} {s0 : State σ} {L L' : Locals → Prop} {Ret : ValueHOL 64 → Prop}
    (h : ∀ s : State σ, InCtx s X → LPre Rf s0 L s → ∀ vs, evs s args = some vs →
      Pre vs ∧ ∀ a, R vs a → Rf a)
    (hL : ∀ (s : State σ) vs v, L s.locals → evs s args = some vs → RetF vs v → L' s.locals) :
    HoareG σ X (LPre Rf s0 L) (.call (some (none, none)) f args) (LQ Rf s0 L' Ret) := by
  refine hoareG_callD hf ?_ ?_
  · intro s hs hpre vs hvs callee v st hR _
    obtain ⟨hP, hsub⟩ := h s hs hpre vs hvs
    obtain ⟨hgl, hmod, hret⟩ := hR (by simp [Good]) hP
    exact ⟨⟨hgl.trans hpre.2.1, hpre.2.2.trans (hmod.mono hsub)⟩,
      fun _ => hL s vs v hpre.1 hvs (hret v rfl), fun _ h => nomatch h⟩
  · intro s hs hpre vs hvs callee r st hR _ habn
    obtain ⟨hP, hsub⟩ := h s hs hpre vs hvs
    obtain ⟨hgl, hmod, -⟩ := hR (abn_good habn) hP
    exact ⟨⟨hgl.trans hpre.2.1, hpre.2.2.trans (hmod.mono hsub)⟩, (fun h => nomatch h),
      fun v hv => absurd (Option.some.inj hv) (abn_ne_returned habn v)⟩

/-! ## `rlp_encode_bytes`: any length -/

/-- The returned length is at least `1`, and `dst + k` stays near the end of the domain. -/
def EncRetA (vs : List (ValueHOL 64)) (v : ValueHOL 64) : Prop :=
  ∀ D : BitVec 64, argW vs 0 = some D →
    InD D ∧ ∃ k : Nat, v = .val (.word (BitVec.ofNat 64 k)) ∧ 1 ≤ k ∧
      D.toNat + k ≤ domTop + 128

theorem footRet_encode_bytesA (hC : X.code.lookup = guestCode) (hA : AlignedDom X)
    (hT : DomBelow X) :
    FootRet σ X (nm "rlp_encode_bytes") HdrPreW (AbvArg 0) EncRetA := by
  refine footRet_of_hoareG fun vs body callee rs hl s0 _ hloc hP => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, Sv, Cc, rfl, hA', -, hC', hla, hlb, hlc⟩ :=
    lookupCode_three code_rlp_encode_bytes (by decide) (by decide) (by decide) hl
  obtain ⟨D, rfl⟩ := val_of_shapeEq_one hA'
  obtain ⟨N, rfl⟩ := val_of_shapeEq_one hC'
  obtain ⟨D', hD, hb⟩ := hP
  cases hD
  have hs0 : domTop < 2 ^ 62 := by decide
  have hH := hdrLen_le N.isLt
  let Rf := AbvArg 0 [.val (.word D), Sv, .val (.word N)]
  have hR : ∀ a, AbvR D a → Rf a := fun a h => ⟨D, rfl, h⟩
  let Ret : ValueHOL 64 → Prop := fun v => InD D ∧ ∃ k : Nat,
    v = .val (.word (BitVec.ofNat 64 k)) ∧ 1 ≤ k ∧ D.toNat + k ≤ domTop + 128
  let L0 : Locals → Prop := fun m => m.lookup dN = some (.val (.word D)) ∧
    m.lookup sN = some Sv ∧ m.lookup nN = some (.val (.word N))
  refine hoareG_conseq (P := LPre Rf s0 L0) (Q := LQ Rf s0 (fun _ => True) Ret) ?_
    (fun t _ ht => by
      subst t
      exact lpre_init ⟨by rw [hloc]; exact hla, by rw [hloc]; exact hlb, by rw [hloc]; exact hlc⟩)
    fun _ _ _ _ h => ⟨h.1, fun w hw D2 hD2 => by cases hD2; exact h.2.2 w hw⟩
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
          refine hoareG_seqL (L2 := fun m => (L0 m ∧ N.toNat = 1) ∧ InD D)
            (hoareG_stB0 hA hT (fun _ h => h.1.1) hb hR) ?_
          refine hoareG_returnQ fun t _ hL w hw => ?_
          rw [ev_cw] at hw
          cases hw
          exact ⟨hL.2, 1, rfl, le_refl _, by have := hL.2; unfold InD at this; omega⟩
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
  · refine hoareG_decCallFoot (L' := fun _ _ => False) (footRet_write_headerA hC hA hT) ?_ ?_
      (fun _ _ _ h => h.elim)
    · intro t _ hpre vs' hvs'
      obtain ⟨hd, -, hn⟩ := hpre.1
      rw [evs_cons (ev_lw hd) (evs_cons (ev_cw _ 128) (evs_cons (ev_lw hn) evs_nil))] at hvs'
      cases hvs'
      refine ⟨⟨D, rfl, hb⟩, fun a ⟨D2, hD2, h⟩ => ?_⟩
      cases hD2
      exact hR a h
    · intro s vs' v _ hL hvs' hret _
      obtain ⟨hd, hs', hn⟩ := hL
      rw [evs_cons (ev_lw hd) (evs_cons (ev_cw _ 128) (evs_cons (ev_lw hn) evs_nil))] at hvs'
      cases hvs'
      obtain ⟨hI, hv⟩ := hret D N rfl rfl
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
      have hdh : (D + BitVec.ofNat 64 (hdrLen N.toNat)).toNat = D.toNat + hdrLen N.toNat := by
        unfold InD at hI
        rw [toNat_add2 (D := D) (I := BitVec.ofNat 64 (hdrLen N.toNat)) (by rw [hHH]; omega), hHH]
      refine hoareG_preL (L' := Lk) ?_ hLk
      refine hoareG_seqL (L2 := fun m => Lk m ∧ (N.toNat = 0 ∨
          D.toNat + hdrLen N.toNat + N.toNat ≤ domTop + 64)) ?_ ?_
      · refine hoareG_callFootR (footRet_memcpyA hC hA hT) (fun t _ hpre vs2 hvs2 => ?_)
          (fun t vs2 v2 hL2 hvs2 hret2 => ?_)
        · obtain ⟨hd, hs2, hn, hh⟩ := hpre.1
          rw [evs_cons (ev_add2 (ev_lw hd) (ev_lw hh))
            (evs_cons (ev_lv _ _ ▸ hs2) (evs_cons (ev_lw hn) evs_nil))] at hvs2
          cases hvs2
          unfold InD at hI
          refine ⟨⟨_, _, rfl, rfl, by rw [hdh]; omega⟩, fun a ⟨D2, hD2, hov⟩ => ?_⟩
          cases hD2
          exact hR a (abvR_mono hov (by rw [hdh]; omega))
        · obtain ⟨hd, hs2, hn, hh⟩ := hL2
          rw [evs_cons (ev_add2 (ev_lw hd) (ev_lw hh))
            (evs_cons (ev_lv _ _ ▸ hs2) (evs_cons (ev_lw hn) evs_nil))] at hvs2
          cases hvs2
          refine ⟨⟨hd, hs2, hn, hh⟩, ?_⟩
          have := hret2 _ N rfl rfl
          rw [hdh] at this
          omega
      · refine hoareG_returnQ fun t _ hL w hw => ?_
        rw [ev_add2 (ev_lw hL.1.2.2.2) (ev_lw hL.1.2.2.1)] at hw
        cases hw
        refine ⟨hI, hdrLen N.toNat + N.toNat, ?_, by omega, ?_⟩
        · congr 2
          exact ofNat_add_bv (by omega)
        · unfold InD at hI
          omega

/-! ## `rlp_finish_list`: any `payload_end` -/

def FinRetA (vs : List (ValueHOL 64)) (v : ValueHOL 64) : Prop :=
  ∀ D : BitVec 64, argW vs 0 = some D →
    InD D ∧ ∃ k : Nat, v = .val (.word (BitVec.ofNat 64 k)) ∧ 1 ≤ k ∧
      D.toNat + k ≤ domTop + 128 ∧ ∀ PE : BitVec 64, argW vs 1 = some PE →
        k = hdrLen (PE - (D + BitVec.ofNat 64 9)).toNat + (PE - (D + BitVec.ofNat 64 9)).toNat

theorem footRet_finish_listA (hC : X.code.lookup = guestCode) (hA : AlignedDom X)
    (hT : DomBelow X) :
    FootRet σ X (nm "rlp_finish_list") HdrPreW (AbvArg 0) FinRetA := by
  refine footRet_of_hoareG fun vs body callee rs hl s0 _ hloc hP => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, Bb, rfl, hA', hB', hla, hlb⟩ :=
    lookupCode_two code_rlp_finish_list (by decide) hl
  obtain ⟨D, rfl⟩ := val_of_shapeEq_one hA'
  obtain ⟨PE, rfl⟩ := val_of_shapeEq_one hB'
  obtain ⟨D', hD, hb⟩ := hP
  cases hD
  have hs0 : domTop < 2 ^ 62 := by decide
  let Rf := AbvArg 0 [.val (.word D), .val (.word PE)]
  have hR : ∀ a, AbvR D a → Rf a := fun a h => ⟨D, rfl, h⟩
  let Ret : ValueHOL 64 → Prop := fun v => InD D ∧ ∃ k : Nat,
    v = .val (.word (BitVec.ofNat 64 k)) ∧ 1 ≤ k ∧ D.toNat + k ≤ domTop + 128 ∧
      k = hdrLen (PE - (D + BitVec.ofNat 64 9)).toNat + (PE - (D + BitVec.ofNat 64 9)).toNat
  let L0 : Locals → Prop := fun m => m.lookup dN = some (.val (.word D)) ∧
    m.lookup peN = some (.val (.word PE))
  refine hoareG_conseq (P := LPre Rf s0 L0) (Q := LQ Rf s0 (fun _ => True) Ret) ?_
    (fun t _ ht => by subst t; exact lpre_init ⟨by rw [hloc]; exact hla, by rw [hloc]; exact hlb⟩)
    fun _ _ _ _ h => ⟨h.1, fun w hw D2 hD2 => by
      cases hD2
      obtain ⟨hI, k, a1, a2, a3, a4⟩ := h.2.2 w hw
      exact ⟨hI, k, a1, a2, a3, fun PE' hP => by cases hP; exact a4⟩⟩
  refine hoareG_decL (L' := fun _ _ => False) ?_ (fun _ _ _ h => h.elim)
  intro s _ hL v hv _
  rw [ev_sub2 (ev_lw hL.2) (ev_add2 (ev_lw hL.1) (ev_cw _ 9))] at hv
  cases hv
  set PL : BitVec 64 := PE - (D + BitVec.ofNat 64 9) with hPL
  let Lp : Locals → Prop := fun m => m.lookup dN = some (.val (.word D)) ∧
    m.lookup payN = some (.val (.word PL))
  have hLp : ∀ m, m = s.locals.update (payN, .val (.word PL)) → Lp m := by
    intro m h
    subst h
    refine ⟨?_, lookup_update_self _ _ _⟩
    rw [lookup_update_ne _ _ (by decide)]; exact hL.1
  refine hoareG_preL (L' := Lp) ?_ hLp
  refine hoareG_decCallFoot (L' := fun _ _ => False) (footRet_list_header_len hC)
    (fun _ _ _ _ _ => ⟨trivial, fun _ h => h.elim⟩) ?_ (fun _ _ _ h => h.elim)
  intro s2 vs v2 _ hL2 hvs2 hret2 _
  rw [evs_one (ev_lw hL2.2) hvs2] at hret2
  have hv2 := hret2 PL rfl
  subst hv2
  have hH := hdrLen_le PL.isLt
  have hHH : (BitVec.ofNat 64 (hdrLen PL.toNat)).toNat = hdrLen PL.toNat := by
    rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
  let Lk : Locals → Prop := fun m => m.lookup dN = some (.val (.word D)) ∧
    m.lookup payN = some (.val (.word PL)) ∧
    m.lookup hlN = some (.val (.word (BitVec.ofNat 64 (hdrLen PL.toNat))))
  have hLk : ∀ m, m = s2.locals.update (hlN, .val (.word (BitVec.ofNat 64 (hdrLen PL.toNat)))) →
      Lk m := by
    intro m h
    subst h
    refine ⟨?_, ?_, lookup_update_self _ _ _⟩
    · rw [lookup_update_ne _ _ (by decide)]; exact hL2.1
    · rw [lookup_update_ne _ _ (by decide)]; exact hL2.2
  have hdh : (D + BitVec.ofNat 64 (hdrLen PL.toNat)).toNat = D.toNat + hdrLen PL.toNat := by
    rw [toNat_add2 (D := D) (I := BitVec.ofNat 64 (hdrLen PL.toNat)) (by rw [hHH]; omega), hHH]
  refine hoareG_preL (L' := Lk) ?_ hLk
  refine hoareG_seqL (L2 := fun m => Lk m ∧ (PL.toNat = 0 ∨
      D.toNat + hdrLen PL.toNat + PL.toNat ≤ domTop + 64)) ?_ ?_
  · refine hoareG_callFootR (footRet_memcpyA hC hA hT) (fun t _ hpre vs3 hvs3 => ?_)
      (fun t vs3 v3 hL3 hvs3 hret3 => ?_)
    · obtain ⟨hd, hp, hh⟩ := hpre.1
      rw [evs_cons (ev_add2 (ev_lw hd) (ev_lw hh))
        (evs_cons (ev_add2 (ev_lw hd) (ev_cw _ 9)) (evs_cons (ev_lw hp) evs_nil))] at hvs3
      cases hvs3
      refine ⟨⟨_, _, rfl, rfl, by rw [hdh]; omega⟩, fun a ⟨D2, hD2, hov⟩ => ?_⟩
      cases hD2
      exact hR a (abvR_mono hov (by rw [hdh]; omega))
    · obtain ⟨hd, hp, hh⟩ := hL3
      rw [evs_cons (ev_add2 (ev_lw hd) (ev_lw hh))
        (evs_cons (ev_add2 (ev_lw hd) (ev_cw _ 9)) (evs_cons (ev_lw hp) evs_nil))] at hvs3
      cases hvs3
      refine ⟨⟨hd, hp, hh⟩, ?_⟩
      have := hret3 _ PL rfl rfl
      rw [hdh] at this
      omega
  · refine hoareG_seqL (L2 := fun m => (Lk m ∧ (PL.toNat = 0 ∨
        D.toNat + hdrLen PL.toNat + PL.toNat ≤ domTop + 64)) ∧ InD D) ?_ ?_
    · refine hoareG_callFootR (footRet_encode_list_headerA hC hA hT)
        (fun t _ hpre vs3 hvs3 => ?_) (fun t vs3 v3 hL3 hvs3 hret3 => ?_)
      · obtain ⟨⟨hd, hp, hh⟩, -⟩ := hpre.1
        rw [evs_cons (ev_lw hd) (evs_cons (ev_lw hp) evs_nil)] at hvs3
        cases hvs3
        refine ⟨⟨D, rfl, hb⟩, fun a ⟨D2, hD2, hov⟩ => ?_⟩
        cases hD2
        exact hR a hov
      · obtain ⟨hd, hp, hh⟩ := hL3.1
        rw [evs_cons (ev_lw hd) (evs_cons (ev_lw hp) evs_nil)] at hvs3
        cases hvs3
        exact ⟨hL3, (hret3 D PL rfl rfl).1⟩
    · refine hoareG_returnQ fun t _ hL w hw => ?_
      obtain ⟨⟨⟨hd, hp, hh⟩, hbd⟩, hI⟩ := hL
      rw [ev_add2 (ev_lw hh) (ev_lw hp)] at hw
      cases hw
      refine ⟨hI, hdrLen PL.toNat + PL.toNat, ?_, by omega, ?_, rfl⟩
      · congr 2
        exact ofNat_add_bv (by omega)
      · unfold InD at hI
        omega

end InitECandidate.Solver.MemSafe.Aw

#print axioms InitECandidate.Solver.MemSafe.Aw.footRet_finish_listA
#print axioms InitECandidate.Solver.MemSafe.Aw.footRet_encode_list_headerA
#print axioms InitECandidate.Solver.MemSafe.Aw.footRet_encode_wordA
#print axioms InitECandidate.Solver.MemSafe.Aw.footRet_encode_bytesA
