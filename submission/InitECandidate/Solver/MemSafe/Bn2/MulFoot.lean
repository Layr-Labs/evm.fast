import InitECandidate.Solver.MemSafe.Bn2.MulCode

set_option autoImplicit false

/-!
# `bn_mul`: the footprint

`bn_mul(a, na, b, nb, out)` writes only the words of `out[0, na + nb)`. Under `nb <= na` they all
lie in `[out, out + 16 na)`. `foot_bn_mul`: the globals are kept and memory changes only in the
cells overlapping `[out, out + 16 na)` (when `na = 0` or `out + 16 na <= scratchEnd`).
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Bn2
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers

variable {σ : Type} {X : Ctx 64}

/-- The footprint: the cells overlapping `[out, out + 16 na)`. -/
def RfM (O NA : BitVec 64) : BitVec 64 → Prop := Overlap O.toNat (16 * NA.toNat)

/-- The side conditions on the argument words. -/
structure MP (O NA NB : BitVec 64) : Prop where
  hle : NB.toNat ≤ NA.toNat
  hB : 0 < NA.toNat → O.toNat + 16 * NA.toNat ≤ scratchEnd

theorem MP.small {O NA NB : BitVec 64} (h : MP O NA NB) : NA.toNat < 2 ^ 32 := by
  have hs : scratchEnd < 2 ^ 32 := by decide
  by_cases h0 : NA.toNat = 0
  · omega
  · have := h.hB (by omega)
    omega

theorem MP.hO {O NA NB : BitVec 64} (h : MP O NA NB) : O.toNat + 16 * NA.toNat < 2 ^ 64 := by
  have hs : scratchEnd < 2 ^ 32 := by decide
  have := O.isLt
  by_cases h0 : NA.toNat = 0
  · omega
  · have := h.hB (by omega)
    omega

def MFix (O NA NB : BitVec 64) (m : Locals) : Prop :=
  LkW m "out" O ∧ LkW m "na" NA ∧ LkW m "nb" NB

theorem MFix.upd {O NA NB : BitVec 64} {m : Locals} {y : String} {v : ValueHOL 64}
    (h : MFix O NA NB m) (h1 : nm y ≠ nm "out") (h2 : nm y ≠ nm "na") (h3 : nm y ≠ nm "nb") :
    MFix O NA NB (m.update (nm y, v)) :=
  ⟨h.1.upd h1, h.2.1.upd h2, h.2.2.upd h3⟩

theorem MFix.res {O NA NB : BitVec 64} {m : Locals} {y : String} (old : Option (ValueHOL 64))
    (h : MFix O NA NB m) (h1 : nm y ≠ nm "out") (h2 : nm y ≠ nm "na") (h3 : nm y ≠ nm "nb") :
    MFix O NA NB (m.resVarEq (nm y, old)) :=
  ⟨h.1.res old h1, h.2.1.res old h2, h.2.2.res old h3⟩

/-! ## Loop 1: zero `out[0, na + nb)` -/

def J1 (O NA NB : BitVec 64) (m : Locals) : Prop :=
  MFix O NA NB m ∧ ∃ I : BitVec 64, LkW m "i" I ∧ I.toNat ≤ NA.toNat + NB.toNat

def J1s (O NA NB : BitVec 64) (m : Locals) : Prop :=
  MFix O NA NB m ∧ ∃ I : BitVec 64, LkW m "i" I ∧ I.toNat < NA.toNat + NB.toNat

theorem guard1 {t : State σ} {NA NB I : BitVec 64} (hs : NA.toNat + NB.toNat < 2 ^ 64)
    (hna : LkW t.locals "na" NA) (hnb : LkW t.locals "nb" NB) (hi : LkW t.locals "i" I)
    (hc : CondTrue t (.cmp .lower (lv (nm "i")) (.op .add [lv (nm "na"), lv (nm "nb")]))) :
    I.toNat < NA.toNat + NB.toNat := by
  obtain ⟨w, hw, hw0⟩ := hc
  obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
  rw [ev_lw hi] at hx
  cases hx
  rw [ev_add2 (ev_lw hna) (ev_lw hnb)] at hy
  cases hy
  have := lower_true hxy
  rw [toNat_add2 hs] at this
  exact this

theorem hoareG_mulL1 (hA : AlignedDom X) {O NA NB : BitVec 64} {s0 : State σ}
    (hp : MP O NA NB) :
    HoareG σ X (LPre (RfM O NA) s0 (J1 O NA NB)) mulL1 (LN (RfM O NA) s0 (J1 O NA NB)) := by
  have h32 := hp.small
  have hle := hp.hle
  have hOO := hp.hO
  refine hoareG_whileNN (J := J1 O NA NB) ?_
  refine hoareG_pre (P := LPre (RfM O NA) s0 (J1s O NA NB)) ?_ ?_
  · refine hoareG_seqN (L2 := J1s O NA NB) ?_ ?_
    · refine hoareG_stIxN hA (b := "out") (ie := lv (nm "i")) (e := cw 0) (B := O)
        (nb := 16 * NA.toNat) (fun m hm => hm.1.1) ?_ (by omega) (fun a h => h) (oneWordL_cw' 0)
      intro t ht x hx
      obtain ⟨-, I, hi, hI⟩ := ht
      rw [ev_lw hi] at hx
      cases hx
      omega
    · refine hoareG_assignN fun s _ hJ v hv => ?_
      obtain ⟨hF, I, hi, hI⟩ := hJ
      rw [ev_inc hi] at hv
      cases hv
      refine ⟨hF.upd (by decide) (by decide) (by decide), _, LkW.self _ _ _, ?_⟩
      rw [toNat_inc (by omega)]
      omega
  · intro t _ ⟨⟨⟨hF, I, hi, hI⟩, hbw⟩, hc⟩
    have := guard1 (by omega) hF.2.1 hF.2.2 hi hc
    exact ⟨⟨hF, I, hi, this⟩, hbw⟩

/-! ## The outer loop -/

/-- Outer-loop invariant (at the loop test). -/
def J2 (O NA NB : BitVec 64) (m : Locals) : Prop :=
  MFix O NA NB m ∧ ∃ I : BitVec 64, LkW m "i" I ∧ I.toNat ≤ NA.toNat

/-- Inside the body after `ai`, `carry`, `j`, `o`. -/
def Kb (O NA NB I : BitVec 64) (m : Locals) : Prop :=
  MFix O NA NB m ∧ LkW m "i" I ∧ I.toNat < NA.toNat ∧ LkW m "o" (O + I * BitVec.ofNat 64 8) ∧
    ∃ c : BitVec 64, LkW m "carry" c

/-- The same with `j` tracked. -/
def Kj (O NA NB I : BitVec 64) (m : Locals) : Prop :=
  Kb O NA NB I m ∧ ∃ Jv : BitVec 64, LkW m "j" Jv ∧ Jv.toNat ≤ NB.toNat

def Kjs (O NA NB I : BitVec 64) (m : Locals) : Prop :=
  Kb O NA NB I m ∧ ∃ Jv : BitVec 64, LkW m "j" Jv ∧ Jv.toNat < NB.toNat

theorem Kb.upd {O NA NB I : BitVec 64} {m : Locals} {y : String} {v : ValueHOL 64}
    (h : Kb O NA NB I m) (h1 : nm y ≠ nm "out") (h2 : nm y ≠ nm "na") (h3 : nm y ≠ nm "nb")
    (h4 : nm y ≠ nm "i") (h5 : nm y ≠ nm "o") (h6 : nm y ≠ nm "carry") :
    Kb O NA NB I (m.update (nm y, v)) :=
  ⟨h.1.upd h1 h2 h3, h.2.1.upd h4, h.2.2.1, h.2.2.2.1.upd h5,
    h.2.2.2.2.choose, h.2.2.2.2.choose_spec.upd h6⟩

theorem Kb.upC {O NA NB I : BitVec 64} {m : Locals} (h : Kb O NA NB I m) (w : BitVec 64) :
    Kb O NA NB I (m.update (nm "carry", .val (.word w))) :=
  ⟨h.1.upd (by decide) (by decide) (by decide), h.2.1.upd (by decide), h.2.2.1,
    h.2.2.2.1.upd (by decide), w, LkW.self _ _ _⟩

theorem Kb.res {O NA NB I : BitVec 64} {m : Locals} {y : String} (old : Option (ValueHOL 64))
    (h : Kb O NA NB I m) (h1 : nm y ≠ nm "out") (h2 : nm y ≠ nm "na") (h3 : nm y ≠ nm "nb")
    (h4 : nm y ≠ nm "i") (h5 : nm y ≠ nm "o") (h6 : nm y ≠ nm "carry") :
    Kb O NA NB I (m.resVarEq (nm y, old)) :=
  ⟨h.1.res old h1 h2 h3, h.2.1.res old h4, h.2.2.1, h.2.2.2.1.res old h5,
    h.2.2.2.2.choose, h.2.2.2.2.choose_spec.res old h6⟩

theorem toNat_Bo {O NA NB I : BitVec 64} (hp : MP O NA NB) (hI : I.toNat < NA.toNat) :
    (O + I * BitVec.ofNat 64 8).toNat = O.toNat + 8 * I.toNat := by
  have := hp.hO
  exact toNat_ix8 (by omega)

/-- The inner loop. -/
theorem hoareG_mulIn (hA : AlignedDom X) {O NA NB I : BitVec 64} {s0 : State σ}
    (hp : MP O NA NB) (hI : I.toNat < NA.toNat) :
    HoareG σ X (LPre (RfM O NA) s0 (Kj O NA NB I)) mulIn
      (LN (RfM O NA) s0 (Kj O NA NB I)) := by
  have h32 := hp.small
  have hle := hp.hle
  have hOO := hp.hO
  have hBo := toNat_Bo hp hI
  refine hoareG_whileNN (J := Kj O NA NB I) ?_
  refine hoareG_pre (P := LPre (RfM O NA) s0 (Kjs O NA NB I)) ?_ ?_
  · refine hoareG_decJ (K := Kjs O NA NB I) (K' := Kj O NA NB I) ?_ ?_ ?_
    · intro s _ ⟨hK, Jv, hj, hJ⟩ v _
      exact ⟨hK.upd (by decide) (by decide) (by decide) (by decide) (by decide) (by decide), Jv,
        hj.upd (by decide), hJ⟩
    · intro m' old ⟨hK, Jv, hj, hJ⟩
      exact ⟨hK.res old (by decide) (by decide) (by decide) (by decide) (by decide) (by decide), Jv,
        hj.res old (by decide), hJ⟩
    · refine hoareG_seqN (L2 := Kjs O NA NB I) ?_ (hoareG_seqN (L2 := Kjs O NA NB I) ?_ ?_)
      · refine hoareG_stIxN hA (b := "o") (ie := lv (nm "j")) (e := mulStE)
          (B := O + I * BitVec.ofNat 64 8) (nb := 16 * NA.toNat - 8 * I.toNat)
          (fun m hm => hm.1.2.2.2.1) ?_ (by rw [hBo]; omega)
          (fun a h => by unfold RfM Overlap at *; rw [hBo] at h; omega) (oneWordL_op _ _)
        · intro t ht x hx
          obtain ⟨⟨-, -, hIlt, -⟩, Jv, hj, hJ⟩ := ht
          rw [ev_lw hj] at hx
          cases hx
          omega
      · refine hoareG_assignN fun s _ hJ v hv => ?_
        obtain ⟨hK, Jv, hj, hJ⟩ := hJ
        obtain ⟨w, rfl⟩ := ev_shift_word hv
        exact ⟨hK.upC w, Jv, hj.upd (by decide), hJ⟩
      · refine hoareG_assignN fun s _ hJ v hv => ?_
        obtain ⟨hK, Jv, hj, hJ⟩ := hJ
        rw [ev_inc hj] at hv
        cases hv
        refine ⟨hK.upd (by decide) (by decide) (by decide) (by decide) (by decide) (by decide),
          _, LkW.self _ _ _, ?_⟩
        rw [toNat_inc (by omega)]
        omega
  · intro t _ ⟨⟨⟨hK, Jv, hj, hJ⟩, hbw⟩, hc⟩
    have := ltN_true hK.1.2.2 hj hc
    exact ⟨⟨hK, Jv, hj, this⟩, hbw⟩

theorem hoareG_exL {α : Type} {Rf : BitVec 64 → Prop} {s0 : State σ} {L : α → Locals → Prop}
    {p : ProgHOL 64} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (h : ∀ a, HoareG σ X (LPre Rf s0 (L a)) p Q) :
    HoareG σ X (LPre Rf s0 (fun m => ∃ a, L a m)) p Q :=
  fun t hs ⟨⟨a, hL⟩, hbw⟩ hg => h a t hs ⟨hL, hbw⟩ hg

def J2s (O NA NB : BitVec 64) (m : Locals) : Prop :=
  MFix O NA NB m ∧ ∃ I : BitVec 64, LkW m "i" I ∧ I.toNat < NA.toNat

theorem J2.res {O NA NB : BitVec 64} {m : Locals} {y : String} (old : Option (ValueHOL 64))
    (h : J2 O NA NB m) (h1 : nm y ≠ nm "out") (h2 : nm y ≠ nm "na") (h3 : nm y ≠ nm "nb")
    (h4 : nm y ≠ nm "i") : J2 O NA NB (m.resVarEq (nm y, old)) :=
  ⟨h.1.res old h1 h2 h3, h.2.choose, h.2.choose_spec.1.res old h4, h.2.choose_spec.2⟩

theorem J2s.upd {O NA NB : BitVec 64} {m : Locals} {y : String} {v : ValueHOL 64}
    (h : J2s O NA NB m) (h1 : nm y ≠ nm "out") (h2 : nm y ≠ nm "na") (h3 : nm y ≠ nm "nb")
    (h4 : nm y ≠ nm "i") : J2s O NA NB (m.update (nm y, v)) :=
  ⟨h.1.upd h1 h2 h3, h.2.choose, h.2.choose_spec.1.upd h4, h.2.choose_spec.2⟩

/-- After the declarations: the inner loop, the carry store, `i += 1`. -/
theorem hoareG_mulRest (hA : AlignedDom X) {O NA NB I : BitVec 64} {s0 : State σ}
    (hp : MP O NA NB) (hI : I.toNat < NA.toNat) :
    HoareG σ X (LPre (RfM O NA) s0 (Kj O NA NB I))
      (.seq mulIn (.seq (.store (ixA "o" (lv (nm "nb"))) (lv (nm "carry"))) (mAdd1 "i")))
      (LN (RfM O NA) s0 (J2 O NA NB)) := by
  have h32 := hp.small
  have hle := hp.hle
  have hOO := hp.hO
  have hBo := toNat_Bo hp hI
  refine hoareG_seqN (L2 := Kj O NA NB I) (hoareG_mulIn hA hp hI) (hoareG_seqN (L2 := Kj O NA NB I) ?_ ?_)
  · refine hoareG_stIxN hA (b := "o") (ie := lv (nm "nb")) (e := lv (nm "carry"))
      (B := O + I * BitVec.ofNat 64 8) (nb := 16 * NA.toNat - 8 * I.toNat)
      (fun m hm => hm.1.2.2.2.1) ?_ (by rw [hBo]; omega)
      (fun a h => by unfold RfM Overlap at *; rw [hBo] at h; omega) ?_
    · intro t ht x hx
      obtain ⟨⟨hF, -, hIlt, -⟩, Jv, hj, hJ⟩ := ht
      rw [ev_lw hF.2.2] at hx
      cases hx
      omega
    · exact oneWordL_lv fun m hm => hm.1.2.2.2.2
  · refine hoareG_assignN fun s _ hJ v hv => ?_
    obtain ⟨⟨hF, hi, hIlt, ho, hc⟩, Jv, hj, hJ⟩ := hJ
    rw [ev_inc hi] at hv
    cases hv
    refine ⟨hF.upd (by decide) (by decide) (by decide), _, LkW.self _ _ _, ?_⟩
    rw [toNat_inc (by omega)]
    omega

theorem hoareG_exLP {α : Type} {R : α → Prop} {Rf : BitVec 64 → Prop} {s0 : State σ}
    {L : α → Locals → Prop} {p : ProgHOL 64}
    {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (hR : ∀ a m, L a m → R a) (h : ∀ a, R a → HoareG σ X (LPre Rf s0 (L a)) p Q) :
    HoareG σ X (LPre Rf s0 (fun m => ∃ a, L a m)) p Q :=
  fun t hs ⟨⟨a, hL⟩, hbw⟩ hg => h a (hR a _ hL) t hs ⟨hL, hbw⟩ hg

/-- After `carry`. -/
def J2c (O NA NB : BitVec 64) (m : Locals) : Prop :=
  J2s O NA NB m ∧ ∃ c : BitVec 64, LkW m "carry" c

/-- After `j = 0`. -/
def J2j (O NA NB : BitVec 64) (m : Locals) : Prop :=
  J2c O NA NB m ∧ LkW m "j" (BitVec.ofNat 64 0)

/-- **The outer-loop body.** -/
theorem hoareG_mulOutB (hA : AlignedDom X) {O NA NB : BitVec 64} {s0 : State σ}
    (hp : MP O NA NB) :
    HoareG σ X (LPre (RfM O NA) s0 (J2s O NA NB)) mulOutB (LN (RfM O NA) s0 (J2 O NA NB)) := by
  unfold mulOutB
  have hout : ∀ (y : String), nm y ≠ nm "out" → nm y ≠ nm "na" → nm y ≠ nm "nb" →
      nm y ≠ nm "i" → ∀ (m' : Locals) old, J2 O NA NB m' → J2 O NA NB (m'.resVarEq (nm y, old)) :=
    fun y h1 h2 h3 h4 m' old h => J2.res old h h1 h2 h3 h4
  refine hoareG_decJ (K := J2s O NA NB) (K' := J2 O NA NB) ?_
    (hout "ai" (by decide) (by decide) (by decide) (by decide)) ?_
  · intro s _ hJ v _
    exact hJ.upd (by decide) (by decide) (by decide) (by decide)
  refine hoareG_decJ (K := J2c O NA NB) (K' := J2 O NA NB) ?_
    (hout "carry" (by decide) (by decide) (by decide) (by decide)) ?_
  · intro s _ hJ v hv
    rw [ev_cw] at hv
    cases hv
    exact ⟨hJ.upd (by decide) (by decide) (by decide) (by decide), _, LkW.self _ _ _⟩
  refine hoareG_decJ (K := J2j O NA NB) (K' := J2 O NA NB) ?_
    (hout "j" (by decide) (by decide) (by decide) (by decide)) ?_
  · intro s _ hJ v hv
    rw [ev_cw] at hv
    cases hv
    obtain ⟨hJ, c, hc⟩ := hJ
    exact ⟨⟨hJ.upd (by decide) (by decide) (by decide) (by decide), c, hc.upd (by decide)⟩,
      LkW.self _ _ _⟩
  refine hoareG_decJ (K := fun m => ∃ I, Kj O NA NB I m) (K' := J2 O NA NB) ?_
    (hout "o" (by decide) (by decide) (by decide) (by decide)) ?_
  · intro s _ hJ v hv
    obtain ⟨⟨⟨hF, I, hi, hI⟩, c, hc⟩, hj⟩ := hJ
    rw [ev_ixA_lv hF.1 hi] at hv
    cases hv
    exact ⟨I, ⟨⟨hF.upd (by decide) (by decide) (by decide), hi.upd (by decide), hI,
      LkW.self _ _ _, c, hc.upd (by decide)⟩, _, hj.upd (by decide), by simp⟩⟩
  refine hoareG_exLP (R := fun I => I.toNat < NA.toNat) (fun I m hm => hm.1.2.2.1) ?_
  intro I hI
  exact hoareG_mulRest hA hp hI

theorem hoareG_mulOut (hA : AlignedDom X) {O NA NB : BitVec 64} {s0 : State σ}
    (hp : MP O NA NB) :
    HoareG σ X (LPre (RfM O NA) s0 (J2 O NA NB)) mulOut (LN (RfM O NA) s0 (J2 O NA NB)) := by
  refine hoareG_whileNN (J := J2 O NA NB) ?_
  refine hoareG_pre (P := LPre (RfM O NA) s0 (J2s O NA NB)) (hoareG_mulOutB hA hp) ?_
  intro t _ ⟨⟨⟨hF, I, hi, hI⟩, hbw⟩, hc⟩
  exact ⟨⟨hF, I, hi, ltN_true hF.2.1 hi hc⟩, hbw⟩

/-- **`bn_mul` body**: globals kept, memory changed only in `RfM O NA`. -/
theorem hoareG_mulBody (hA : AlignedDom X) {O NA NB : BitVec 64} {s0 : State σ}
    (hF : MFix O NA NB s0.locals) (hp : MP O NA NB) :
    HoareG σ X (fun t => t = s0) mulBody (fun _ t => BWPost (RfM O NA) s0 t) := by
  have hb : HoareG σ X (LPre (RfM O NA) s0 (MFix O NA NB)) mulBody
      (LQ (RfM O NA) s0 (fun _ => True) (fun _ => True)) := by
    unfold mulBody
    refine hoareG_decJQ (K := J1 O NA NB) (K' := fun _ => True) ?_ (fun _ _ _ => trivial) ?_
    · intro s _ hJ v hv
      rw [ev_cw] at hv
      cases hv
      exact ⟨hJ.upd (by decide) (by decide) (by decide), _, LkW.self _ _ _, by simp⟩
    · refine hoareG_seqL (L2 := J1 O NA NB) (hoareG_NQ (hoareG_mulL1 hA hp))
        (hoareG_seqL (L2 := J2 O NA NB) ?_
          (hoareG_seqL (L2 := J2 O NA NB) (hoareG_NQ (hoareG_mulOut hA hp)) hoareG_returnL))
      refine hoareG_assignL fun s _ hJ v hv => ?_
      rw [ev_cw] at hv
      cases hv
      obtain ⟨hF, I, hi, hI⟩ := hJ
      exact ⟨hF.upd (by decide) (by decide) (by decide), _, LkW.self _ _ _, by simp⟩
  refine hoareG_conseq hb (fun t _ ht => ?_) (fun r t _ _ hq => hq.1)
  subst ht
  exact ⟨hF, rfl, fun _ _ => rfl⟩

end InitECandidate.Solver.MemSafe.Bn2