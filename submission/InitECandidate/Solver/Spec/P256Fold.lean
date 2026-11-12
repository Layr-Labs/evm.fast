import InitECandidate.Solver.Spec.U256AddCarry
import InitECandidate.Solver.SourceCost.P256Fold
import InitECandidate.Solver.SourceCost.CounterLoops

/-!
# Soundness of the p256 carry-fold loop rule (`loopP256F`)

`p256Rule`: for every context `X` with `X.code.lookup = guestCode`, a `while` accepted by
`loopP256F` with body cost `B` costs at most `(2 ^ 64 + 2) * (B + 1)`.

Loop 1 (`while c < 0 { sa = u256_add_carry(r, P); r = sa[0..3]; c = c + sa[4] }`), with
`P > 2 ^ 255` and the signed counter `c`: measure
`2 * (2 ^ 63 - signedKey c) + [r < 2 ^ 256 - P]`. A carry raises `c` by one (the key by one:
first term down by 2, second up by at most 1); without a carry `r + P >= P > 2 ^ 256 - P`,
so the indicator drops from 1 to 0.

Loop 2 (`while 0 < c { ltp = u256_lt(r, P); r = u256_sub(r, P); c = c - ltp }`): measure
`2 * c + [r >= P]`. If `r < P` then `c` drops by one; otherwise `r - P < 2 ^ 256 - P < P`,
so the indicator drops from 1 to 0.
-/

set_option maxRecDepth 100000

namespace InitECandidate.Solver.Spec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost

variable {σ : Type} {X : Ctx 64}

/-! ## The modulus -/

def Pl : List (BitVec 64) :=
  [BitVec.ofNat 64 0xffffffffffffffff, BitVec.ofNat 64 0x00000000ffffffff, BitVec.ofNat 64 0,
    BitVec.ofNat 64 0xffffffff00000001]

def Pn : Nat := wn Pl

theorem Pl_length : Pl.length = 4 := rfl

theorem Pn_gt : 2 ^ 255 < Pn := by decide +kernel

theorem Pn_lt : Pn < 2 ^ 256 := by decide +kernel

def pE : ExpHOL 64 :=
  .rstruct [.const (BitVec.ofNat 64 0xffffffffffffffff), .const (BitVec.ofNat 64 0x00000000ffffffff),
    .const (BitVec.ofNat 64 0), .const (BitVec.ofNat 64 0xffffffff00000001)]

theorem ev_pE (s : PanSemStateFiniteExact 64 σ) : ev s pE = some (wv Pl) :=
  ev_rstruct (evs_cons rfl (evs_cons rfl (evs_cons rfl (evs_cons rfl evs_nil))))

theorem evs_args {s : PanSemStateFiniteExact 64 σ} {r : MlS} {vs : List (ValueHOL 64)}
    (h : evs s [lv r, pE] = some vs) :
    ∃ rv, vs = [rv, wv Pl] ∧ s.locals.lookup r = some rv := by
  obtain ⟨U, vs1, rfl, hU, h1⟩ := evs_cons_inv h
  obtain ⟨V, vs2, rfl, hV, h2⟩ := evs_cons_inv h1
  rw [ev_pE] at hV
  simp only [evs, evalListHOLExact, Option.some.injEq] at h2
  subst h2
  cases hV
  exact ⟨U, rfl, hU⟩

theorem wn_lt4' {ws : List (BitVec 64)} (h : ws.length = 4) : wn ws < 2 ^ 256 := by
  have := wn_lt ws; rw [h] at this; exact this

/-! ## The statements -/

def cnm : MlS := nm "c"
def rnm : MlS := nm "r"
def sanm : MlS := nm "sa"
def ltpnm : MlS := nm "ltp"

def cond1 : ExpHOL 64 := .cmp .less (lv cnm) (cw 0)

def body1 : ProgHOL 64 :=
  .decCall sanm (.comb [.one, .one, .one, .one, .one]) (nm "u256_add_carry") [lv rnm, pE]
    (.seq (.assign .local rnm (.rstruct [.rfield 0 (lv sanm), .rfield 1 (lv sanm),
        .rfield 2 (lv sanm), .rfield 3 (lv sanm)]))
      (.assign .local cnm (.op .add [lv cnm, .rfield 4 (lv sanm)])))

def cond2 : ExpHOL 64 := .cmp .less (cw 0) (lv cnm)

def body2 : ProgHOL 64 :=
  .decCall ltpnm .one (nm "u256_lt") [lv rnm, pE]
    (.seq (callTo rnm (nm "u256_sub") [lv rnm, pE])
      (.assign .local cnm (.op .sub [lv cnm, lv ltpnm])))

/-! ## Loop 2: the Hoare triple -/

theorem body2_hoare (hC : X.code.lookup = guestCode) (rvo : Option (ValueHOL 64)) (cv : BitVec 64) :
    Hoare σ X (fun s => s.locals.lookup rnm = rvo ∧ s.locals.lookup cnm = some (.val (.word cv)))
      body2
      (fun res t => res = none ∧ ∃ rs ds : List (BitVec 64), rvo = some (wv rs) ∧
        rs.length = 4 ∧ ds.length = 4 ∧ wn ds = (wn rs + 2 ^ 256 - Pn) % 2 ^ 256 ∧
        t.locals.lookup rnm = some (wv ds) ∧
        t.locals.lookup cnm = some (.val (.word (cv - (if wn rs < Pn then 1 else 0))))) := by
  refine hoare_decCall (funRet_u256_lt hC) ?_
  intro s _ ⟨hr, hc⟩ vs hvs w hR _
  obtain ⟨rv, rfl, hrv⟩ := evs_args hvs
  obtain ⟨as, bs, has, hbs, hvs', rfl⟩ := hR
  simp only [List.cons.injEq, and_true] at hvs'
  obtain ⟨rfl, hb⟩ := hvs'
  have hbP : bs = Pl := (wv_inj hb).symm
  subst hbP
  refine hoare_seq (R := fun res t => res = none ∧ ∃ ds : List (BitVec 64), ds.length = 4 ∧
      wn ds = (wn as + 2 ^ 256 - wn Pl) % 2 ^ 256 ∧
      t.locals = (s.locals.update (ltpnm, .val (.word (if wn as < wn Pl then 1 else 0)))).update
        (rnm, wv ds))
    (hoare_call (funRet_u256_sub hC) ?_) (fun r t _ hr _ hR => absurd hR.1 hr)
    (hoare_assign ?_)
  · intro t _ ht vs' hvs' d hd _ t' _ ht'
    obtain ⟨rv', rfl, hrv'⟩ := evs_args hvs'
    rw [ht, lookup_update_ne _ _ (by decide : ltpnm ≠ rnm)] at hrv'
    rw [hrv] at hrv'
    cases hrv'
    obtain ⟨as', bs', _, _, hvs'', ds, es, hds, hes, rfl, hwn⟩ := hd
    simp only [List.cons.injEq, and_true] at hvs''
    have e1 := wv_inj hvs''.1; have e2 := wv_inj hvs''.2
    subst e1; subst e2
    have : es = [] := List.eq_nil_of_length_eq_zero hes
    subst this
    simp only [List.append_nil] at ht'
    refine ⟨rfl, ds, hds, hwn, ?_⟩
    rw [ht', ht]
  · intro t _ ⟨_, ds, hds, hwn, ht⟩ v hv _
    have hcl : t.locals.lookup cnm = some (.val (.word cv)) := by
      rw [ht, lookup_update_ne _ _ (by decide : rnm ≠ cnm),
        lookup_update_ne _ _ (by decide : ltpnm ≠ cnm)]
      exact hc
    have hll : t.locals.lookup ltpnm = some (.val (.word (if wn as < wn Pl then 1 else 0))) := by
      rw [ht, lookup_update_ne _ _ (by decide : rnm ≠ ltpnm), lookup_update_self]
    have hv' : v = .val (.word (cv - (if wn as < wn Pl then 1 else 0))) := by
      rw [ev_op2 (by rw [ev_lv]; exact hcl) (by rw [ev_lv]; exact hll)] at hv
      simp [wordOpHOL, wordOp] at hv
      exact hv.symm
    subst hv'
    refine ⟨rfl, as, ds, ?_, has, hds, hwn, ?_, ?_⟩
    · rw [← hr, ← hrv]
    · show (HolFiniteMapExact.resVarEq (setVarHOLFinite cnm _ t).locals
        (ltpnm, s.locals.lookup ltpnm)).lookup rnm = _
      rw [lookup_resVarEq_ne _ _ (by decide : ltpnm ≠ rnm), lk_set_ne _ _ (by decide : cnm ≠ rnm),
        ht, lookup_update_self]
    · show (HolFiniteMapExact.resVarEq (setVarHOLFinite cnm _ t).locals
        (ltpnm, s.locals.lookup ltpnm)).lookup cnm = _
      rw [lookup_resVarEq_ne _ _ (by decide : ltpnm ≠ cnm), lk_set_self]
      rfl

/-! ## Loop 1: the Hoare triple -/

theorem setVar_locals (t : PanSemStateFiniteExact 64 σ) (n : MlS) (v : ValueHOL 64) :
    (setVarHOLFinite n v t).locals = t.locals.update (n, v) := rfl

theorem body1_hoare (hC : X.code.lookup = guestCode) (rvo : Option (ValueHOL 64)) (cv : BitVec 64) :
    Hoare σ X (fun s => s.locals.lookup rnm = rvo ∧ s.locals.lookup cnm = some (.val (.word cv)))
      body1
      (fun res t => res = none ∧ ∃ (rs ds : List (BitVec 64)) (cy : BitVec 64),
        rvo = some (wv rs) ∧ rs.length = 4 ∧ ds.length = 4 ∧ cy.toNat ≤ 1 ∧
        wn ds + 2 ^ 256 * cy.toNat = wn rs + Pn ∧
        t.locals.lookup rnm = some (wv ds) ∧
        t.locals.lookup cnm = some (.val (.word (cv + cy)))) := by
  refine hoare_decCall (funRet_u256_add_carry hC) ?_
  intro s _ ⟨hr, hc⟩ vs hvs w hR _
  obtain ⟨rv, rfl, hrv⟩ := evs_args hvs
  obtain ⟨as, bs, has, hbs, hvs', ds, cy, hds, hcy, rfl, hwn⟩ := hR
  simp only [List.cons.injEq, and_true] at hvs'
  obtain ⟨rfl, hb⟩ := hvs'
  have hbP : bs = Pl := (wv_inj hb).symm
  subst hbP
  obtain ⟨d0, d1, d2, d3, rfl⟩ := list4 hds
  have hsa : ∀ t : PanSemStateFiniteExact 64 σ,
      t.locals = s.locals.update (sanm, wv ([d0, d1, d2, d3] ++ [cy])) →
      t.locals.lookup sanm = some (wv [d0, d1, d2, d3, cy]) ∧
      t.locals.lookup rnm = some (wv as) ∧ t.locals.lookup cnm = some (.val (.word cv)) := by
    intro t ht
    rw [ht, lookup_update_self, lookup_update_ne _ _ (by decide : sanm ≠ rnm),
      lookup_update_ne _ _ (by decide : sanm ≠ cnm)]
    exact ⟨rfl, hrv, hc⟩
  refine hoare_seq (R := fun res t => res = none ∧
      t.locals = (s.locals.update (sanm, wv ([d0, d1, d2, d3] ++ [cy]))).update
        (rnm, wv [d0, d1, d2, d3]))
    (hoare_assign ?_) (fun r t _ hr _ hR => absurd hR.1 hr) (hoare_assign ?_)
  · intro t _ ht v hv _
    obtain ⟨hs, -, -⟩ := hsa t ht
    have hv' : v = wv [d0, d1, d2, d3] := by
      have := ev_rstruct (s := t) (es := [.rfield 0 (lv sanm), .rfield 1 (lv sanm),
        .rfield 2 (lv sanm), .rfield 3 (lv sanm)]) (vs := [.val (.word d0), .val (.word d1),
        .val (.word d2), .val (.word d3)]) (by
          refine evs_cons ?_ (evs_cons ?_ (evs_cons ?_ (evs_cons ?_ evs_nil)))
          · exact ev_limb (as := [d0, d1, d2, d3, cy]) hs (by simp) |>.trans (by rfl)
          · exact ev_limb (as := [d0, d1, d2, d3, cy]) hs (by simp) |>.trans (by rfl)
          · exact ev_limb (as := [d0, d1, d2, d3, cy]) hs (by simp) |>.trans (by rfl)
          · exact ev_limb (as := [d0, d1, d2, d3, cy]) hs (by simp) |>.trans (by rfl))
      rw [this] at hv
      exact (Option.some.inj hv).symm
    subst hv'
    exact ⟨rfl, by rw [setVar_locals, ht]⟩
  · intro t _ ⟨_, ht⟩ v hv _
    have hs : t.locals.lookup sanm = some (wv [d0, d1, d2, d3, cy]) := by
      rw [ht, lookup_update_ne _ _ (by decide : rnm ≠ sanm), lookup_update_self]; rfl
    have hcl : t.locals.lookup cnm = some (.val (.word cv)) := by
      rw [ht, lookup_update_ne _ _ (by decide : rnm ≠ cnm),
        lookup_update_ne _ _ (by decide : sanm ≠ cnm)]
      exact hc
    have hv' : v = .val (.word (cv + cy)) := by
      rw [ev_op2 (by rw [ev_lv]; exact hcl)
        (ev_limb (as := [d0, d1, d2, d3, cy]) hs (by simp))] at hv
      simp [wordOpHOL, wordOp] at hv
      exact hv.symm
    subst hv'
    refine ⟨rfl, as, [d0, d1, d2, d3], cy, ?_, has, rfl, hcy, ?_, ?_, ?_⟩
    · rw [← hr, ← hrv]
    · have := hwn
      rw [wn_cons, wn_cons, wn_cons, wn_cons, wn_nil] at this
      simpa [wn_cons, Pn] using this
    · show (HolFiniteMapExact.resVarEq (setVarHOLFinite cnm _ t).locals
        (sanm, s.locals.lookup sanm)).lookup rnm = _
      rw [lookup_resVarEq_ne _ _ (by decide : sanm ≠ rnm), lk_set_ne _ _ (by decide : cnm ≠ rnm),
        ht, lookup_update_self]
    · show (HolFiniteMapExact.resVarEq (setVarHOLFinite cnm _ t).locals
        (sanm, s.locals.lookup sanm)).lookup cnm = _
      rw [lookup_resVarEq_ne _ _ (by decide : sanm ≠ cnm), lk_set_self]

/-! ## Conditions -/

theorem cond_var_const {s : PanSemStateFiniteExact 64 σ} {op : Cmp} {i : MlS} {z : BitVec 64}
    (h : CondTrue s (.cmp op (.var .local i) (.const z))) :
    ∃ v : BitVec 64, s.locals.lookup i = some (.val (.word v)) ∧
      Compiler.Encoders.Asm.wordCmpHOL op v z = true := by
  obtain ⟨w, hw, hne⟩ := h
  simp only [evalHOLFinite, evalHOLExact] at hw
  split at hw
  · rename_i l r hl hr
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hr
    subst hr
    refine ⟨l, hl, ?_⟩
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
    cases hc : Compiler.Encoders.Asm.wordCmpHOL op l z
    · rw [hc] at hw; simp at hw; exact absurd hw.symm hne
    · rfl
  · simp at hw

theorem cond_const_var {s : PanSemStateFiniteExact 64 σ} {op : Cmp} {i : MlS} {z : BitVec 64}
    (h : CondTrue s (.cmp op (.const z) (.var .local i))) :
    ∃ v : BitVec 64, s.locals.lookup i = some (.val (.word v)) ∧
      Compiler.Encoders.Asm.wordCmpHOL op z v = true := by
  obtain ⟨w, hw, hne⟩ := h
  simp only [evalHOLFinite, evalHOLExact] at hw
  split at hw
  · rename_i l r hl hr
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hl
    subst hl
    refine ⟨r, hr, ?_⟩
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
    cases hc : Compiler.Encoders.Asm.wordCmpHOL op z r
    · rw [hc] at hw; simp at hw; exact absurd hw.symm hne
    · rfl
  · simp at hw

/-! ## Measures -/

open Classical in
noncomputable def indLt (v : Option (ValueHOL 64)) : Nat :=
  if ∃ rs : List (BitVec 64), v = some (wv rs) ∧ wn rs < 2 ^ 256 - Pn then 1 else 0

open Classical in
noncomputable def indGe (v : Option (ValueHOL 64)) : Nat :=
  if ∃ rs : List (BitVec 64), v = some (wv rs) ∧ Pn ≤ wn rs then 1 else 0

theorem indLt_wv (rs : List (BitVec 64)) :
    indLt (some (wv rs)) = if wn rs < 2 ^ 256 - Pn then 1 else 0 := by
  unfold indLt
  by_cases h : wn rs < 2 ^ 256 - Pn
  · rw [if_pos ⟨rs, rfl, h⟩, if_pos h]
  · rw [if_neg, if_neg h]
    rintro ⟨rs', h1, h2⟩
    have := wv_inj (Option.some.inj h1)
    subst this
    exact h h2

theorem indGe_wv (rs : List (BitVec 64)) :
    indGe (some (wv rs)) = if Pn ≤ wn rs then 1 else 0 := by
  unfold indGe
  by_cases h : Pn ≤ wn rs
  · rw [if_pos ⟨rs, rfl, h⟩, if_pos h]
  · rw [if_neg, if_neg h]
    rintro ⟨rs', h1, h2⟩
    have := wv_inj (Option.some.inj h1)
    subst this
    exact h h2

theorem indLt_le (v : Option (ValueHOL 64)) : indLt v ≤ 1 := by
  unfold indLt; split <;> omega

theorem indGe_le (v : Option (ValueHOL 64)) : indGe v ≤ 1 := by
  unfold indGe; split <;> omega

def ckey (s : PanSemStateFiniteExact 64 σ) : Nat :=
  match s.locals.lookup cnm with
  | some (.val (.word w)) => 2 ^ 63 - signedKey w
  | _ => 0

def cval (s : PanSemStateFiniteExact 64 σ) : Nat :=
  match s.locals.lookup cnm with
  | some (.val (.word w)) => w.toNat
  | _ => 0

noncomputable def mu1 (s : PanSemStateFiniteExact 64 σ) : Nat :=
  2 * ckey s + indLt (s.locals.lookup rnm)

noncomputable def mu2 (s : PanSemStateFiniteExact 64 σ) : Nat :=
  2 * cval s + indGe (s.locals.lookup rnm)

/-! ## Arithmetic -/

theorem hsl_eq (a b : BitVec 64) : Compiler.Encoders.Asm.holAsmSignedLess a b =
    (if a.toNat < 2 ^ 63 then (if b.toNat < 2 ^ 63 then decide (a.toNat < b.toNat) else false)
      else if b.toNat < 2 ^ 63 then true else decide (a.toNat < b.toNat)) := rfl

theorem signed_neg {cv : BitVec 64} (h : Compiler.Encoders.Asm.holAsmSignedLess cv 0 = true) :
    2 ^ 63 ≤ cv.toNat ∧ signedKey cv < 2 ^ 63 := by
  rw [hsl_eq] at h
  have h0 : (0 : BitVec 64).toNat = 0 := rfl
  rw [h0] at h
  have := cv.isLt
  by_cases h1 : cv.toNat < 2 ^ 63
  · simp [h1] at h
  · refine ⟨by omega, ?_⟩
    unfold signedKey
    omega

theorem signed_pos {cv : BitVec 64} (h : Compiler.Encoders.Asm.holAsmSignedLess 0 cv = true) :
    0 < cv.toNat ∧ cv.toNat < 2 ^ 63 := by
  rw [hsl_eq] at h
  have h0 : (0 : BitVec 64).toNat = 0 := rfl
  rw [h0] at h
  have := cv.isLt
  by_cases h1 : cv.toNat < 2 ^ 63
  · simp [h1] at h
    exact ⟨h, h1⟩
  · simp [h1] at h

theorem arith1 {cv : BitVec 64} (hcv : Compiler.Encoders.Asm.holAsmSignedLess cv 0 = true)
    {rs ds : List (BitVec 64)} {cy : BitVec 64} (hrl : rs.length = 4) (hdl : ds.length = 4)
    (hcy : cy.toNat ≤ 1) (h : wn ds + 2 ^ 256 * cy.toNat = wn rs + Pn) :
    2 * (2 ^ 63 - signedKey (cv + cy)) + (if wn ds < 2 ^ 256 - Pn then 1 else 0) <
      2 * (2 ^ 63 - signedKey cv) + (if wn rs < 2 ^ 256 - Pn then 1 else 0) := by
  have hr := wn_lt4' hrl
  have hd := wn_lt4' hdl
  have hP := Pn_gt
  have hP2 := Pn_lt
  obtain ⟨-, hk⟩ := signed_neg hcv
  have hcases : cy.toNat = 0 ∨ cy.toNat = 1 := by omega
  rcases hcases with h0 | h1
  · have : cy = 0 := BitVec.eq_of_toNat_eq (by simpa using h0)
    subst this
    have e0 : cv + 0 = cv := by simp
    rw [e0]
    rw [h0] at h
    split <;> split <;> omega
  · have : cy = 1 := BitVec.eq_of_toNat_eq (by
      rw [h1]; simp)
    subst this
    rw [signedKey_succ hcv]
    split <;> split <;> omega

theorem arith2 {cv : BitVec 64} (hcv : Compiler.Encoders.Asm.holAsmSignedLess 0 cv = true)
    {rs ds : List (BitVec 64)} (hrl : rs.length = 4)
    (h : wn ds = (wn rs + 2 ^ 256 - Pn) % 2 ^ 256) :
    2 * (cv - (if wn rs < Pn then 1 else 0)).toNat + (if Pn ≤ wn ds then 1 else 0) <
      2 * cv.toNat + (if Pn ≤ wn rs then 1 else 0) := by
  have hr := wn_lt4' hrl
  have hP := Pn_gt
  have hP2 := Pn_lt
  obtain ⟨hpos, hlt⟩ := signed_pos hcv
  by_cases hc : wn rs < Pn
  · rw [if_pos hc, if_neg (by omega : ¬ Pn ≤ wn rs)]
    have hd : wn ds = wn rs + 2 ^ 256 - Pn := by
      rw [h]; apply Nat.mod_eq_of_lt; omega
    have : (cv - 1).toNat = cv.toNat - 1 := by
      rw [BitVec.toNat_sub_of_le (by rw [BitVec.le_def]; have : (1 : BitVec 64).toNat = 1 := rfl; omega)]
      simp
    rw [this]
    split <;> omega
  · rw [if_neg hc, if_pos (by omega : Pn ≤ wn rs)]
    have hd : wn ds = wn rs - Pn := by
      rw [h, show wn rs + 2 ^ 256 - Pn = (wn rs - Pn) + 2 ^ 256 * 1 by omega,
        Nat.add_mul_mod_self_left]
      apply Nat.mod_eq_of_lt; omega
    have : cv - 0 = cv := BitVec.sub_zero cv
    rw [this]
    rw [if_neg (by omega : ¬ Pn ≤ wn ds)]
    omega

/-! ## The cost theorems -/

theorem cost_loop1 (hC : X.code.lookup = guestCode) {B : Nat} (hb : Cost σ X body1 B) :
    Cost σ X (.while cond1 body1) ((2 ^ 64 + 2) * (B + 1)) := by
  have hM : ∀ s : PanSemStateFiniteExact 64 σ, InCtx s X → CondTrue s cond1 →
      mu1 s ≤ 2 ^ 64 + 1 := by
    intro s _ _
    unfold mu1 ckey
    have := indLt_le (s.locals.lookup rnm)
    split <;> omega
  have hh : ∀ k, Hoare σ X (fun s : PanSemStateFiniteExact 64 σ => True ∧ CondTrue s cond1 ∧ mu1 s = k)
      body1 (fun r t => r = none ∨ r = some .continue → mu1 t < k) := by
    intro k s hs ⟨_, hct, hk⟩ ht
    obtain ⟨cv, hcl, hlt⟩ := cond_var_const hct
    obtain ⟨hn, rs, ds, cy, hrs, hrl, hdl, hcy, hwn, hrl', hcl'⟩ :=
      body1_hoare hC (s.locals.lookup rnm) cv s hs ⟨rfl, hcl⟩ ht
    intro hex
    rcases hex with hex | hex
    · rw [← hk]
      unfold mu1 ckey
      simp only [hrl', hcl', hrs, hcl, indLt_wv]
      have hlt' : Compiler.Encoders.Asm.holAsmSignedLess cv 0 = true := hlt
      have := arith1 hlt' hrl hdl hcy hwn
      exact this
    · rw [hn] at hex; cases hex
  have hd := hdec_of_hoare (X := X) (c := cond1) (body := body1) mu1 (fun _ => True)
    (fun s => rfl) (fun _ h => h) hh
  have := cost_while (c := cond1) mu1 (2 ^ 64 + 1) hb hM
    (fun s hs hc _ hex => hd s hs hc trivial hex)
  exact this

theorem cost_loop2 (hC : X.code.lookup = guestCode) {B : Nat} (hb : Cost σ X body2 B) :
    Cost σ X (.while cond2 body2) ((2 ^ 64 + 2) * (B + 1)) := by
  have hM : ∀ s : PanSemStateFiniteExact 64 σ, InCtx s X → CondTrue s cond2 →
      mu2 s ≤ 2 ^ 64 + 1 := by
    intro s _ hct
    obtain ⟨cv, hcl, hlt⟩ := cond_const_var hct
    have hlt' : Compiler.Encoders.Asm.holAsmSignedLess 0 cv = true := hlt
    obtain ⟨-, hc2⟩ := signed_pos hlt'
    unfold mu2 cval
    rw [hcl]
    have := indGe_le (s.locals.lookup rnm)
    simp only []
    omega
  have hh : ∀ k, Hoare σ X (fun s : PanSemStateFiniteExact 64 σ => True ∧ CondTrue s cond2 ∧ mu2 s = k)
      body2 (fun r t => r = none ∨ r = some .continue → mu2 t < k) := by
    intro k s hs ⟨_, hct, hk⟩ ht
    obtain ⟨cv, hcl, hlt⟩ := cond_const_var hct
    obtain ⟨hn, rs, ds, hrs, hrl, hdl, hwn, hrl', hcl'⟩ :=
      body2_hoare hC (s.locals.lookup rnm) cv s hs ⟨rfl, hcl⟩ ht
    intro hex
    rcases hex with hex | hex
    · rw [← hk]
      unfold mu2 cval
      simp only [hrl', hcl', hrs, hcl, indGe_wv]
      have hlt' : Compiler.Encoders.Asm.holAsmSignedLess 0 cv = true := hlt
      exact arith2 hlt' hrl hwn
    · rw [hn] at hex; cases hex
  have hd := hdec_of_hoare (X := X) (c := cond2) (body := body2) mu2 (fun _ => True)
    (fun s => rfl) (fun _ h => h) hh
  have := cost_while (c := cond2) mu2 (2 ^ 64 + 1) hb hM
    (fun s hs hc _ hex => hd s hs hc trivial hex)
  exact this

/-! ## The rule -/

theorem p256Cond1_eq : (p256Cond1 : ExpHOL 64) = cond1 := by
  simp only [p256Cond1, cond1, lv, cw, cnm, nm, p256Nm_c_eq]
theorem p256Cond2_eq : (p256Cond2 : ExpHOL 64) = cond2 := by
  simp only [p256Cond2, cond2, lv, cw, cnm, nm, p256Nm_c_eq]
theorem p256Body1_eq : (p256Body1 : ProgHOL 64) = body1 := by
  simp only [p256Body1, body1, p256PE, pE, lv, sanm, rnm, cnm, nm, p256Nm_sa_eq, p256Nm_r_eq, p256Nm_c_eq,
    p256Nm_u256_add_carry_eq]
theorem p256Body2_eq : (p256Body2 : ProgHOL 64) = body2 := by
  simp only [p256Body2, body2, p256PE, pE, lv, ltpnm, rnm, cnm, nm, callTo, p256Nm_ltp_eq, p256Nm_r_eq, p256Nm_c_eq,
    p256Nm_u256_lt_eq, p256Nm_u256_sub_eq]

theorem p256Rule (hC : X.code.lookup = guestCode) : P256Rule σ X := by
  intro c b F B h hb
  obtain ⟨rfl, hcb⟩ := loopP256F_spec h
  rcases hcb with ⟨rfl, rfl⟩ | ⟨rfl, rfl⟩
  · rw [p256Body1_eq] at hb
    rw [p256Cond1_eq, p256Body1_eq]
    exact cost_loop1 hC hb
  · rw [p256Body2_eq] at hb
    rw [p256Cond2_eq, p256Body2_eq]
    exact cost_loop2 hC hb

end InitECandidate.Solver.Spec
