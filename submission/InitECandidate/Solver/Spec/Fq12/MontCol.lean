import InitECandidate.Solver.Spec.Fq12.CodeFqMul
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring

/-!
# One column of the Montgomery product

Generic facts about the column blocks of `fq_mul` (`CodeFqMul.lean`), run by the
straight-line interpreter `runL`:

* `runL_macList`: a list of multiply-accumulate triples adds the products of its factor
  pairs to `L + 2³² H`, keeping every name other than `pr`, `L`, `H`;
* `runL_colEndM`: a reduction column end produces a digit `m < 2³²` with
  `L + 2³² H + c + m · P₀ = 2³² c'` (the low digit cancels: `m = dg · (−P⁻¹) mod 2³²`);
* `runL_colEndU`: an output column end produces `u < 2³²` with `L + 2³² H + c = u + 2³² c'`;
* `blockM_spec`, `blockU_spec`: whole blocks, carries `< 2³⁷`, at most 16 products.
-/

set_option linter.unusedSimpArgs false

namespace InitECandidate.Solver.Spec.Fq12
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-! ## Evaluating the expression shapes -/

section evW
variable (env : Env) (senv : SEnv)

@[simp] theorem evW_lv (n : MlS) : evW env senv (lv n) = env n := rfl
@[simp] theorem evW_cw (k : Nat) : evW env senv (cw k) = BitVec.ofNat 64 k := rfl
@[simp] theorem evW_M32 : evW env senv M32 = BitVec.ofNat 64 4294967295 := rfl

theorem evW_add2 (x y : ExpHOL 64) :
    evW env senv (.op .add [x, y]) = evW env senv x + evW env senv y := by
  simp [evW, evWs, wordOpHOL, wordOp]

theorem evW_add4 (w x y z : ExpHOL 64) :
    evW env senv (.op .add [w, x, y, z]) =
      evW env senv w + (evW env senv x + (evW env senv y + evW env senv z)) := by
  simp [evW, evWs, wordOpHOL, wordOp]

theorem and_ones64 (x : BitVec 64) : x &&& 18446744073709551615#64 = x := by
  rw [show (18446744073709551615#64 : BitVec 64) = BitVec.allOnes 64 by decide, BitVec.and_allOnes]

theorem evW_and2 (x y : ExpHOL 64) :
    evW env senv (.op .and [x, y]) = evW env senv x &&& evW env senv y := by
  simp [evW, evWs, wordOpHOL, wordOp, AndOp.and, and_ones64]

theorem evW_or2 (x y : ExpHOL 64) :
    evW env senv (.op .or [x, y]) = evW env senv x ||| evW env senv y := by
  simp [evW, evWs, wordOpHOL, wordOp, OrOp.or]

theorem evW_mul2 (x y : ExpHOL 64) :
    evW env senv (.panop .mul [x, y]) = evW env senv x * evW env senv y := by
  simp [evW, evWs, panOpHOL]

theorem evW_lsr32 (x : ExpHOL 64) :
    evW env senv (.shift .lsr x (cw 32)) = evW env senv x >>> (32 : Nat) := by
  simp [evW, cw, wordShiftHOL]

theorem evW_lsl32 (x : ExpHOL 64) :
    evW env senv (.shift .lsl x (cw 32)) = evW env senv x <<< (32 : Nat) := by
  simp [evW, cw, wordShiftHOL]

end evW

/-! ## Word arithmetic as numbers -/

theorem toNat_andM (x : BitVec 64) :
    (x &&& BitVec.ofNat 64 4294967295).toNat = x.toNat % 2 ^ 32 := by
  rw [BitVec.toNat_and, show (BitVec.ofNat 64 4294967295).toNat = 2 ^ 32 - 1 from rfl,
    Nat.and_two_pow_sub_one_eq_mod]

theorem toNat_lsr32 (x : BitVec 64) : (x >>> (32 : Nat)).toNat = x.toNat / 2 ^ 32 := by
  rw [BitVec.toNat_ushiftRight, Nat.shiftRight_eq_div_pow]

theorem toNat_add_of_lt {x y : BitVec 64} (h : x.toNat + y.toNat < 2 ^ 64) :
    (x + y).toNat = x.toNat + y.toNat := by
  rw [BitVec.toNat_add, Nat.mod_eq_of_lt h]

theorem toNat_mul_of_lt {x y : BitVec 64} (h : x.toNat * y.toNat < 2 ^ 64) :
    (x * y).toNat = x.toNat * y.toNat := by
  rw [BitVec.toNat_mul, Nat.mod_eq_of_lt h]

theorem mul_lt_2_64 {a b : Nat} (ha : a < 2 ^ 32) (hb : b < 2 ^ 32) : a * b < 2 ^ 64 :=
  calc a * b < 2 ^ 32 * 2 ^ 32 := Nat.mul_lt_mul'' ha hb
    _ = 2 ^ 64 := by rw [← Nat.pow_add]

/-- The Montgomery digit cancels the low 32 bits: `3834012553 = −P₀⁻¹ mod 2³²`. -/
theorem mont_digit (dg : Nat) (h : dg < 2 ^ 32) :
    (dg + (dg * 3834012553 % 2 ^ 64 % 2 ^ 32) * 3632069959 % 2 ^ 32) % 2 ^ 32 = 0 := by
  have e1 : dg * 3834012553 % 2 ^ 64 % 2 ^ 32 = dg * 3834012553 % 2 ^ 32 :=
    Nat.mod_mod_of_dvd _ (by norm_num)
  rw [e1, Nat.mod_mul_mod]
  omega

/-! ## Names -/

def scrM (m : MlS) : List MlS :=
  [nm "pr", nm "L", nm "H", nm "col", nm "dg", m, nm "col2", nm "c"]

def scrU (u : MlS) : List MlS := [nm "pr", nm "L", nm "H", nm "col", u, nm "c"]

/-- Factor expressions: constants and locals outside `X`. -/
def isFactor (X : List MlS) : ExpHOL 64 → Bool
  | .const _ => true
  | .var .local n => !(X.contains n)
  | _ => false

theorem evW_update_factor {X : List MlS} {x : ExpHOL 64} (hx : isFactor X x = true)
    (env : Env) (senv : SEnv) {n : MlS} (hn : n ∈ X) (w : BitVec 64) :
    evW (Function.update env n w) senv x = evW env senv x := by
  match x, hx with
  | .const _, _ => rfl
  | .var .local m, hx =>
      simp only [isFactor, Bool.not_eq_true'] at hx
      have : m ≠ n := by
        intro h
        rw [List.contains_iff_mem.mpr (h ▸ hn)] at hx
        cases hx
      simp only [evW]
      exact Function.update_of_ne this _ _

/-- The sum of the products of the factor pairs. -/
def sumP (env : Env) (senv : SEnv) : List (ExpHOL 64 × ExpHOL 64) → Nat
  | [] => 0
  | (x, y) :: ps => (evW env senv x).toNat * (evW env senv y).toNat + sumP env senv ps

theorem sumP_congr {env env' : Env} {senv : SEnv} :
    ∀ ps : List (ExpHOL 64 × ExpHOL 64),
      (∀ p ∈ ps, evW env' senv p.1 = evW env senv p.1 ∧ evW env' senv p.2 = evW env senv p.2) →
      sumP env' senv ps = sumP env senv ps
  | [], _ => rfl
  | (x, y) :: ps, h => by
      simp only [sumP]
      obtain ⟨h1, h2⟩ := h (x, y) List.mem_cons_self
      simp only at h1 h2
      rw [h1, h2, sumP_congr ps (fun p hp => h p (List.mem_cons_of_mem _ hp))]

/-! Propositional (non-`rfl`) versions of the evaluation equations, for `simp` on large
hypotheses: `rfl` lemmas would make the kernel re-check big definitional unfoldings. -/

theorem sumP_cons_p (env : Env) (senv : SEnv) (x y : ExpHOL 64)
    (ps : List (ExpHOL 64 × ExpHOL 64)) :
    sumP env senv ((x, y) :: ps) =
      (evW env senv x).toNat * (evW env senv y).toNat + sumP env senv ps :=
  Eq.trans (by rw [sumP]) (Eq.refl _)
theorem sumP_nil_p (env : Env) (senv : SEnv) : sumP env senv [] = 0 := by rw [sumP]
/-- `n + 0 = n`, proved propositionally (the `rfl` version makes the kernel unfold
`Nat.mul` by literals when it re-checks the rewrite). -/
theorem add_zero_p (n : Nat) : n + 0 = n := by omega
theorem evW_lv_p (env : Env) (senv : SEnv) (n : MlS) : evW env senv (lv n) = env n := by
  rw [evW_lv]
theorem toNat_cw_p (env : Env) (senv : SEnv) (k : Nat) (h : k < 2 ^ 64) :
    (evW env senv (cw k)).toNat = k := by rw [evW_cw, BitVec.toNat_ofNat, Nat.mod_eq_of_lt h]

/-! ## Multiply-accumulate -/

theorem pr_ne_L : nm "pr" ≠ nm "L" := by decide
theorem pr_ne_H : nm "pr" ≠ nm "H" := by decide
theorem L_ne_H : nm "L" ≠ nm "H" := by decide

theorem runL_macAsg (senv : SEnv) (env : Env) (x y : ExpHOL 64) :
    runL senv env (macAsg x y) =
      Function.update (Function.update (Function.update env (nm "pr")
        (evW env senv x * evW env senv y)) (nm "L")
        (env (nm "L") + ((evW env senv x * evW env senv y) &&& BitVec.ofNat 64 4294967295)))
        (nm "H") (env (nm "H") + ((evW env senv x * evW env senv y) >>> (32 : Nat))) := by
  simp only [macAsg, runL, evW_mul2, evW_add2, evW_and2, evW_lv, evW_M32, evW_lsr32,
    Function.update_apply, pr_ne_L, pr_ne_L.symm, L_ne_H, L_ne_H.symm, pr_ne_H, pr_ne_H.symm,
    if_true, if_false]

theorem runL_macList (senv : SEnv) (X : List MlS) (hX : nm "pr" ∈ X ∧ nm "L" ∈ X ∧ nm "H" ∈ X) :
    ∀ (ps : List (ExpHOL 64 × ExpHOL 64)) (env : Env),
      (∀ p ∈ ps, isFactor X p.1 = true ∧ isFactor X p.2 = true ∧
        (evW env senv p.1).toNat < 2 ^ 32 ∧ (evW env senv p.2).toNat < 2 ^ 32) →
      (env (nm "L")).toNat + ps.length * 2 ^ 32 < 2 ^ 64 →
      (env (nm "H")).toNat + ps.length * 2 ^ 32 < 2 ^ 64 →
      ((runL senv env (macList ps)) (nm "L")).toNat +
          2 ^ 32 * ((runL senv env (macList ps)) (nm "H")).toNat =
        (env (nm "L")).toNat + 2 ^ 32 * (env (nm "H")).toNat + sumP env senv ps ∧
      ((runL senv env (macList ps)) (nm "L")).toNat ≤ (env (nm "L")).toNat + ps.length * 2 ^ 32 ∧
      ((runL senv env (macList ps)) (nm "H")).toNat ≤ (env (nm "H")).toNat + ps.length * 2 ^ 32 ∧
      ∀ n, n ≠ nm "pr" → n ≠ nm "L" → n ≠ nm "H" → runL senv env (macList ps) n = env n
  | [], env, _, _, _ => by simp [macList, runL, sumP]
  | (x, y) :: ps, env, hps, hL, hH => by
      have hp := hps (x, y) List.mem_cons_self
      obtain ⟨hfx, hfy, hxl, hyl⟩ := hp
      simp only at hfx hfy hxl hyl
      simp only [macList]
      rw [runL_append, runL_macAsg]
      set env1 := Function.update (Function.update (Function.update env (nm "pr")
        (evW env senv x * evW env senv y)) (nm "L")
        (env (nm "L") + ((evW env senv x * evW env senv y) &&& BitVec.ofNat 64 4294967295)))
        (nm "H") (env (nm "H") + ((evW env senv x * evW env senv y) >>> (32 : Nat))) with henv1
      -- factors are unchanged in `env1`
      have hstab : ∀ z, isFactor X z = true → evW env1 senv z = evW env senv z := by
        intro z hz
        rw [henv1, evW_update_factor hz _ _ hX.2.2, evW_update_factor hz _ _ hX.2.1,
          evW_update_factor hz _ _ hX.1]
      have hxy : (evW env senv x * evW env senv y).toNat =
          (evW env senv x).toNat * (evW env senv y).toNat :=
        toNat_mul_of_lt (mul_lt_2_64 hxl hyl)
      have hpl := mul_lt_2_64 hxl hyl
      have hL1 : (env1 (nm "L")).toNat = (env (nm "L")).toNat +
          (evW env senv x).toNat * (evW env senv y).toNat % 2 ^ 32 := by
        rw [henv1, Function.update_of_ne L_ne_H, Function.update_self]
        rw [toNat_add_of_lt] <;> rw [toNat_andM, hxy]
        simp only [List.length_cons] at hL
        have := Nat.mod_lt ((evW env senv x).toNat * (evW env senv y).toNat)
          (show 0 < 2 ^ 32 by norm_num)
        omega
      have hH1 : (env1 (nm "H")).toNat = (env (nm "H")).toNat +
          (evW env senv x).toNat * (evW env senv y).toNat / 2 ^ 32 := by
        rw [henv1, Function.update_self]
        rw [toNat_add_of_lt] <;> rw [toNat_lsr32, hxy]
        simp only [List.length_cons] at hH
        have : (evW env senv x).toNat * (evW env senv y).toNat / 2 ^ 32 < 2 ^ 32 := by
          rw [Nat.div_lt_iff_lt_mul (by norm_num)]; norm_num; exact hpl
        omega
      have hps' : ∀ p ∈ ps, isFactor X p.1 = true ∧ isFactor X p.2 = true ∧
          (evW env1 senv p.1).toNat < 2 ^ 32 ∧ (evW env1 senv p.2).toNat < 2 ^ 32 := by
        intro p hp
        obtain ⟨h1, h2, h3, h4⟩ := hps p (List.mem_cons_of_mem _ hp)
        exact ⟨h1, h2, by rw [hstab _ h1]; exact h3, by rw [hstab _ h2]; exact h4⟩
      simp only [List.length_cons] at hL hH
      have hm32 := Nat.mod_lt ((evW env senv x).toNat * (evW env senv y).toNat)
          (show 0 < 2 ^ 32 by norm_num)
      have hd32 : (evW env senv x).toNat * (evW env senv y).toNat / 2 ^ 32 < 2 ^ 32 := by
          rw [Nat.div_lt_iff_lt_mul (by norm_num)]; norm_num; exact hpl
      obtain ⟨i1, i2, i3, i4⟩ := runL_macList senv X hX ps env1 hps' (by omega) (by omega)
      have hsum : sumP env1 senv ps = sumP env senv ps :=
        sumP_congr ps (fun p hp => by
          obtain ⟨h1, h2, -, -⟩ := hps p (List.mem_cons_of_mem _ hp)
          exact ⟨hstab _ h1, hstab _ h2⟩)
      simp only [List.length_cons]
      refine ⟨?_, ?_, ?_, ?_⟩
      · rw [i1, hL1, hH1, hsum]
        simp only [sumP]
        have := Nat.div_add_mod ((evW env senv x).toNat * (evW env senv y).toNat) (2 ^ 32)
        omega
      · rw [hL1] at i2; omega
      · rw [hH1] at i3; omega
      · intro n h1 h2 h3
        rw [i4 n h1 h2 h3, henv1, Function.update_of_ne h3, Function.update_of_ne h2,
          Function.update_of_ne h1]

/-! ## Column ends -/

theorem colM_arith (Lw Hw cw : BitVec 64) (hL : Lw.toNat ≤ 2 ^ 36) (hH : Hw.toNat ≤ 2 ^ 36)
    (hc : cw.toNat < 2 ^ 37) :
    let col := Lw + cw
    let dg := col &&& BitVec.ofNat 64 4294967295
    let mv := (dg * BitVec.ofNat 64 3834012553) &&& BitVec.ofNat 64 4294967295
    let pr := mv * BitVec.ofNat 64 3632069959
    let col2 := dg + (pr &&& BitVec.ofNat 64 4294967295)
    let c' := (col >>> (32 : Nat)) + (Hw + ((col2 >>> (32 : Nat)) + (pr >>> (32 : Nat))))
    mv.toNat < 2 ^ 32 ∧ c'.toNat < 2 ^ 37 ∧
      Lw.toNat + 2 ^ 32 * Hw.toNat + cw.toNat + mv.toNat * 3632069959 = 2 ^ 32 * c'.toNat := by
  intro col dg mv pr col2 c'
  have hcol : col.toNat = Lw.toNat + cw.toNat := toNat_add_of_lt (by omega)
  have hdg : dg.toNat = col.toNat % 2 ^ 32 := toNat_andM _
  have hdgl : dg.toNat < 2 ^ 32 := by rw [hdg]; exact Nat.mod_lt _ (by norm_num)
  have hmv : mv.toNat = dg.toNat * 3834012553 % 2 ^ 64 % 2 ^ 32 := by
    show ((dg * BitVec.ofNat 64 3834012553) &&& BitVec.ofNat 64 4294967295).toNat = _
    rw [toNat_andM, BitVec.toNat_mul]
    rfl
  have hmvl : mv.toNat < 2 ^ 32 := by rw [hmv]; exact Nat.mod_lt _ (by norm_num)
  have hpr : pr.toNat = mv.toNat * 3632069959 :=
    toNat_mul_of_lt (by have := mul_lt_2_64 hmvl (show 3632069959 < 2 ^ 32 by norm_num); exact this)
  have hpa : (pr &&& BitVec.ofNat 64 4294967295).toNat = pr.toNat % 2 ^ 32 := toNat_andM _
  have hpm := Nat.mod_lt pr.toNat (show 0 < 2 ^ 32 by norm_num)
  have hcol2 : col2.toNat = dg.toNat + pr.toNat % 2 ^ 32 := by
    show (dg + (pr &&& BitVec.ofNat 64 4294967295)).toNat = _
    rw [toNat_add_of_lt (by rw [hpa]; omega), hpa]
  have hkey : col2.toNat % 2 ^ 32 = 0 := by
    rw [hcol2, hpr, hmv]
    exact mont_digit _ hdgl
  have h1 := toNat_lsr32 col
  have h2 := toNat_lsr32 col2
  have h3 := toNat_lsr32 pr
  have hprl : pr.toNat < 2 ^ 64 := pr.isLt
  have hc' : c'.toNat = col.toNat / 2 ^ 32 + (Hw.toNat + (col2.toNat / 2 ^ 32 + pr.toNat / 2 ^ 32)) := by
    show ((col >>> (32 : Nat)) + (Hw + ((col2 >>> (32 : Nat)) + (pr >>> (32 : Nat))))).toNat = _
    have hcol2l : col2.toNat < 2 ^ 33 := by rw [hcol2]; omega
    have g1 : ((col2 >>> (32 : Nat)) + (pr >>> (32 : Nat))).toNat =
        col2.toNat / 2 ^ 32 + pr.toNat / 2 ^ 32 := by
      rw [toNat_add_of_lt (by rw [h2, h3]; omega), h2, h3]
    have g2 : (Hw + ((col2 >>> (32 : Nat)) + (pr >>> (32 : Nat)))).toNat =
        Hw.toNat + (col2.toNat / 2 ^ 32 + pr.toNat / 2 ^ 32) := by
      rw [toNat_add_of_lt (by rw [g1]; omega), g1]
    rw [toNat_add_of_lt (by rw [g2, h1]; omega), g2, h1]
  refine ⟨hmvl, ?_, ?_⟩
  · rw [hc']; omega
  · rw [hc']
    have := Nat.div_add_mod col2.toNat (2 ^ 32)
    have := Nat.div_add_mod col.toNat (2 ^ 32)
    have := Nat.div_add_mod pr.toNat (2 ^ 32)
    omega

theorem colU_arith (Lw Hw cw : BitVec 64) (hL : Lw.toNat ≤ 2 ^ 36) (hH : Hw.toNat ≤ 2 ^ 36)
    (hc : cw.toNat < 2 ^ 37) :
    let col := Lw + cw
    let u := col &&& BitVec.ofNat 64 4294967295
    let c' := (col >>> (32 : Nat)) + Hw
    u.toNat < 2 ^ 32 ∧ c'.toNat < 2 ^ 37 ∧
      Lw.toNat + 2 ^ 32 * Hw.toNat + cw.toNat = u.toNat + 2 ^ 32 * c'.toNat := by
  intro col u c'
  have hcol : col.toNat = Lw.toNat + cw.toNat := toNat_add_of_lt (by omega)
  have hu : u.toNat = col.toNat % 2 ^ 32 := toNat_andM _
  have h1 := toNat_lsr32 col
  have hc' : c'.toNat = col.toNat / 2 ^ 32 + Hw.toNat := by
    show ((col >>> (32 : Nat)) + Hw).toNat = _
    rw [toNat_add_of_lt (by rw [h1]; omega), h1]
  refine ⟨by rw [hu]; exact Nat.mod_lt _ (by norm_num), by rw [hc']; omega, ?_⟩
  rw [hu, hc']
  have := Nat.div_add_mod col.toNat (2 ^ 32)
  omega

/-! ## Whole column blocks -/

theorem ne_pr_L : nm "pr" ≠ nm "L" := by decide
theorem ne_pr_H : nm "pr" ≠ nm "H" := by decide
theorem ne_pr_col : nm "pr" ≠ nm "col" := by decide
theorem ne_pr_dg : nm "pr" ≠ nm "dg" := by decide
theorem ne_pr_col2 : nm "pr" ≠ nm "col2" := by decide
theorem ne_pr_c : nm "pr" ≠ nm "c" := by decide
theorem ne_L_H : nm "L" ≠ nm "H" := by decide
theorem ne_L_col : nm "L" ≠ nm "col" := by decide
theorem ne_L_dg : nm "L" ≠ nm "dg" := by decide
theorem ne_L_col2 : nm "L" ≠ nm "col2" := by decide
theorem ne_L_c : nm "L" ≠ nm "c" := by decide
theorem ne_H_col : nm "H" ≠ nm "col" := by decide
theorem ne_H_dg : nm "H" ≠ nm "dg" := by decide
theorem ne_H_col2 : nm "H" ≠ nm "col2" := by decide
theorem ne_H_c : nm "H" ≠ nm "c" := by decide
theorem ne_col_dg : nm "col" ≠ nm "dg" := by decide
theorem ne_col_col2 : nm "col" ≠ nm "col2" := by decide
theorem ne_col_c : nm "col" ≠ nm "c" := by decide
theorem ne_dg_col2 : nm "dg" ≠ nm "col2" := by decide
theorem ne_dg_c : nm "dg" ≠ nm "c" := by decide
theorem ne_col2_c : nm "col2" ≠ nm "c" := by decide

theorem runL_colEndM_eq (senv : SEnv) (m : MlS) (h1 : m ≠ nm "pr") (h2 : m ≠ nm "L")
    (h3 : m ≠ nm "H") (h4 : m ≠ nm "col") (h5 : m ≠ nm "dg") (h6 : m ≠ nm "col2")
    (h7 : m ≠ nm "c") (env : Env) :
    runL senv env (colEndM m) =
      let col := env (nm "L") + env (nm "c")
      let dg := col &&& BitVec.ofNat 64 4294967295
      let mv := (dg * BitVec.ofNat 64 3834012553) &&& BitVec.ofNat 64 4294967295
      let pr := mv * BitVec.ofNat 64 3632069959
      let col2 := dg + (pr &&& BitVec.ofNat 64 4294967295)
      let c' := (col >>> (32 : Nat)) + (env (nm "H") + ((col2 >>> (32 : Nat)) + (pr >>> (32 : Nat))))
      Function.update (Function.update (Function.update (Function.update (Function.update
        (Function.update (Function.update (Function.update env (nm "col") col) (nm "dg") dg) m mv)
        (nm "pr") pr) (nm "col2") col2) (nm "c") c') (nm "L") 0) (nm "H") 0 := by
  simp only [colEndM, runL, evW_mul2, evW_add2, evW_add4, evW_and2, evW_lv, evW_cw, evW_M32,
    evW_lsr32, Function.update_apply, ne_pr_L, (ne_pr_L).symm, ne_pr_H, (ne_pr_H).symm, ne_pr_col, (ne_pr_col).symm, ne_pr_dg, (ne_pr_dg).symm, ne_pr_col2, (ne_pr_col2).symm, ne_pr_c, (ne_pr_c).symm, ne_L_H, (ne_L_H).symm, ne_L_col, (ne_L_col).symm, ne_L_dg, (ne_L_dg).symm, ne_L_col2, (ne_L_col2).symm, ne_L_c, (ne_L_c).symm, ne_H_col, (ne_H_col).symm, ne_H_dg, (ne_H_dg).symm, ne_H_col2, (ne_H_col2).symm, ne_H_c, (ne_H_c).symm, ne_col_dg, (ne_col_dg).symm, ne_col_col2, (ne_col_col2).symm, ne_col_c, (ne_col_c).symm, ne_dg_col2, (ne_dg_col2).symm, ne_dg_c, (ne_dg_c).symm, ne_col2_c, (ne_col2_c).symm, h1, h2, h3, h4, h5, h6, h7, h1.symm, h2.symm,
    h3.symm, h4.symm, h5.symm, h6.symm, h7.symm, if_true, if_false]
  rfl

theorem runL_colEndU_eq (senv : SEnv) (u : MlS) (h1 : u ≠ nm "pr") (h2 : u ≠ nm "L")
    (h3 : u ≠ nm "H") (h4 : u ≠ nm "col") (h7 : u ≠ nm "c") (env : Env) :
    runL senv env (colEndU u) =
      let col := env (nm "L") + env (nm "c")
      let uv := col &&& BitVec.ofNat 64 4294967295
      let c' := (col >>> (32 : Nat)) + env (nm "H")
      Function.update (Function.update (Function.update (Function.update
        (Function.update env (nm "col") col) u uv) (nm "c") c') (nm "L") 0) (nm "H") 0 := by
  simp only [colEndU, runL, evW_add2, evW_and2, evW_lv, evW_cw, evW_M32,
    evW_lsr32, Function.update_apply, ne_pr_L, (ne_pr_L).symm, ne_pr_H, (ne_pr_H).symm, ne_pr_col, (ne_pr_col).symm, ne_pr_dg, (ne_pr_dg).symm, ne_pr_col2, (ne_pr_col2).symm, ne_pr_c, (ne_pr_c).symm, ne_L_H, (ne_L_H).symm, ne_L_col, (ne_L_col).symm, ne_L_dg, (ne_L_dg).symm, ne_L_col2, (ne_L_col2).symm, ne_L_c, (ne_L_c).symm, ne_H_col, (ne_H_col).symm, ne_H_dg, (ne_H_dg).symm, ne_H_col2, (ne_H_col2).symm, ne_H_c, (ne_H_c).symm, ne_col_dg, (ne_col_dg).symm, ne_col_col2, (ne_col_col2).symm, ne_col_c, (ne_col_c).symm, ne_dg_col2, (ne_dg_col2).symm, ne_dg_c, (ne_dg_c).symm, ne_col2_c, (ne_col2_c).symm, h1, h2, h3, h4, h7, h1.symm, h2.symm,
    h3.symm, h4.symm, h7.symm, if_true, if_false]
  rfl

theorem blockM_spec (senv : SEnv) (m : MlS) (h1 : m ≠ nm "pr") (h2 : m ≠ nm "L")
    (h3 : m ≠ nm "H") (h4 : m ≠ nm "col") (h5 : m ≠ nm "dg") (h6 : m ≠ nm "col2")
    (h7 : m ≠ nm "c") (ps : List (ExpHOL 64 × ExpHOL 64)) (env : Env)
    (hfac : ∀ p ∈ ps, isFactor (scrM m) p.1 = true ∧ isFactor (scrM m) p.2 = true ∧
      (evW env senv p.1).toNat < 2 ^ 32 ∧ (evW env senv p.2).toNat < 2 ^ 32)
    (hlen : ps.length ≤ 16) (hL : env (nm "L") = 0) (hH : env (nm "H") = 0)
    (hc : (env (nm "c")).toNat < 2 ^ 37) :
    (runL senv env (macList ps ++ colEndM m)) (nm "L") = 0 ∧
      (runL senv env (macList ps ++ colEndM m)) (nm "H") = 0 ∧
      ((runL senv env (macList ps ++ colEndM m)) m).toNat < 2 ^ 32 ∧
      ((runL senv env (macList ps ++ colEndM m)) (nm "c")).toNat < 2 ^ 37 ∧
      sumP env senv ps + (env (nm "c")).toNat +
          ((runL senv env (macList ps ++ colEndM m)) m).toNat * 3632069959 =
        2 ^ 32 * ((runL senv env (macList ps ++ colEndM m)) (nm "c")).toNat ∧
      ∀ n, n ∉ scrM m → (runL senv env (macList ps ++ colEndM m)) n = env n := by
  have hX : nm "pr" ∈ scrM m ∧ nm "L" ∈ scrM m ∧ nm "H" ∈ scrM m := by simp [scrM]
  have hL0 : (env (nm "L")).toNat = 0 := by rw [hL]; rfl
  have hH0 : (env (nm "H")).toNat = 0 := by rw [hH]; rfl
  obtain ⟨i1, i2, i3, i4⟩ := runL_macList senv (scrM m) hX ps env hfac (by omega) (by omega)
  rw [runL_append, runL_colEndM_eq senv m h1 h2 h3 h4 h5 h6 h7]
  generalize runL senv env (macList ps) = e1 at i1 i2 i3 i4
  have hc1 : e1 (nm "c") = env (nm "c") := i4 _ ne_pr_c.symm ne_L_c.symm ne_H_c.symm
  obtain ⟨a1, a2, a3⟩ := colM_arith (e1 (nm "L")) (e1 (nm "H")) (e1 (nm "c")) (by omega)
    (by omega) (by rw [hc1]; exact hc)
  simp only [Function.update_apply, ne_pr_L, (ne_pr_L).symm, ne_pr_H, (ne_pr_H).symm, ne_pr_col, (ne_pr_col).symm, ne_pr_dg, (ne_pr_dg).symm, ne_pr_col2, (ne_pr_col2).symm, ne_pr_c, (ne_pr_c).symm, ne_L_H, (ne_L_H).symm, ne_L_col, (ne_L_col).symm, ne_L_dg, (ne_L_dg).symm, ne_L_col2, (ne_L_col2).symm, ne_L_c, (ne_L_c).symm, ne_H_col, (ne_H_col).symm, ne_H_dg, (ne_H_dg).symm, ne_H_col2, (ne_H_col2).symm, ne_H_c, (ne_H_c).symm, ne_col_dg, (ne_col_dg).symm, ne_col_col2, (ne_col_col2).symm, ne_col_c, (ne_col_c).symm, ne_dg_col2, (ne_dg_col2).symm, ne_dg_c, (ne_dg_c).symm, ne_col2_c, (ne_col2_c).symm, h1, h2, h3, h4, h5, h6, h7, h1.symm, h2.symm,
    h3.symm, h4.symm, h5.symm, h6.symm, h7.symm, if_true, if_false]
  refine ⟨trivial, trivial, a1, a2, ?_, ?_⟩
  · rw [← a3, hc1]; omega
  · intro n hn
    simp only [scrM, List.mem_cons, List.not_mem_nil, or_false, not_or] at hn
    obtain ⟨n1, n2, n3, n4, n5, n6, n7, n8⟩ := hn
    simp only [n1, n2, n3, n4, n5, n6, n7, n8, if_false]
    exact i4 n n1 n2 n3

theorem blockU_spec (senv : SEnv) (u : MlS) (h1 : u ≠ nm "pr") (h2 : u ≠ nm "L")
    (h3 : u ≠ nm "H") (h4 : u ≠ nm "col") (h7 : u ≠ nm "c")
    (ps : List (ExpHOL 64 × ExpHOL 64)) (env : Env)
    (hfac : ∀ p ∈ ps, isFactor (scrU u) p.1 = true ∧ isFactor (scrU u) p.2 = true ∧
      (evW env senv p.1).toNat < 2 ^ 32 ∧ (evW env senv p.2).toNat < 2 ^ 32)
    (hlen : ps.length ≤ 16) (hL : env (nm "L") = 0) (hH : env (nm "H") = 0)
    (hc : (env (nm "c")).toNat < 2 ^ 37) :
    (runL senv env (macList ps ++ colEndU u)) (nm "L") = 0 ∧
      (runL senv env (macList ps ++ colEndU u)) (nm "H") = 0 ∧
      ((runL senv env (macList ps ++ colEndU u)) u).toNat < 2 ^ 32 ∧
      ((runL senv env (macList ps ++ colEndU u)) (nm "c")).toNat < 2 ^ 37 ∧
      sumP env senv ps + (env (nm "c")).toNat =
        ((runL senv env (macList ps ++ colEndU u)) u).toNat +
          2 ^ 32 * ((runL senv env (macList ps ++ colEndU u)) (nm "c")).toNat ∧
      ∀ n, n ∉ scrU u → (runL senv env (macList ps ++ colEndU u)) n = env n := by
  have hX : nm "pr" ∈ scrU u ∧ nm "L" ∈ scrU u ∧ nm "H" ∈ scrU u := by simp [scrU]
  have hL0 : (env (nm "L")).toNat = 0 := by rw [hL]; rfl
  have hH0 : (env (nm "H")).toNat = 0 := by rw [hH]; rfl
  obtain ⟨i1, i2, i3, i4⟩ := runL_macList senv (scrU u) hX ps env hfac (by omega) (by omega)
  rw [runL_append, runL_colEndU_eq senv u h1 h2 h3 h4 h7]
  generalize runL senv env (macList ps) = e1 at i1 i2 i3 i4
  have hc1 : e1 (nm "c") = env (nm "c") := i4 _ ne_pr_c.symm ne_L_c.symm ne_H_c.symm
  obtain ⟨a1, a2, a3⟩ := colU_arith (e1 (nm "L")) (e1 (nm "H")) (e1 (nm "c")) (by omega)
    (by omega) (by rw [hc1]; exact hc)
  simp only [Function.update_apply, ne_pr_L, (ne_pr_L).symm, ne_pr_H, (ne_pr_H).symm, ne_pr_col, (ne_pr_col).symm, ne_pr_dg, (ne_pr_dg).symm, ne_pr_col2, (ne_pr_col2).symm, ne_pr_c, (ne_pr_c).symm, ne_L_H, (ne_L_H).symm, ne_L_col, (ne_L_col).symm, ne_L_dg, (ne_L_dg).symm, ne_L_col2, (ne_L_col2).symm, ne_L_c, (ne_L_c).symm, ne_H_col, (ne_H_col).symm, ne_H_dg, (ne_H_dg).symm, ne_H_col2, (ne_H_col2).symm, ne_H_c, (ne_H_c).symm, ne_col_dg, (ne_col_dg).symm, ne_col_col2, (ne_col_col2).symm, ne_col_c, (ne_col_c).symm, ne_dg_col2, (ne_dg_col2).symm, ne_dg_c, (ne_dg_c).symm, ne_col2_c, (ne_col2_c).symm, h1, h2, h3, h4, h7, h1.symm, h2.symm,
    h3.symm, h4.symm, h7.symm, if_true, if_false]
  refine ⟨trivial, trivial, a1, a2, ?_, ?_⟩
  · rw [← a3, hc1]; omega
  · intro n hn
    simp only [scrU, List.mem_cons, List.not_mem_nil, or_false, not_or] at hn
    obtain ⟨n1, n2, n3, n4, n5, n6⟩ := hn
    simp only [n1, n2, n3, n4, n5, n6, if_false]
    exact i4 n n1 n2 n3

end InitECandidate.Solver.Spec.Fq12
