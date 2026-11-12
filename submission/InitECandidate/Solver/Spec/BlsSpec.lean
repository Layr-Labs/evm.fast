import InitECandidate.Solver.Spec.CodeBls
import InitECandidate.Solver.Spec.U256

/-!
# Return specifications of the fp384 helpers

For every context with `X.code.lookup = guestCode`:

* `funRet_bls_fp_lt_raw`: returns `1` iff `a < b` as 384-bit numbers (`LtRet 6`);
* `funRet_bls_fp_sub_raw`: returns the six limbs of `(a - b) mod 2^384` followed by the
  carry word (`SubRet 6 1`);
* `funRet_bls_fp_shr1`: returns the limb-wise one-bit shift, i.e. `⌊x / 2⌋` (`ShrRet 6`);
  its body is a single `return`, so it is escape-free (`escFree_bls_fp_shr1`).
-/

namespace InitECandidate.Solver.Spec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost

set_option exponentiation.threshold 512

variable {σ : Type}

theorem list6 {as : List (BitVec 64)} (h : as.length = 6) :
    ∃ a0 a1 a2 a3 a4 a5, as = [a0, a1, a2, a3, a4, a5] := by
  match as, h with
  | [a0, a1, a2, a3, a4, a5], _ => exact ⟨a0, a1, a2, a3, a4, a5, rfl⟩

theorem lexLt6 {as bs : List (BitVec 64)} (ha : as.length = 6) (hb : bs.length = 6) :
    lexLt as bs [5, 4, 3, 2, 1] = true ↔ wn as < wn bs := by
  obtain ⟨a0, a1, a2, a3, a4, a5, rfl⟩ := list6 ha
  obtain ⟨b0, b1, b2, b3, b4, b5, rfl⟩ := list6 hb
  have := a0.isLt; have := a1.isLt; have := a2.isLt; have := a3.isLt; have := a4.isLt
  have := a5.isLt
  have := b0.isLt; have := b1.isLt; have := b2.isLt; have := b3.isLt; have := b4.isLt
  have := b5.isLt
  simp only [lexLt, List.getD_cons_succ, List.getD_cons_zero, wn_cons, wn_nil, ne_eq,
    BitVec.lt_def, ← BitVec.toNat_inj]
  split_ifs <;> simp only [decide_eq_true_eq] <;> omega

theorem funRet_bls_fp_lt_raw {X : Ctx 64} (hC : X.code.lookup = guestCode) :
    FunRet σ X (nm "bls_fp_lt_raw") (LtRet 6) := by
  intro vs body callee rs hl s _ hloc _ v hv
  rw [hC] at hl
  obtain ⟨rfl, rfl, A, B, rfl, hA, hB, hla, hlb⟩ := lookupCode_two code_bls_fp_lt_raw (by decide) hl
  obtain ⟨as, has, rfl⟩ := eq_wv_of_shapeEq hA
  obtain ⟨bs, hbs, rfl⟩ := eq_wv_of_shapeEq hB
  refine ⟨as, bs, has, hbs, rfl, ?_⟩
  have ha : s.locals.lookup (nm "a") = some (wv as) := by rw [hloc]; exact hla
  have hb : s.locals.lookup (nm "b") = some (wv bs) := by rw [hloc]; exact hlb
  have h := eval_ltChain ha hb (by omega) (by omega) [5, 4, 3, 2, 1] (by
    intro i hi; simp at hi; omega)
  rw [blsLtBody, h] at hv
  simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hv
  rw [← hv, ite_lexLt (lexLt6 has hbs)]

/-! ## `bls_fp_sub_raw` -/

def wn6 (x0 x1 x2 x3 x4 x5 : Nat) : Nat :=
  x0 + 2 ^ 64 * (x1 + 2 ^ 64 * (x2 + 2 ^ 64 * (x3 + 2 ^ 64 * (x4 + 2 ^ 64 * x5))))

theorem wn_six (w0 w1 w2 w3 w4 w5 : BitVec 64) :
    wn [w0, w1, w2, w3, w4, w5] = wn6 w0.toNat w1.toNat w2.toNat w3.toNat w4.toNat w5.toNat := by
  simp [wn6]

theorem sub6_mod (a0 a1 a2 a3 a4 a5 b0 b1 b2 b3 b4 b5 s0 s1 s2 s3 s4 s5
      c1 c2 c3 c4 c5 c6 : Nat)
    (hb0 : b0 < 2 ^ 64) (hb1 : b1 < 2 ^ 64) (hb2 : b2 < 2 ^ 64) (hb3 : b3 < 2 ^ 64)
    (hb4 : b4 < 2 ^ 64) (hb5 : b5 < 2 ^ 64)
    (hs0 : s0 < 2 ^ 64) (hs1 : s1 < 2 ^ 64) (hs2 : s2 < 2 ^ 64) (hs3 : s3 < 2 ^ 64)
    (hs4 : s4 < 2 ^ 64) (hs5 : s5 < 2 ^ 64)
    (e0 : s0 + 2 ^ 64 * c1 = a0 + (2 ^ 64 - 1 - b0) + 1)
    (e1 : s1 + 2 ^ 64 * c2 = a1 + (2 ^ 64 - 1 - b1) + c1)
    (e2 : s2 + 2 ^ 64 * c3 = a2 + (2 ^ 64 - 1 - b2) + c2)
    (e3 : s3 + 2 ^ 64 * c4 = a3 + (2 ^ 64 - 1 - b3) + c3)
    (e4 : s4 + 2 ^ 64 * c5 = a4 + (2 ^ 64 - 1 - b4) + c4)
    (e5 : s5 + 2 ^ 64 * c6 = a5 + (2 ^ 64 - 1 - b5) + c5) :
    wn6 s0 s1 s2 s3 s4 s5 =
      (wn6 a0 a1 a2 a3 a4 a5 + 2 ^ (64 * 6) - wn6 b0 b1 b2 b3 b4 b5) % 2 ^ (64 * 6) := by
  unfold wn6
  have key : s0 + 2^64 * (s1 + 2^64 * (s2 + 2^64 * (s3 + 2^64 * (s4 + 2^64 * s5)))) +
      2^384 * c6 =
      a0 + 2^64 * (a1 + 2^64 * (a2 + 2^64 * (a3 + 2^64 * (a4 + 2^64 * a5)))) + 2^384 -
        (b0 + 2^64 * (b1 + 2^64 * (b2 + 2^64 * (b3 + 2^64 * (b4 + 2^64 * b5))))) := by omega
  have hT : s0 + 2^64 * (s1 + 2^64 * (s2 + 2^64 * (s3 + 2^64 * (s4 + 2^64 * s5)))) < 2 ^ 384 := by
    omega
  rw [show 64 * 6 = 384 from rfl, ← key, Nat.add_mul_mod_self_left, Nat.mod_eq_of_lt hT]

macro "lkp" : tactic => `(tactic|
  simp (config := {decide := true}) only [lk_set_self, lk_set_ne, ne_eq, not_false_eq_true])

theorem funRet_bls_fp_sub_raw {X : Ctx 64} (hC : X.code.lookup = guestCode) :
    FunRet σ X (nm "bls_fp_sub_raw") (SubRet 6 1) := by
  intro vs body callee rs hl s _ hloc _ v hv
  rw [hC] at hl
  obtain ⟨rfl, rfl, A, B, rfl, hA, hB, hla, hlb⟩ := lookupCode_two code_bls_fp_sub_raw (by decide) hl
  obtain ⟨as, has, rfl⟩ := eq_wv_of_shapeEq hA
  obtain ⟨bs, hbs, rfl⟩ := eq_wv_of_shapeEq hB
  refine ⟨as, bs, has, hbs, rfl, ?_⟩
  have ha : s.locals.lookup (nm "a") = some (wv as) := by rw [hloc]; exact hla
  have hb : s.locals.lookup (nm "b") = some (wv bs) := by rw [hloc]; exact hlb
  obtain ⟨a0, a1, a2, a3, a4, a5, rfl⟩ := list6 has
  obtain ⟨b0, b1, b2, b3, b4, b5, rfl⟩ := list6 hbs
  rw [blsSubBody] at hv
  rw [eval_subStep ha hb (by simp) (by simp) (by decide) (by decide) (ev_cw _ 1)] at hv
  generalize hS0 : wordAddCarryHOL _ _ (BitVec.ofNat 64 1) = S0 at hv
  rw [eval_subStep (by lkp; exact ha) (by lkp; exact hb) (by simp) (by simp) (by decide) (by decide)
    (by rw [ev_rfield (by rw [ev_lv, lk_set_ne _ _ (by decide), lk_set_self])]; rfl)] at hv
  generalize hS1 : wordAddCarryHOL _ _ S0.2 = S1 at hv
  rw [eval_subStep (by lkp; exact ha) (by lkp; exact hb) (by simp) (by simp) (by decide) (by decide)
    (by rw [ev_rfield (by rw [ev_lv, lk_set_ne _ _ (by decide), lk_set_self])]; rfl)] at hv
  generalize hS2 : wordAddCarryHOL _ _ S1.2 = S2 at hv
  rw [eval_subStep (by lkp; exact ha) (by lkp; exact hb) (by simp) (by simp) (by decide) (by decide)
    (by rw [ev_rfield (by rw [ev_lv, lk_set_ne _ _ (by decide), lk_set_self])]; rfl)] at hv
  generalize hS3 : wordAddCarryHOL _ _ S2.2 = S3 at hv
  rw [eval_subStep (by lkp; exact ha) (by lkp; exact hb) (by simp) (by simp) (by decide) (by decide)
    (by rw [ev_rfield (by rw [ev_lv, lk_set_ne _ _ (by decide), lk_set_self])]; rfl)] at hv
  generalize hS4 : wordAddCarryHOL _ _ S3.2 = S4 at hv
  rw [eval_subStep (by lkp; exact ha) (by lkp; exact hb) (by simp) (by simp) (by decide) (by decide)
    (by rw [ev_rfield (by rw [ev_lv, lk_set_ne _ _ (by decide), lk_set_self])]; rfl)] at hv
  generalize hS5 : wordAddCarryHOL _ _ S4.2 = S5 at hv
  -- the return
  have hret : ev (setVarHOLFinite (nm "r5") (.rStruct [.val (.word S5.1), .val (.word S5.2)])
      (setVarHOLFinite (nm "r5") v00
      (setVarHOLFinite (nm "r4") (.rStruct [.val (.word S4.1), .val (.word S4.2)])
      (setVarHOLFinite (nm "r4") v00
      (setVarHOLFinite (nm "r3") (.rStruct [.val (.word S3.1), .val (.word S3.2)])
      (setVarHOLFinite (nm "r3") v00
      (setVarHOLFinite (nm "r2") (.rStruct [.val (.word S2.1), .val (.word S2.2)])
      (setVarHOLFinite (nm "r2") v00
      (setVarHOLFinite (nm "r1") (.rStruct [.val (.word S1.1), .val (.word S1.2)])
      (setVarHOLFinite (nm "r1") v00
      (setVarHOLFinite (nm "r0") (.rStruct [.val (.word S0.1), .val (.word S0.2)])
      (setVarHOLFinite (nm "r0") v00 s))))))))))))
      (.rstruct [.rfield 0 (lv (nm "r0")), .rfield 0 (lv (nm "r1")),
        .rfield 0 (lv (nm "r2")), .rfield 0 (lv (nm "r3")), .rfield 0 (lv (nm "r4")),
        .rfield 0 (lv (nm "r5")), .rfield 1 (lv (nm "r5"))]) =
      some (wv [S0.1, S1.1, S2.1, S3.1, S4.1, S5.1, S5.2]) := by
    apply ev_rstruct
    refine evs_cons ?_ (evs_cons ?_ (evs_cons ?_ (evs_cons ?_ (evs_cons ?_ (evs_cons ?_
      (evs_cons ?_ evs_nil)))))) <;>
    · rw [ev_rfield (by
        rw [ev_lv]
        lkp
        try rfl)]
      rfl
  rw [subRet6, eval_return_ok hret (size_wv_le _ (by simp))] at hv
  simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hv
  subst hv
  refine ⟨[S0.1, S1.1, S2.1, S3.1, S4.1, S5.1], [S5.2], rfl, rfl, rfl, ?_⟩
  simp only [List.getElem_cons_zero, List.getElem_cons_succ] at hS0 hS1 hS2 hS3 hS4 hS5
  have h0 := addCarry_spec a0 (b0 ^^^ (0 - 1)) (BitVec.ofNat 64 1) (by decide)
  rw [hS0, toNat_xor_m1] at h0
  have h1 := addCarry_spec a1 (b1 ^^^ (0 - 1)) S0.2 h0.2
  rw [hS1, toNat_xor_m1] at h1
  have h2 := addCarry_spec a2 (b2 ^^^ (0 - 1)) S1.2 h1.2
  rw [hS2, toNat_xor_m1] at h2
  have h3 := addCarry_spec a3 (b3 ^^^ (0 - 1)) S2.2 h2.2
  rw [hS3, toNat_xor_m1] at h3
  have h4 := addCarry_spec a4 (b4 ^^^ (0 - 1)) S3.2 h3.2
  rw [hS4, toNat_xor_m1] at h4
  have h5 := addCarry_spec a5 (b5 ^^^ (0 - 1)) S4.2 h4.2
  rw [hS5, toNat_xor_m1] at h5
  have e1 : (BitVec.ofNat 64 1).toNat = 1 := rfl
  rw [e1] at h0
  rw [wn_six, wn_six, wn_six]
  exact sub6_mod _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
    b0.isLt b1.isLt b2.isLt b3.isLt b4.isLt b5.isLt
    S0.1.isLt S1.1.isLt S2.1.isLt S3.1.isLt S4.1.isLt S5.1.isLt
    h0.1 h1.1 h2.1 h3.1 h4.1 h5.1

/-! ## `bls_fp_shr1` -/

/-- One-argument shift return relation on `k` limbs. -/
def ShrRet (k : Nat) (vs : List (ValueHOL 64)) (v : ValueHOL 64) : Prop :=
  ∃ ws : List (BitVec 64), ws.length = k ∧ vs = [wv ws] ∧ v = wv (shrW ws)

theorem funRet_bls_fp_shr1 {X : Ctx 64} (hC : X.code.lookup = guestCode) :
    FunRet σ X (nm "bls_fp_shr1") (ShrRet 6) := by
  intro vs body callee rs hl s _ hloc _ v hv
  rw [hC] at hl
  obtain ⟨rfl, rfl, A, rfl, hA, hla⟩ := lookupCode_one code_bls_fp_shr1 hl
  obtain ⟨ws, hws, rfl⟩ := eq_wv_of_shapeEq hA
  refine ⟨ws, hws, rfl, ?_⟩
  have hx : s.locals.lookup (nm "x") = some (wv ws) := by rw [hloc]; exact hla
  have he : ev s (.rstruct (shrE (lv (nm "x")) 0 6)) = some (wv (shrW ws)) := by
    have := ev_shr (s := s) (x := lv (nm "x")) (ws := ws) (by rw [ev_lv]; exact hx)
    rw [hws] at this
    exact this
  rw [blsShrBody, eval_return_ok he (size_wv_le _ (by rw [length_shrW, hws]; decide))] at hv
  simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hv
  exact hv.symm

theorem escFree_bls_fp_shr1 {X : Ctx 64} (hC : X.code.lookup = guestCode) :
    ∀ vs body callee rs, PanSemStateFiniteExact.lookupCodeHOLFinite X.code.lookup
      (nm "bls_fp_shr1") vs = some (body, callee, rs) → EscFree σ X.code body := by
  intro vs body callee rs hl
  rw [hC] at hl
  obtain ⟨rfl, -, -⟩ := lookupCode_one code_bls_fp_shr1 hl
  exact escFree_return _

end InitECandidate.Solver.Spec
