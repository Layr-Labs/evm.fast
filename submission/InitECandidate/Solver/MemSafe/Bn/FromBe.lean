import InitECandidate.Solver.MemSafe.Bn.ToBe
import InitECandidate.Solver.MemSafe.Fold

set_option autoImplicit false

/-!
# `bn_from_be`: the summary

`bn_from_be(p, nbytes, d)` zeroes `d[0..nd)` (`nd = (nbytes + 3) >>> 2` words) and ORs the bytes of
`p[0..nbytes)` into those words (`st w, (lds 1 w) | ...`, `w = d + (k >>> 2) * 8`, `k < nbytes`),
then returns `nd`. Every store hits a word `d + 8 j` with `j < nd`, and `8 * nd ≤ 2 * nbytes + 6`.

The signature is `bnFromBeSig = ⟨[any, any, bufArg 1 2 6], [], [], false⟩`: **`d` has
`2 * nbytes + 6` writable bytes**, an upper bound of the `8 * nd` bytes used, with no further
precondition (`ArgsOK` gives it). The caller `modexp` allocates `8 * ((mlen + 3) >>> 2) + 8` bytes,
which is `≥ 2 * mlen + 6`. `bufOK_bound` gives `d + 2 * nbytes + 6 ≤ scratchEnd`, so `nbytes < 2^62`
and neither `nbytes + 3` nor the cell addresses wrap.

* `foot_bn_from_be`: `FootSpec … FbPre FbR`.
* **`sumSpec_bn_from_be`**: `SumSpecA … bnFromBeSig (True) (PW := False) (Q := True)`.
-/

set_option maxRecDepth 100000
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Bn
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers

variable {σ : Type} {X : Ctx 64}

/-! ## Arithmetic -/

theorem toNat_addMul8 {D I : BitVec 64} (h : D.toNat + 8 * I.toNat < 2 ^ 64) :
    (D + I * BitVec.ofNat 64 8).toNat = D.toNat + 8 * I.toNat := by
  rw [BitVec.toNat_add, BitVec.toNat_mul, BitVec.toNat_ofNat]
  have h8 : 8 % 2 ^ 64 = 8 := rfl
  rw [h8, Nat.mod_eq_of_lt (by omega : I.toNat * 8 < 2 ^ 64), Nat.mod_eq_of_lt (by omega)]
  omega

theorem toNat_inc {I : BitVec 64} (h : I.toNat + 1 < 2 ^ 64) :
    (I + BitVec.ofNat 64 1).toNat = I.toNat + 1 := by
  rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := 1) (by omega),
    Nat.mod_eq_of_lt (by omega)]

theorem toNat_subsub {N I : BitVec 64} (h : I.toNat + 1 ≤ N.toNat) :
    (N - BitVec.ofNat 64 1 - I).toNat = N.toNat - 1 - I.toNat := by
  have h1 : (BitVec.ofNat 64 1).toNat = 1 := rfl
  have e1 : (N - BitVec.ofNat 64 1).toNat = N.toNat - 1 :=
    BitVec.toNat_sub_of_le (BitVec.le_def.mpr (by omega)) |>.trans (by rw [h1])
  rw [BitVec.toNat_sub_of_le (BitVec.le_def.mpr (by omega)), e1]

theorem toNat_lsr2 (K : BitVec 64) : (K >>> (2 : Nat)).toNat = K.toNat / 4 := by
  rw [BitVec.toNat_ushiftRight, Nat.shiftRight_eq_div_pow]

theorem ev_lsr2 {s : State σ} {k : MlS} {K : BitVec 64}
    (hk : s.locals.lookup k = some (.val (.word K))) :
    ev s (.shift .lsr (lv k) (cw 2)) = some (.val (.word (K >>> (2 : Nat)))) := by
  rw [ev_shift (ev_lw hk) (ev_cw _ 2)]
  have h3 : (BitVec.ofNat 64 2).toNat = 2 := rfl
  rw [h3]
  simp only [Flapjack.wordShiftHOL]
  rw [if_neg (by omega)]
  rfl

theorem guard_lt2 {a b : MlS} {t : State σ} {A B' : BitVec 64}
    (ha : t.locals.lookup a = some (.val (.word A))) (hb : t.locals.lookup b = some (.val (.word B')))
    (hc : CondTrue t (ltN a b)) : A.toNat < B'.toNat := by
  obtain ⟨w, hw, hw0⟩ := hc
  obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
  rw [ev_lw ha] at hx
  cases hx
  rw [ev_lw hb] at hy
  cases hy
  exact lower_true hxy

/-! ## The loop state -/

/-- Locals `d`, `nbytes`, `nd` fixed, globals kept, memory changed only in the `2 * N + 6` bytes
at `D`. -/
def Fb0 (D N ND : BitVec 64) (s0 t : State σ) : Prop :=
  t.locals.lookup dN' = some (.val (.word D)) ∧ t.locals.lookup nbN = some (.val (.word N)) ∧
    t.locals.lookup ndN = some (.val (.word ND)) ∧ t.globals = s0.globals ∧
    ModifiesOnly (Overlap D.toNat (2 * N.toNat + 6)) s0.memory t.memory

def FbP (D N ND : BitVec 64) (s0 : State σ) (B : Nat) (I : BitVec 64) (t : State σ) : Prop :=
  Fb0 D N ND s0 t ∧ t.locals.lookup iN' = some (.val (.word I)) ∧ I.toNat + 1 ≤ B

def FbQ (D N ND : BitVec 64) (s0 : State σ) (B : Nat) (r : Option (PanSemResultExact 64))
    (t : State σ) : Prop :=
  r = none ∧ Fb0 D N ND s0 t ∧ ∃ I' : BitVec 64, t.locals.lookup iN' = some (.val (.word I')) ∧
    I'.toNat ≤ B

theorem fb0_set {D N ND : BitVec 64} {s0 t : State σ} {x : MlS} (h1 : x ≠ dN') (h2 : x ≠ nbN)
    (h3 : x ≠ ndN) (v : ValueHOL 64) (h : Fb0 D N ND s0 t) :
    Fb0 D N ND s0 (setVarHOLFinite x v t) := by
  obtain ⟨a, b, c, g, m⟩ := h
  exact ⟨by rw [lk_set_ne _ _ h1]; exact a, by rw [lk_set_ne _ _ h2]; exact b,
    by rw [lk_set_ne _ _ h3]; exact c, g, m⟩

theorem fb0_res {D N ND : BitVec 64} {s0 t : State σ} {x : MlS} (h1 : x ≠ dN') (h2 : x ≠ nbN)
    (h3 : x ≠ ndN) (old : Option (ValueHOL 64)) (h : Fb0 D N ND s0 t) :
    Fb0 D N ND s0 { t with locals := t.locals.resVarEq (x, old) } := by
  obtain ⟨a, b, c, g, m⟩ := h
  exact ⟨by rw [lookup_resVarEq_ne _ _ h1]; exact a, by rw [lookup_resVarEq_ne _ _ h2]; exact b,
    by rw [lookup_resVarEq_ne _ _ h3]; exact c, g, m⟩

theorem fbp_set {D N ND : BitVec 64} {s0 : State σ} {B : Nat} {I : BitVec 64} {t : State σ}
    {x : MlS} (h1 : x ≠ dN') (h2 : x ≠ nbN) (h3 : x ≠ ndN) (h4 : x ≠ iN') (v : ValueHOL 64)
    (h : FbP D N ND s0 B I t) : FbP D N ND s0 B I (setVarHOLFinite x v t) :=
  ⟨fb0_set h1 h2 h3 v h.1, by rw [lk_set_ne _ _ h4]; exact h.2.1, h.2.2⟩

theorem fbq_res {D N ND : BitVec 64} {s0 : State σ} {B : Nat} {r : Option (PanSemResultExact 64)}
    {t : State σ} {x : MlS} (h1 : x ≠ dN') (h2 : x ≠ nbN) (h3 : x ≠ ndN) (h4 : x ≠ iN')
    (old : Option (ValueHOL 64)) (h : FbQ D N ND s0 B r t) :
    FbQ D N ND s0 B r { t with locals := t.locals.resVarEq (x, old) } := by
  obtain ⟨hr, h0, I', hI, hB⟩ := h
  exact ⟨hr, fb0_res h1 h2 h3 old h0, I', by rw [lookup_resVarEq_ne _ _ h4]; exact hI, hB⟩

/-! ## `i = i + 1` -/

theorem hoareG_fbInc {D N ND : BitVec 64} {s0 : State σ} {B : Nat} {I : BitVec 64}
    (hB : B < 2 ^ 63) :
    HoareG σ X (FbP D N ND s0 B I) (incI iN' 1) (FbQ D N ND s0 B) := by
  refine hoareG_assign fun t _ ⟨h0, hi, hK⟩ v hv _ => ?_
  rw [ev_add2 (ev_lw hi) (ev_cw _ _)] at hv
  cases hv
  obtain ⟨a, b, c, g, m⟩ := h0
  refine ⟨rfl, ⟨?_, ?_, ?_, g, m⟩, _, lk_set_self _ _ _, ?_⟩
  · rw [lk_set_ne _ _ (by decide)]; exact a
  · rw [lk_set_ne _ _ (by decide)]; exact b
  · rw [lk_set_ne _ _ (by decide)]; exact c
  · rw [toNat_inc (by omega)]
    omega

/-! ## The zeroing loop -/

theorem hoareG_fbZeroStore (hA : AlignedDom X) {D N ND I : BitVec 64} {s0 : State σ}
    (hND : ND.toNat = (N.toNat + 3) / 4) (hDN : D.toNat + (2 * N.toNat + 6) < 2 ^ 63) :
    HoareG σ X (FbP D N ND s0 ND.toNat I)
      (.store (.op .add [lv dN', .panop .mul [lv iN', cw 8]]) (cw 0))
      (fun r t => r = none ∧ FbP D N ND s0 ND.toNat I t) := by
  refine hoareG_store fun t hs ⟨⟨hd, hn, hnd, hg, hmem⟩, hi, hK⟩ w v mem ha hv hst => ?_
  rw [ev_add2 (ev_lw hd) (ev_mul2 (ev_lw hi) (ev_cw _ _))] at ha
  cases ha
  obtain ⟨x, hx⟩ := oneWord_cw (σ := σ) 0 t v hv
  rw [hx] at hst
  obtain ⟨hm, hdom⟩ := store1_mod hst
  have hal := hA _ (hs.2.1 ▸ hdom)
  have hw := toNat_addMul8 (D := D) (I := I) (by omega)
  have h1 : D.toNat ≤ (D + I * BitVec.ofNat 64 8).toNat := by omega
  have h2 : (D + I * BitVec.ofNat 64 8).toNat < D.toNat + (2 * N.toNat + 6) := by omega
  exact ⟨rfl, ⟨hd, hn, hnd, hg, hmem.trans (hm.mono fun a ha' => ha' ▸ overlap_word hal h1 h2)⟩,
    hi, hK⟩

theorem hoareG_fbZeroLoop (hA : AlignedDom X) {D N ND : BitVec 64} {s0 : State σ}
    (hND : ND.toNat = (N.toNat + 3) / 4) (hDN : D.toNat + (2 * N.toNat + 6) < 2 ^ 63) :
    HoareG σ X (fun t => Fb0 D N ND s0 t ∧ ∃ I : BitVec 64,
        t.locals.lookup iN' = some (.val (.word I)) ∧ I.toNat ≤ ND.toNat)
      (.while (ltN iN' ndN) fbZeroIter)
      (fun r t => r = none ∧ Fb0 D N ND s0 t ∧ ∃ I : BitVec 64,
        t.locals.lookup iN' = some (.val (.word I)) ∧ I.toNat ≤ ND.toNat) := by
  refine hoareG_while (fun t h => h) ?_ (fun t _ h _ => ⟨rfl, h⟩)
  intro t hs ⟨⟨h0, I, hi, hIK⟩, hc⟩ hgood
  have hlt := guard_lt2 hi h0.2.2.1 hc
  have hP : FbP D N ND s0 ND.toNat I t := ⟨h0, hi, by omega⟩
  unfold fbZeroIter
  have H := hoareG_seq (R := fun r t => r = none ∧ FbP D N ND s0 ND.toNat I t)
    (hoareG_fbZeroStore hA hND hDN) (fun _ _ _ hr _ h => absurd h.1 hr)
    (hoareG_pre (hoareG_fbInc (by omega)) fun _ _ h => h.2) t hs hP hgood
  obtain ⟨hr, h0', hI'⟩ := H
  rw [hr]
  exact ⟨fun _ => ⟨h0', hI'⟩, (fun h => nomatch h), (fun h => nomatch h), (fun r' h => nomatch h)⟩

/-! ## The OR loop -/

theorem oneWord_fbVal : OneWord (σ := σ) fbValE := by
  intro t v hv
  obtain ⟨x, rfl⟩ := ev_wordy (e := fbValE) rfl hv
  exact ⟨_, by rw [flattenHOL]⟩

theorem hoareG_fbOrStore (hA : AlignedDom X) {D N ND I : BitVec 64} {s0 : State σ} :
    HoareG σ X (fun t => FbP D N ND s0 N.toNat I t ∧ ∃ W : BitVec 64,
        t.locals.lookup wN = some (.val (.word W)) ∧ D.toNat ≤ W.toNat ∧
        W.toNat < D.toNat + (2 * N.toNat + 6))
      (.store (lv wN) fbValE) (fun r t => r = none ∧ FbP D N ND s0 N.toNat I t) := by
  refine hoareG_store fun t hs ⟨⟨⟨hd, hn, hnd, hg, hmem⟩, hi, hK⟩, W, hW, h1, h2⟩ w v mem ha hv hst => ?_
  rw [ev_lw hW] at ha
  cases ha
  obtain ⟨x, hx⟩ := oneWord_fbVal t v hv
  rw [hx] at hst
  obtain ⟨hm, hdom⟩ := store1_mod hst
  have hal := hA _ (hs.2.1 ▸ hdom)
  exact ⟨rfl, ⟨hd, hn, hnd, hg, hmem.trans (hm.mono fun a ha' => ha' ▸ overlap_word hal h1 h2)⟩,
    hi, hK⟩

theorem hoareG_fbOrIter (hA : AlignedDom X) {D N ND I : BitVec 64} {s0 : State σ}
    (hDN : D.toNat + (2 * N.toNat + 6) < 2 ^ 63) :
    HoareG σ X (FbP D N ND s0 N.toNat I) fbOrIter (FbQ D N ND s0 N.toNat) := by
  have hN : N.toNat < 2 ^ 62 := by omega
  unfold fbOrIter
  refine hoareG_decK (P' := fun t => FbP D N ND s0 N.toNat I t ∧ ∃ K : BitVec 64,
      t.locals.lookup kN = some (.val (.word K)) ∧ K.toNat = N.toNat - 1 - I.toNat)
    (fun s _ h v hv => ?_) (fun r t old h => fbq_res (by decide) (by decide) (by decide)
      (by decide) old h) ?_
  · obtain ⟨⟨hd, hn, hnd, hg, hmem⟩, hi, hK⟩ := h
    rw [ev_sub2 (ev_sub2 (ev_lw hn) (ev_cw _ 1)) (ev_lw hi)] at hv
    cases hv
    exact ⟨fbp_set (by decide) (by decide) (by decide) (by decide) _ ⟨⟨hd, hn, hnd, hg, hmem⟩, hi, hK⟩,
      _, lk_set_self _ _ _, toNat_subsub hK⟩
  refine hoareG_decK (P' := fun t => FbP D N ND s0 N.toNat I t ∧ ∃ W : BitVec 64,
      t.locals.lookup wN = some (.val (.word W)) ∧ D.toNat ≤ W.toNat ∧
      W.toNat < D.toNat + (2 * N.toNat + 6))
    (fun s _ ⟨h, K, hk, hKv⟩ v hv => ?_) (fun r t old h => fbq_res (by decide) (by decide)
      (by decide) (by decide) old h) ?_
  · obtain ⟨⟨hd, hn, hnd, hg, hmem⟩, hi, hK⟩ := h
    have e : ev s fbWE = some (.val (.word (D + (K >>> (2 : Nat)) * BitVec.ofNat 64 8))) :=
      ev_add2 (ev_lw hd) (ev_mul2 (ev_lsr2 hk) (ev_cw _ 8))
    rw [e] at hv
    cases hv
    have hw := toNat_addMul8 (D := D) (I := K >>> (2 : Nat)) (by rw [toNat_lsr2]; omega)
    rw [toNat_lsr2] at hw
    exact ⟨fbp_set (by decide) (by decide) (by decide) (by decide) _ ⟨⟨hd, hn, hnd, hg, hmem⟩, hi, hK⟩,
      _, lk_set_self _ _ _, by omega, by omega⟩
  refine hoareG_seq (R := fun r t => r = none ∧ FbP D N ND s0 N.toNat I t)
    (hoareG_fbOrStore hA) (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  exact hoareG_pre (hoareG_fbInc (by omega)) fun _ _ h => h.2

theorem hoareG_fbOrLoop (hA : AlignedDom X) {D N ND : BitVec 64} {s0 : State σ}
    (hDN : D.toNat + (2 * N.toNat + 6) < 2 ^ 63) :
    HoareG σ X (fun t => Fb0 D N ND s0 t ∧ ∃ I : BitVec 64,
        t.locals.lookup iN' = some (.val (.word I)) ∧ I.toNat ≤ N.toNat)
      (.while (ltN iN' nbN) fbOrIter)
      (fun r t => r = none ∧ Fb0 D N ND s0 t ∧ ∃ I : BitVec 64,
        t.locals.lookup iN' = some (.val (.word I)) ∧ I.toNat ≤ N.toNat) := by
  refine hoareG_while (fun t h => h) ?_ (fun t _ h _ => ⟨rfl, h⟩)
  intro t hs ⟨⟨h0, I, hi, hIK⟩, hc⟩ hgood
  have hlt := guard_lt2 hi h0.2.1 hc
  have hP : FbP D N ND s0 N.toNat I t := ⟨h0, hi, by omega⟩
  obtain ⟨hr, h0', hI'⟩ := hoareG_fbOrIter hA hDN t hs hP hgood
  rw [hr]
  exact ⟨fun _ => ⟨h0', hI'⟩, (fun h => nomatch h), (fun h => nomatch h), (fun r' h => nomatch h)⟩

/-! ## The body after `nd` -/

theorem hoareG_fbInner (hA : AlignedDom X) {D N ND : BitVec 64} {s0 : State σ}
    (hND : ND.toNat = (N.toNat + 3) / 4) (hDN : D.toNat + (2 * N.toNat + 6) < 2 ^ 63) :
    HoareG σ X (Fb0 D N ND s0)
      (.dec iN' .one (cw 0)
        (.seq (.while (ltN iN' ndN) fbZeroIter)
          (.seq (.assign .local iN' (cw 0))
            (.seq (.while (ltN iN' nbN) fbOrIter) (.return (lv ndN))))))
      (fun _ t => BWPost (Overlap D.toNat (2 * N.toNat + 6)) s0 t) := by
  refine hoareG_dec fun s _ hs v hv _ => ?_
  rw [ev_cw] at hv
  cases hv
  have hpost : ∀ (t : State σ), BWPost (Overlap D.toNat (2 * N.toNat + 6)) s0 t →
      BWPost (Overlap D.toNat (2 * N.toNat + 6)) s0
        { t with locals := t.locals.resVarEq (iN', s.locals.lookup iN') } := fun _ h => h
  refine hoareG_conseq (P := fun t => Fb0 D N ND s0 t ∧ ∃ I : BitVec 64,
      t.locals.lookup iN' = some (.val (.word I)) ∧ I.toNat ≤ ND.toNat)
    (Q := fun _ t => BWPost (Overlap D.toNat (2 * N.toNat + 6)) s0 t) ?_ ?_
    fun _ t _ _ h => hpost t h
  · refine hoareG_seq (R := fun r t => r = none ∧ Fb0 D N ND s0 t ∧ ∃ I : BitVec 64,
        t.locals.lookup iN' = some (.val (.word I)) ∧ I.toNat ≤ ND.toNat)
      (hoareG_fbZeroLoop hA hND hDN) (fun _ _ _ hr _ h => absurd h.1 hr) ?_
    refine hoareG_seq (R := fun r t => r = none ∧ Fb0 D N ND s0 t ∧ ∃ I : BitVec 64,
        t.locals.lookup iN' = some (.val (.word I)) ∧ I.toNat ≤ N.toNat) ?_
      (fun _ _ _ hr _ h => absurd h.1 hr) ?_
    · refine hoareG_assign fun t _ ⟨_, h0, _⟩ v hv _ => ?_
      rw [ev_cw] at hv
      cases hv
      exact ⟨rfl, fb0_set (by decide) (by decide) (by decide) _ h0, _, lk_set_self _ _ _,
        by simp⟩
    · refine hoareG_seq (R := fun r t => r = none ∧ Fb0 D N ND s0 t ∧ ∃ I : BitVec 64,
          t.locals.lookup iN' = some (.val (.word I)) ∧ I.toNat ≤ N.toNat)
        (hoareG_pre (hoareG_fbOrLoop hA hDN) fun _ _ h => h.2)
        (fun _ _ _ hr _ h => absurd h.1 hr) ?_
      exact hoareG_return fun t _ h _ _ => ⟨h.2.1.2.2.2.1, h.2.1.2.2.2.2⟩
  · intro t _ ht
    subst ht
    exact ⟨fb0_set (by decide) (by decide) (by decide) _ hs, _, lk_set_self _ _ _, by simp⟩

/-! ## Footprint and summary -/

/-- `d` has `2 * nbytes + 6` bytes below `scratchEnd`. -/
def FbPre (vs : List (ValueHOL 64)) : Prop :=
  ∃ D N : BitVec 64, argW vs 2 = some D ∧ argW vs 1 = some N ∧
    D.toNat + (2 * N.toNat + 6) ≤ scratchEnd

/-- The cells of `d[0 .. 2 * nbytes + 6)`. -/
def FbR (vs : List (ValueHOL 64)) (a : BitVec 64) : Prop :=
  ∃ D N : BitVec 64, argW vs 2 = some D ∧ argW vs 1 = some N ∧
    Overlap D.toNat (2 * N.toNat + 6) a

theorem fbPre_of_args {C : Cfg} {Γ : Gam} {p : Ptrs} {ps : List PT} {vs : List (ValueHOL 64)}
    (hps : ps[2]? = some (.bufArg 1 2 6)) (hord : p.Ordered) (hL : Layout C p Γ)
    (hA : ArgsOK C Γ p ps vs) : FbPre vs := by
  have hlen : 2 < vs.length := by
    rw [← hA.1]
    exact (List.getElem?_eq_some_iff.mp hps).1
  obtain ⟨v, hv⟩ : ∃ v, vs[2]? = some v := ⟨_, List.getElem?_eq_getElem hlen⟩
  obtain ⟨w, x, hw, hx, hb⟩ := hA.2 2 _ v hps hv
  refine ⟨w, x, by rw [argW, hv]; exact hw, hx, ?_⟩
  rcases Helpers.bufOK_bound hord hL w.isLt hb with h | h
  · omega
  · omega

/-- **`bn_from_be` footprint**: `d[0 .. 2 * nbytes + 6)`. -/
theorem foot_bn_from_be (hC : X.code.lookup = guestCode) (hA : AlignedDom X) :
    FootSpec σ X (nm "bn_from_be") FbPre FbR := by
  refine footSpec_of_hoareG fun vs body callee rs hl s0 _ hloc hP => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, Av, Bv, Cv, rfl, hA', hB', hC', hla, hlb, hlc⟩ :=
    lookupCode_three code_bn_from_be (by decide) (by decide) (by decide) hl
  obtain ⟨N, rfl⟩ := val_of_shapeEq_one hB'
  obtain ⟨D, rfl⟩ := val_of_shapeEq_one hC'
  obtain ⟨D', N', hD, hN, hb⟩ := hP
  cases hD
  cases hN
  have hs63 : scratchEnd < 2 ^ 63 := by decide
  have hDN : D.toNat + (2 * N.toNat + 6) < 2 ^ 63 := by omega
  have hd : s0.locals.lookup dN' = some (.val (.word D)) := hloc ▸ hlc
  have hn : s0.locals.lookup nbN = some (.val (.word N)) := hloc ▸ hlb
  have hR : ∀ a, Overlap D.toNat (2 * N.toNat + 6) a →
      FbR [Av, .val (.word N), .val (.word D)] a := fun a h => ⟨D, N, rfl, rfl, h⟩
  have hsh : wordShiftHOL .lsr (N + BitVec.ofNat 64 3) (BitVec.ofNat 64 2).toNat =
      some ((N + BitVec.ofNat 64 3) >>> (2 : Nat)) := by
    have h3 : (BitVec.ofNat 64 2).toNat = 2 := rfl
    rw [h3]
    simp only [Flapjack.wordShiftHOL]
    rw [if_neg (by omega)]
  have hND : ((N + BitVec.ofNat 64 3) >>> (2 : Nat)).toNat = (N.toNat + 3) / 4 := by
    rw [toNat_lsr2, BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := 3) (by omega),
      Nat.mod_eq_of_lt (by omega)]
  unfold fromBeBody
  refine hoareG_dec fun s _ hs v hv _ => ?_
  subst s
  rw [ev_shift (ev_add2 (ev_lw hn) (ev_cw _ 3)) (ev_cw _ 2), hsh] at hv
  cases hv
  refine hoareG_conseq (hoareG_fbInner hA hND hDN) (fun t _ ht => ?_)
    (fun r t _ _ h => ⟨h.1, h.2.mono hR⟩)
  subst ht
  exact ⟨by rw [lk_set_ne _ _ (by decide)]; exact hd, by rw [lk_set_ne _ _ (by decide)]; exact hn,
    lk_set_self _ _ _, rfl, fun _ _ => rfl⟩

def bnFromBeSig : Sig := { params := [.any, .any, .bufArg 1 2 6], grows := false }

theorem summ_bn_from_be {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hT : TagSlots C)
    (hC : X.code.lookup = guestCode) (hA : AlignedDom X) :
    Summ σ X C H (nm "bn_from_be") bnFromBeSig :=
  summ_of_foot hH hT rfl (foot_bn_from_be hC hA)
    (fun _ _ _ hord hL hA' => fbPre_of_args rfl hord hL hA')
    (fun vs a _ h => by
      obtain ⟨D, N, hD, hN, hov⟩ := h
      exact ⟨2, D, hD, Or.inr ⟨1, 2, 6, N, rfl, hN, hov⟩⟩)

/-- **`bn_from_be(p, nbytes, d)`**, generic in the hook family: `d` is the buffer
`bufArg 1 2 6` (`2 * nbytes + 6` bytes, `ArgsOK`'s), no extra precondition, no protected writes,
trivial post. -/
theorem sumSpec_bn_from_be {H : Hooks σ} (hF : FoldOK σ X Types.guestC H) :
    SumSpecA σ X Types.guestC H (nm "bn_from_be") bnFromBeSig (fun _ _ _ => True)
      (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True) :=
  summA_of_summ (summ_bn_from_be hF.hH Helpers.tagSlots_guestC hF.hX hF.hal)

end InitECandidate.Solver.MemSafe.Bn

#print axioms InitECandidate.Solver.MemSafe.Bn.sumSpec_bn_from_be
