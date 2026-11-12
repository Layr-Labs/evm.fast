import InitECandidate.Solver.Spec.Fq12.FqMulChain
import InitECandidate.Solver.Spec.ModInv
import InitECandidate.Solver.Spec.HoareExt

/-!
# The return specification of `fq_mul`

`funRet_fq_mul`: for 4-limb arguments `a`, `b` with `a < p` or `b < p` (`p = fqP`, the
BN254 base-field prime), `fq_mul(a, b)` returns the reduced Montgomery product: a 4-limb
`r` with `r < p` and `r · 2²⁵⁶ ≡ a · b (mod p)`.

The body runs as straight-line code (`eval_mkDecs`, `eval_mkChain`), the column blocks
give the Montgomery identity `a · b + m · p = 2²⁵⁶ · t` (`fqMul_chain`), and the tail
packs `t` into limbs and subtracts `p` once if `t ≥ p` (`funRet_u256_lt`,
`funRet_u256_sub`).
-/

set_option linter.unusedSimpArgs false
set_option maxRecDepth 100000

namespace InitECandidate.Solver.Spec.Fq12
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-! ## Reading single names out of `runL` -/

theorem runL_not_mem (senv : SEnv) (n : MlS) :
    ∀ (l : List Asg) (env : Env), (l.map Prod.fst).contains n = false → runL senv env l n = env n
  | [], _, _ => rfl
  | (m, e) :: l, env, h => by
      simp only [List.map_cons, List.contains_cons, Bool.or_eq_false_iff, beq_eq_false_iff_ne,
        ne_eq] at h
      simp only [runL]
      rw [runL_not_mem senv n l _ h.2, Function.update_of_ne h.1]

theorem runL_get (senv : SEnv) (n : MlS) (e : ExpHOL 64) :
    ∀ (i : Nat) (l : List Asg) (env : Env), l[i]? = some (n, e) →
      ((l.drop (i + 1)).map Prod.fst).contains n = false →
      runL senv env l n = evW (runL senv env (l.take i)) senv e
  | 0, (m, e') :: l, env, h, hn => by
      simp only [List.getElem?_cons_zero, Option.some.injEq, Prod.mk.injEq] at h
      obtain ⟨rfl, rfl⟩ := h
      simp only [List.drop_succ_cons, List.drop_zero] at hn
      simp only [runL, List.take_zero]
      rw [runL_not_mem senv m l _ hn, Function.update_self]
  | i + 1, (m, e') :: l, env, h, hn => by
      simp only [List.getElem?_cons_succ] at h
      simp only [List.drop_succ_cons] at hn
      simp only [runL, List.take_succ_cons]
      exact runL_get senv n e i l _ h hn

theorem evW_rfield (env : Env) (senv : SEnv) (i : Nat) (x : MlS) :
    evW env senv (.rfield i (lv x)) = (senv x).getD i 0 := rfl

theorem decl_and (env : Env) (senv : SEnv) (i : Nat) (x : MlS) :
    evW env senv (.op .and [.rfield i (lv x), M32]) =
      (senv x).getD i 0 &&& BitVec.ofNat 64 4294967295 := by
  rw [evW_and2, evW_rfield, evW_M32]

theorem decl_shr (env : Env) (senv : SEnv) (i : Nat) (x : MlS) :
    evW env senv (.shift .lsr (.rfield i (lv x)) (cw 32)) = (senv x).getD i 0 >>> (32 : Nat) := by
  rw [evW_lsr32, evW_rfield]

/-! ## Arithmetic of the result -/

theorem toNat_or_shl (x y : BitVec 64) (hx : x.toNat < 2 ^ 32) (hy : y.toNat < 2 ^ 32) :
    (x ||| (y <<< (32 : Nat))).toNat = x.toNat + 2 ^ 32 * y.toNat := by
  rw [BitVec.toNat_or, BitVec.toNat_shiftLeft, Nat.shiftLeft_eq]
  have h1 : y.toNat * 2 ^ 32 % 2 ^ 64 = 2 ^ 32 * y.toNat := by
    rw [Nat.mod_eq_of_lt (by
      calc y.toNat * 2 ^ 32 < 2 ^ 32 * 2 ^ 32 := Nat.mul_lt_mul_of_pos_right hy (by norm_num)
        _ = 2 ^ 64 := by norm_num)]
    exact Nat.mul_comm _ _
  rw [h1, Nat.or_comm, ← Nat.two_pow_add_eq_or_of_lt hx]
  omega

theorem split64 (w : BitVec 64) :
    w.toNat = (w &&& BitVec.ofNat 64 4294967295).toNat + 4294967296 * (w >>> (32 : Nat)).toNat := by
  rw [toNat_andM, toNat_lsr32]
  have := Nat.mod_add_div w.toNat (2 ^ 32)
  omega

theorem lt32_and (w : BitVec 64) : (w &&& BitVec.ofNat 64 4294967295).toNat < 2 ^ 32 := by
  rw [toNat_andM]; exact Nat.mod_lt _ (by norm_num)

theorem lt32_shr (w : BitVec 64) : (w >>> (32 : Nat)).toNat < 2 ^ 32 := by
  rw [toNat_lsr32]
  have := w.isLt
  rw [Nat.div_lt_iff_lt_mul (by norm_num)]
  calc w.toNat < 2 ^ 64 := this
    _ = 2 ^ 32 * 2 ^ 32 := by norm_num

theorem fqP_lt : fqP < 2 ^ 255 := by unfold fqP; norm_num

theorem d32_8_lt (x0 x1 x2 x3 x4 x5 x6 x7 : Nat) (h0 : x0 < 2 ^ 32) (h1 : x1 < 2 ^ 32) (h2 : x2 < 2 ^ 32) (h3 : x3 < 2 ^ 32) (h4 : x4 < 2 ^ 32) (h5 : x5 < 2 ^ 32) (h6 : x6 < 2 ^ 32) (h7 : x7 < 2 ^ 32) :
    x0 + 4294967296 * (x1 + 4294967296 * (x2 + 4294967296 * (x3 + 4294967296 * (x4 + 4294967296 * (x5 + 4294967296 * (x6 + 4294967296 * (x7))))))) < 2 ^ 256 := by omega

theorem c_lt_of_T (x0 x1 x2 x3 x4 x5 x6 x7 p : Nat) (hT : x0 + 4294967296 * (x1 + 4294967296 * (x2 + 4294967296 * (x3 + 4294967296 * (x4 + 4294967296 * (x5 + 4294967296 * (x6 + 4294967296 * (x7))))))) < 2 * p) (hp : p < 2 ^ 255) :
    x7 < 2 ^ 32 := by omega

theorem wn_pack_eq (x0 x1 x2 x3 x4 x5 x6 x7 : Nat) :
    x0 + 2 ^ 32 * x1 + 2 ^ 64 * (x2 + 2 ^ 32 * x3 + 2 ^ 64 * (x4 + 2 ^ 32 * x5 + 2 ^ 64 *
      (x6 + 2 ^ 32 * x7 + 2 ^ 64 * 0))) = x0 + 4294967296 * (x1 + 4294967296 * (x2 + 4294967296 * (x3 + 4294967296 * (x4 + 4294967296 * (x5 + 4294967296 * (x6 + 4294967296 * (x7))))))) := by omega

/-- The Montgomery identity bounds and reduces the product. -/
theorem mont_result {A B Mv T : Nat} (hA : A < 2 ^ 256) (hB : B < 2 ^ 256)
    (hAB : A < fqP ∨ B < fqP) (hM : Mv < 2 ^ 256)
    (hid : A * B + Mv * fqP = 2 ^ 256 * T) :
    T < 2 * fqP ∧ (T * 2 ^ 256) % fqP = (A * B) % fqP := by
  have hp := fqP_pos
  have h1 : A * B < 2 ^ 256 * fqP := by
    rcases hAB with h | h
    · calc A * B < fqP * 2 ^ 256 := Nat.mul_lt_mul'' h hB
        _ = 2 ^ 256 * fqP := Nat.mul_comm _ _
    · exact Nat.mul_lt_mul'' hA h
  have h2 : Mv * fqP < 2 ^ 256 * fqP := Nat.mul_lt_mul_of_pos_right hM hp
  refine ⟨?_, ?_⟩
  · have : 2 ^ 256 * T < 2 ^ 256 * (2 * fqP) := by rw [← hid]; omega
    exact Nat.lt_of_mul_lt_mul_left this
  · rw [Nat.mul_comm T, ← hid, Nat.add_mul_mod_self_right]

/-- `fq_mul` returns a reduced Montgomery product when one argument is reduced. -/
def FqMulRet (vs : List (ValueHOL 64)) (v : ValueHOL 64) : Prop :=
  ∃ as bs : List (BitVec 64), as.length = 4 ∧ bs.length = 4 ∧ vs = [wv as, wv bs] ∧
    (wn as < fqP ∨ wn bs < fqP →
      ∃ rs : List (BitVec 64), rs.length = 4 ∧ v = wv rs ∧ wn rs < fqP ∧
        (wn rs * 2 ^ 256) % fqP = (wn as * wn bs) % fqP)

theorem wn_fqPE : wn [4332616871279656263, 10917124144477883021, 13281191951274694749,
    3486998266802970665] = fqP := by
  simp only [wn_cons, wn_nil]; unfold fqP; rfl

theorem ev_fqPE {σ : Type} (s : PanSemStateFiniteExact 64 σ) :
    ev s fqPE = some (wv [4332616871279656263, 10917124144477883021, 13281191951274694749,
      3486998266802970665]) := rfl

/-- The tail of `fq_mul`: `var lt = u256_lt(r, P); if lt == 0 { return u256_sub(r, P) }
return r`, for `r < 2p`, returns `r mod p`. -/
def fqMulK : ProgHOL 64 :=
  .decCall (nm "lt") .one (nm "u256_lt") [lv (nm "r"), fqPE]
    (.seq (.ite (.cmp .equal (lv (nm "lt")) (cw 0))
        (.call none (nm "u256_sub") [lv (nm "r"), fqPE]) .skip)
      (.return (lv (nm "r"))))

theorem fqMul_tail {σ : Type} {X : Ctx 64} (hC : X.code.lookup = guestCode)
    (s3 : PanSemStateFiniteExact 64 σ) (hs3 : InCtx s3 X) (ws : List (BitVec 64))
    (hws : ws.length = 4) (hr : s3.locals.lookup (nm "r") = some (wv ws)) (AB : Nat)
    (hT : wn ws < 2 * fqP) (hmod : (wn ws * 2 ^ 256) % fqP = AB % fqP) (v : ValueHOL 64)
    (hv : (evaluateHOLFiniteState s3 fqMulK).1 = some (.returned v)) :
    ∃ rs : List (BitVec 64), rs.length = 4 ∧ v = wv rs ∧ wn rs < fqP ∧
      (wn rs * 2 ^ 256) % fqP = AB % fqP := by
  let G : ValueHOL 64 → Prop := fun v => ∃ rs : List (BitVec 64), rs.length = 4 ∧ v = wv rs ∧
    wn rs < fqP ∧ (wn rs * 2 ^ 256) % fqP = AB % fqP
  have hP : wn [4332616871279656263, 10917124144477883021, 13281191951274694749,
      3486998266802970665] = fqP := wn_fqPE
  have hlt256 := wn_lt4 hws
  have H : Hoare σ X (fun t => t = s3) fqMulK (fun r _ => ∀ v, r = some (.returned v) → G v) := by
    refine hoare_decCall (funRet_u256_lt hC) ?_
    intro t _ htt vs hvs w hR _
    subst htt
    have hvs' : evs t [lv (nm "r"), fqPE] = some [wv ws, wv [4332616871279656263,
        10917124144477883021, 13281191951274694749, 3486998266802970665]] :=
      evs_cons (by rw [ev_lv]; exact hr) (evs_cons (ev_fqPE _) evs_nil)
    rw [hvs'] at hvs
    cases hvs
    obtain ⟨as', bs', _, _, hvs'', rfl⟩ := hR
    simp only [List.cons.injEq, and_true] at hvs''
    have e1 := wv_inj hvs''.1
    have e2 := wv_inj hvs''.2
    subst e1; subst e2
    rw [hP]
    -- after the call: `lt` holds the comparison
    have hlk : ∀ t' : PanSemStateFiniteExact 64 σ, t'.locals = t.locals.update (nm "lt",
        .val (.word (if wn ws < fqP then 1 else 0))) →
        t'.locals.lookup (nm "lt") = some (.val (.word (if wn ws < fqP then 1 else 0))) ∧
        t'.locals.lookup (nm "r") = some (wv ws) := by
      intro t' ht'
      rw [ht', lookup_update_self, lookup_update_ne _ _ (by decide)]
      exact ⟨rfl, hr⟩
    refine hoare_seq (R := fun r t' => (r = none → wn ws < fqP ∧
        t'.locals.lookup (nm "r") = some (wv ws)) ∧ (∀ v, r = some (.returned v) → G v))
      ?_ (fun r t' _ _ _ h => h.2) ?_
    · refine hoare_ite ?_ ?_
      · refine hoare_tailCall (funSpec_of_funRet (funRet_u256_sub hC)) ?_
        intro t' _ ⟨ht', c, hc, hc0⟩ vs2 hvs2 callee v2 st hR2 _
        obtain ⟨hl1, hl2⟩ := hlk t' ht'
        rw [ev_ult hl1] at hc
        have hge : ¬ wn ws < fqP := by
          intro h
          rw [if_pos h] at hc
          exact hc0 (by simpa using hc.symm)
        have hvs2' : evs t' [lv (nm "r"), fqPE] = some [wv ws, wv [4332616871279656263,
            10917124144477883021, 13281191951274694749, 3486998266802970665]] :=
          evs_cons (by rw [ev_lv]; exact hl2) (evs_cons (ev_fqPE _) evs_nil)
        rw [hvs2'] at hvs2
        cases hvs2
        obtain ⟨as', bs', _, _, hvs3, ds, es, hds, hes, rfl, hwn⟩ := hR2 v2 rfl
        simp only [List.cons.injEq, and_true] at hvs3
        have e1 := wv_inj hvs3.1
        have e2 := wv_inj hvs3.2
        subst e1; subst e2
        have : es = [] := List.eq_nil_of_length_eq_zero hes
        subst this
        rw [hP] at hwn
        refine And.intro (fun h => absurd h (by simp)) (fun v' hv' => ?_)
        simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hv'
        subst hv'
        have hpl : fqP < 2 ^ 256 := by have := fqP_lt; omega
        rw [sub_of_le hlt256 hpl (by omega)] at hwn
        refine ⟨ds, hds, by simp, by omega, ?_⟩
        rw [hwn, ← hmod]
        have hle : fqP ≤ wn ws := by omega
        rw [Nat.sub_mul]
        have : fqP * 2 ^ 256 ≤ wn ws * 2 ^ 256 := Nat.mul_le_mul_right _ hle
        rw [show wn ws * 2 ^ 256 = (wn ws * 2 ^ 256 - fqP * 2 ^ 256) + fqP * 2 ^ 256 by omega,
          Nat.add_mul_mod_self_left, Nat.add_sub_cancel]
      · refine hoare_skip fun t' _ ⟨ht', hc⟩ => ⟨fun _ => ?_, fun v hv => by cases hv⟩
        obtain ⟨hl1, hl2⟩ := hlk t' ht'
        rw [ev_ult hl1] at hc
        refine ⟨?_, hl2⟩
        by_contra h
        rw [if_neg h] at hc
        simp at hc
    · refine hoare_return fun t' _ hR v hv => ?_
      obtain ⟨hlt, hl⟩ := hR.1 rfl
      intro v' hv'
      simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hv'
      subst hv'
      rw [ev_lv, hl] at hv
      simp only [Option.some.injEq] at hv
      subst hv
      exact ⟨ws, hws, rfl, hlt, hmod⟩
  exact H s3 hs3 rfl (by rw [hv]; trivial) v hv

variable {σ : Type}

set_option maxHeartbeats 2000000 in
/-- **Return specification of `fq_mul`.** -/
theorem funRet_fq_mul {X : Ctx 64} (hC : X.code.lookup = guestCode) :
    FunRet σ X (nm "fq_mul") FqMulRet := by
  intro vs body callee rs hl s hs hloc _ v hv
  rw [hC] at hl
  obtain ⟨rfl, rfl, A, B, rfl, hA, hB, hla, hlb⟩ := lookupCode_two code_fq_mul (by decide) hl
  obtain ⟨as, has, rfl⟩ := eq_wv_of_shapeEq hA
  obtain ⟨bs, hbs, rfl⟩ := eq_wv_of_shapeEq hB
  refine ⟨as, bs, has, hbs, rfl, fun hlt => ?_⟩
  obtain ⟨a0, a1, a2, a3, rfl⟩ := list4 has
  obtain ⟨b0, b1, b2, b3, rfl⟩ := list4 hbs
  let senv : SEnv := fun n => if n = nm "a" then [a0, a1, a2, a3] else [b0, b1, b2, b3]
  have hsa : senv (nm "a") = [a0, a1, a2, a3] := if_pos rfl
  have hsb : senv (nm "b") = [b0, b1, b2, b3] := if_neg (by decide)
  have hA0 : Agree s (fun _ => 0) senv [] [nm "a", nm "b"] := by
    refine ⟨fun n hn => by simp at hn, fun n hn => ?_⟩
    simp only [List.mem_cons, List.not_mem_nil, or_false] at hn
    rcases hn with rfl | rfl
    · rw [hloc, hsa]; exact ⟨hla, rfl⟩
    · rw [hloc, hsb]; exact ⟨hlb, rfl⟩
  obtain ⟨s1, e1, ag1, hs1⟩ := eval_mkDecs (mkChain fqMulChain fqMulTail) fqMulDecs [] s
    (fun _ => 0) (by decide) hA0
  obtain ⟨s2, e2, ag2, hs2⟩ := eval_mkChain fqMulTail fqMulChain s1 _ (by decide +kernel) ag1
  rw [show fqMulBody = mkDecs fqMulDecs (mkChain fqMulChain fqMulTail) from rfl, e1, e2] at hv
  -- the environment after the declarations
  generalize hE1 : runL senv (fun _ => 0) fqMulDecs = env1 at ag2
  have eL : env1 (nm "L") = 0 := by
    rw [← hE1, runL_get senv (nm "L") _ 17 fqMulDecs _ rfl (by decide)]; rfl
  have eH : env1 (nm "H") = 0 := by
    rw [← hE1, runL_get senv (nm "H") _ 18 fqMulDecs _ rfl (by decide)]; rfl
  have ec : env1 (nm "c") = 0 := by
    rw [← hE1, runL_get senv (nm "c") _ 19 fqMulDecs _ rfl (by decide)]; rfl
  have e_a0 : env1 (nm "a0") = a0 &&& BitVec.ofNat 64 4294967295 := by
    rw [← hE1, runL_get senv (nm "a0") _ 0 fqMulDecs _ rfl (by decide), decl_and, hsa]; rfl
  have e_a1 : env1 (nm "a1") = a0 >>> (32 : Nat) := by
    rw [← hE1, runL_get senv (nm "a1") _ 1 fqMulDecs _ rfl (by decide), decl_shr, hsa]; rfl
  have e_a2 : env1 (nm "a2") = a1 &&& BitVec.ofNat 64 4294967295 := by
    rw [← hE1, runL_get senv (nm "a2") _ 2 fqMulDecs _ rfl (by decide), decl_and, hsa]; rfl
  have e_a3 : env1 (nm "a3") = a1 >>> (32 : Nat) := by
    rw [← hE1, runL_get senv (nm "a3") _ 3 fqMulDecs _ rfl (by decide), decl_shr, hsa]; rfl
  have e_a4 : env1 (nm "a4") = a2 &&& BitVec.ofNat 64 4294967295 := by
    rw [← hE1, runL_get senv (nm "a4") _ 4 fqMulDecs _ rfl (by decide), decl_and, hsa]; rfl
  have e_a5 : env1 (nm "a5") = a2 >>> (32 : Nat) := by
    rw [← hE1, runL_get senv (nm "a5") _ 5 fqMulDecs _ rfl (by decide), decl_shr, hsa]; rfl
  have e_a6 : env1 (nm "a6") = a3 &&& BitVec.ofNat 64 4294967295 := by
    rw [← hE1, runL_get senv (nm "a6") _ 6 fqMulDecs _ rfl (by decide), decl_and, hsa]; rfl
  have e_a7 : env1 (nm "a7") = a3 >>> (32 : Nat) := by
    rw [← hE1, runL_get senv (nm "a7") _ 7 fqMulDecs _ rfl (by decide), decl_shr, hsa]; rfl
  have e_b0 : env1 (nm "b0") = b0 &&& BitVec.ofNat 64 4294967295 := by
    rw [← hE1, runL_get senv (nm "b0") _ 8 fqMulDecs _ rfl (by decide), decl_and, hsb]; rfl
  have e_b1 : env1 (nm "b1") = b0 >>> (32 : Nat) := by
    rw [← hE1, runL_get senv (nm "b1") _ 9 fqMulDecs _ rfl (by decide), decl_shr, hsb]; rfl
  have e_b2 : env1 (nm "b2") = b1 &&& BitVec.ofNat 64 4294967295 := by
    rw [← hE1, runL_get senv (nm "b2") _ 10 fqMulDecs _ rfl (by decide), decl_and, hsb]; rfl
  have e_b3 : env1 (nm "b3") = b1 >>> (32 : Nat) := by
    rw [← hE1, runL_get senv (nm "b3") _ 11 fqMulDecs _ rfl (by decide), decl_shr, hsb]; rfl
  have e_b4 : env1 (nm "b4") = b2 &&& BitVec.ofNat 64 4294967295 := by
    rw [← hE1, runL_get senv (nm "b4") _ 12 fqMulDecs _ rfl (by decide), decl_and, hsb]; rfl
  have e_b5 : env1 (nm "b5") = b2 >>> (32 : Nat) := by
    rw [← hE1, runL_get senv (nm "b5") _ 13 fqMulDecs _ rfl (by decide), decl_shr, hsb]; rfl
  have e_b6 : env1 (nm "b6") = b3 &&& BitVec.ofNat 64 4294967295 := by
    rw [← hE1, runL_get senv (nm "b6") _ 14 fqMulDecs _ rfl (by decide), decl_and, hsb]; rfl
  have e_b7 : env1 (nm "b7") = b3 >>> (32 : Nat) := by
    rw [← hE1, runL_get senv (nm "b7") _ 15 fqMulDecs _ rfl (by decide), decl_shr, hsb]; rfl
  obtain ⟨u0b, u1b, u2b, u3b, u4b, u5b, u6b, m0b, m1b, m2b, m3b, m4b, m5b, m6b, m7b, cb, hid⟩ :=
    fqMul_chain senv env1 eL eH ec (by rw [e_a0]; exact lt32_and _) (by rw [e_a1]; exact lt32_shr _) (by rw [e_a2]; exact lt32_and _) (by rw [e_a3]; exact lt32_shr _) (by rw [e_a4]; exact lt32_and _) (by rw [e_a5]; exact lt32_shr _) (by rw [e_a6]; exact lt32_and _) (by rw [e_a7]; exact lt32_shr _) (by rw [e_b0]; exact lt32_and _) (by rw [e_b1]; exact lt32_shr _) (by rw [e_b2]; exact lt32_and _) (by rw [e_b3]; exact lt32_shr _) (by rw [e_b4]; exact lt32_and _) (by rw [e_b5]; exact lt32_shr _) (by rw [e_b6]; exact lt32_and _) (by rw [e_b7]; exact lt32_shr _)
  rw [e_a0, e_a1, e_a2, e_a3, e_a4, e_a5, e_a6, e_a7, e_b0, e_b1, e_b2, e_b3, e_b4, e_b5, e_b6, e_b7] at hid
  generalize runL senv env1 fqMulChain = env2 at ag2 u0b u1b u2b u3b u4b u5b u6b m0b m1b m2b m3b m4b m5b m6b m7b cb hid
  -- the numbers
  have hAn : wn [a0, a1, a2, a3] = (a0 &&& BitVec.ofNat 64 4294967295).toNat + 4294967296 *
      ((a0 >>> (32 : Nat)).toNat + 4294967296 * ((a1 &&& BitVec.ofNat 64 4294967295).toNat +
      4294967296 * ((a1 >>> (32 : Nat)).toNat + 4294967296 *
      ((a2 &&& BitVec.ofNat 64 4294967295).toNat + 4294967296 * ((a2 >>> (32 : Nat)).toNat +
      4294967296 * ((a3 &&& BitVec.ofNat 64 4294967295).toNat + 4294967296 *
      (a3 >>> (32 : Nat)).toNat)))))) := by
    simp only [wn_cons, wn_nil]
    have := split64 a0; have := split64 a1; have := split64 a2; have := split64 a3
    omega
  have hBn : wn [b0, b1, b2, b3] = (b0 &&& BitVec.ofNat 64 4294967295).toNat + 4294967296 *
      ((b0 >>> (32 : Nat)).toNat + 4294967296 * ((b1 &&& BitVec.ofNat 64 4294967295).toNat +
      4294967296 * ((b1 >>> (32 : Nat)).toNat + 4294967296 *
      ((b2 &&& BitVec.ofNat 64 4294967295).toNat + 4294967296 * ((b2 >>> (32 : Nat)).toNat +
      4294967296 * ((b3 &&& BitVec.ofNat 64 4294967295).toNat + 4294967296 *
      (b3 >>> (32 : Nat)).toNat)))))) := by
    simp only [wn_cons, wn_nil]
    have := split64 b0; have := split64 b1; have := split64 b2; have := split64 b3
    omega
  rw [← hAn, ← hBn] at hid
  have hM := d32_8_lt (env2 (nm "m0")).toNat (env2 (nm "m1")).toNat (env2 (nm "m2")).toNat (env2 (nm "m3")).toNat (env2 (nm "m4")).toNat (env2 (nm "m5")).toNat (env2 (nm "m6")).toNat (env2 (nm "m7")).toNat m0b m1b m2b m3b m4b m5b m6b m7b
  have hres := mont_result (A := wn [a0, a1, a2, a3]) (B := wn [b0, b1, b2, b3])
    (Mv := (env2 (nm "m0")).toNat + 4294967296 * ((env2 (nm "m1")).toNat + 4294967296 * ((env2 (nm "m2")).toNat + 4294967296 * ((env2 (nm "m3")).toNat + 4294967296 * ((env2 (nm "m4")).toNat + 4294967296 * ((env2 (nm "m5")).toNat + 4294967296 * ((env2 (nm "m6")).toNat + 4294967296 * ((env2 (nm "m7")).toNat))))))))
    (T := (env2 (nm "u0")).toNat + 4294967296 * ((env2 (nm "u1")).toNat + 4294967296 * ((env2 (nm "u2")).toNat + 4294967296 * ((env2 (nm "u3")).toNat + 4294967296 * ((env2 (nm "u4")).toNat + 4294967296 * ((env2 (nm "u5")).toNat + 4294967296 * ((env2 (nm "u6")).toNat + 4294967296 * ((env2 (nm "c")).toNat))))))))
    (wn_lt4 rfl) (wn_lt4 rfl) hlt hM (Eq.trans hid (by norm_num))
  have hc32 : (env2 (nm "c")).toNat < 2 ^ 32 := c_lt_of_T (env2 (nm "u0")).toNat (env2 (nm "u1")).toNat (env2 (nm "u2")).toNat (env2 (nm "u3")).toNat (env2 (nm "u4")).toNat (env2 (nm "u5")).toNat (env2 (nm "u6")).toNat (env2 (nm "c")).toNat fqP hres.1 fqP_lt
  have hw0 := toNat_or_shl (env2 (nm "u0")) (env2 (nm "u1")) u0b u1b
  have hw1 := toNat_or_shl (env2 (nm "u2")) (env2 (nm "u3")) u2b u3b
  have hw2 := toNat_or_shl (env2 (nm "u4")) (env2 (nm "u5")) u4b u5b
  have hw3 := toNat_or_shl (env2 (nm "u6")) (env2 (nm "c")) u6b hc32
  have hwn : wn [(env2 (nm "u0") ||| (env2 (nm "u1") <<< (32 : Nat))), (env2 (nm "u2") ||| (env2 (nm "u3") <<< (32 : Nat))), (env2 (nm "u4") ||| (env2 (nm "u5") <<< (32 : Nat))), (env2 (nm "u6") ||| (env2 (nm "c") <<< (32 : Nat)))] = (env2 (nm "u0")).toNat + 4294967296 * ((env2 (nm "u1")).toNat + 4294967296 * ((env2 (nm "u2")).toNat + 4294967296 * ((env2 (nm "u3")).toNat + 4294967296 * ((env2 (nm "u4")).toNat + 4294967296 * ((env2 (nm "u5")).toNat + 4294967296 * ((env2 (nm "u6")).toNat + 4294967296 * ((env2 (nm "c")).toNat))))))) := by
    simp only [wn_cons, wn_nil]
    rw [hw0, hw1, hw2, hw3]
    exact wn_pack_eq (env2 (nm "u0")).toNat (env2 (nm "u1")).toNat (env2 (nm "u2")).toNat (env2 (nm "u3")).toNat (env2 (nm "u4")).toNat (env2 (nm "u5")).toNat (env2 (nm "u6")).toNat (env2 (nm "c")).toNat
  have hpack : ev s2 fqMulPack = some (wv [(env2 (nm "u0") ||| (env2 (nm "u1") <<< (32 : Nat))), (env2 (nm "u2") ||| (env2 (nm "u3") <<< (32 : Nat))), (env2 (nm "u4") ||| (env2 (nm "u5") <<< (32 : Nat))), (env2 (nm "u6") ||| (env2 (nm "c") <<< (32 : Nat)))]) := by
    show ev s2 (.rstruct _) = _
    refine ev_rstruct (evs_cons ?_ (evs_cons ?_ (evs_cons ?_ (evs_cons ?_ evs_nil)))) <;>
    · rw [ev_evW ag2 _ (by decide), evW_or2, evW_lv, evW_lsl32, evW_lv]
  rw [show fqMulTail = .dec (nm "r") (shK 4) fqMulPack fqMulK from rfl,
    eval_dec_ok hpack (by rw [shapeOf_wv]; exact shapeEq_shK 4)] at hv
  have hctx1 : InCtx s1 X := InCtx.of_eq hs (by rw [hs1]) (by rw [hs1]) (by rw [hs1])
  have hctx2 : InCtx s2 X := InCtx.of_eq hctx1 (by rw [hs2]) (by rw [hs2]) (by rw [hs2])
  exact fqMul_tail hC (setVarHOLFinite (nm "r") (wv [(env2 (nm "u0") ||| (env2 (nm "u1") <<< (32 : Nat))), (env2 (nm "u2") ||| (env2 (nm "u3") <<< (32 : Nat))), (env2 (nm "u4") ||| (env2 (nm "u5") <<< (32 : Nat))), (env2 (nm "u6") ||| (env2 (nm "c") <<< (32 : Nat)))]) s2) hctx2 [(env2 (nm "u0") ||| (env2 (nm "u1") <<< (32 : Nat))), (env2 (nm "u2") ||| (env2 (nm "u3") <<< (32 : Nat))), (env2 (nm "u4") ||| (env2 (nm "u5") <<< (32 : Nat))), (env2 (nm "u6") ||| (env2 (nm "c") <<< (32 : Nat)))] rfl (lk_set_self _ _ _) _
    (by rw [hwn]; exact hres.1) (by rw [hwn]; exact hres.2) v hv

end InitECandidate.Solver.Spec.Fq12
