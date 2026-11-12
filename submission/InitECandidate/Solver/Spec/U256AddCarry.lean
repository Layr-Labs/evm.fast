import InitECandidate.Solver.Spec.U256

/-!
# Return specification of `u256_add_carry`

For every context `X` with `X.code.lookup = guestCode`: `u256_add_carry(a, b)` for 4-limb
`a`, `b` returns the 5-limb struct `<d0, d1, d2, d3, cy>` with `cy ≤ 1` and
`wn d + 2^256 * cy = wn a + wn b`.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.Spec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost

variable {σ : Type}

/-- `var r = <0, 0>; r = __add_with_carry__(a.i, b.i, cin); rest` -/
def addStep (a b r : MlS) (i : Nat) (cin : ExpHOL 64) (rest : ProgHOL 64) : ProgHOL 64 :=
  .dec r (shK 2) (.rstruct [cw 0, cw 0])
    (.seq (.primitive r .addCarry [.rfield i (lv a), .rfield i (lv b), cin]) rest)

def addRet5 : ProgHOL 64 :=
  .return (.rstruct [.rfield 0 (lv (nm "r0")), .rfield 0 (lv (nm "r1")),
    .rfield 0 (lv (nm "r2")), .rfield 0 (lv (nm "r3")), .rfield 1 (lv (nm "r3"))])

def u256AddCarryBody : ProgHOL 64 :=
  addStep (nm "a") (nm "b") (nm "r0") 0 (cw 0)
    (addStep (nm "a") (nm "b") (nm "r1") 1 (.rfield 1 (lv (nm "r0")))
      (addStep (nm "a") (nm "b") (nm "r2") 2 (.rfield 1 (lv (nm "r1")))
        (addStep (nm "a") (nm "b") (nm "r3") 3 (.rfield 1 (lv (nm "r2"))) addRet5)))

theorem entry_u256_add_carry : fnEntry Guest.Software.guestFn_u256_add_carry =
    (nm "u256_add_carry", params2 4, u256AddCarryBody, shK 5) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_u256_add_carry :
    guestCode (nm "u256_add_carry") = some (params2 4, u256AddCarryBody, shK 5) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 55) (by decide)) ⟨_, rfl⟩
    entry_u256_add_carry

/-- One limb of the addition chain. -/
theorem eval_addStep {s : PanSemStateFiniteExact 64 σ} {a b r : MlS} {i : Nat}
    {cin : ExpHOL 64} {rest : ProgHOL 64} {as bs : List (BitVec 64)} {c : BitVec 64}
    (ha : s.locals.lookup a = some (wv as)) (hb : s.locals.lookup b = some (wv bs))
    (hia : i < as.length) (hib : i < bs.length) (hra : r ≠ a) (hrb : r ≠ b)
    (hc : ev (setVarHOLFinite r v00 s) cin = some (.val (.word c))) :
    (evaluateHOLFiniteState s (addStep a b r i cin rest)).1 =
      (evaluateHOLFiniteState
        (setVarHOLFinite r (.rStruct [.val (.word (wordAddCarryHOL as[i] bs[i] c).1),
            .val (.word (wordAddCarryHOL as[i] bs[i] c).2)])
          (setVarHOLFinite r v00 s)) rest).1 := by
  have h00 : ev s (.rstruct [cw 0, cw 0]) = some v00 := rfl
  rw [addStep, eval_dec_ok h00 (by rw [v00, shapeOf_pair]; exact shapeEq_shK 2)]
  have ha' : (setVarHOLFinite r v00 s).locals.lookup a = some (wv as) := by
    rw [lk_set_ne _ _ hra]; exact ha
  have hb' : (setVarHOLFinite r v00 s).locals.lookup b = some (wv bs) := by
    rw [lk_set_ne _ _ hrb]; exact hb
  have hargs := evs_cons (ev_rfield_wv (by rw [ev_lv]; exact ha') hia)
    (evs_cons (ev_rfield_wv (by rw [ev_lv]; exact hb') hib) (evs_cons hc evs_nil))
  have hvalid : isValidValueHOLFinite (setVarHOLFinite r v00 s) .local r
      (.rStruct [.val (.word (wordAddCarryHOL as[i] bs[i] c).1),
        .val (.word (wordAddCarryHOL as[i] bs[i] c).2)]) = true := by
    rw [isValidValueHOLFinite_eq]
    simp only [isValidValueHOLExact, lookupKvarHOLExact]
    rw [lk_set_self]
    dsimp only [v00]
    rw [shapeOf_pair, shapeOf_pair]
    exact shapeEq_shK 2
  have hprim := eval_primitive_ok (o := .addCarry) hargs rfl hvalid
  rw [eval_seq_none (by rw [hprim]), hprim]
  rfl

/-- `u256_add_carry` return relation. -/
def AddCarryRet (vs : List (ValueHOL 64)) (v : ValueHOL 64) : Prop :=
  ∃ as bs : List (BitVec 64), as.length = 4 ∧ bs.length = 4 ∧ vs = [wv as, wv bs] ∧
    ∃ ds : List (BitVec 64), ∃ cy : BitVec 64, ds.length = 4 ∧ cy.toNat ≤ 1 ∧
      v = wv (ds ++ [cy]) ∧ wn ds + 2 ^ 256 * cy.toNat = wn as + wn bs

theorem add4_eq (a0 a1 a2 a3 b0 b1 b2 b3 s0 s1 s2 s3 c1 c2 c3 c4 : Nat)
    (e0 : s0 + 2 ^ 64 * c1 = a0 + b0 + 0)
    (e1 : s1 + 2 ^ 64 * c2 = a1 + b1 + c1)
    (e2 : s2 + 2 ^ 64 * c3 = a2 + b2 + c2)
    (e3 : s3 + 2 ^ 64 * c4 = a3 + b3 + c3) :
    wn4 s0 s1 s2 s3 + 2 ^ 256 * c4 = wn4 a0 a1 a2 a3 + wn4 b0 b1 b2 b3 := by
  unfold wn4
  omega

theorem funRet_u256_add_carry {X : Ctx 64} (hC : X.code.lookup = guestCode) :
    FunRet σ X (nm "u256_add_carry") AddCarryRet := by
  intro vs body callee rs hl s _ hloc _ v hv
  rw [hC] at hl
  obtain ⟨rfl, rfl, A, B, rfl, hA, hB, hla, hlb⟩ :=
    lookupCode_two code_u256_add_carry (by decide) hl
  obtain ⟨as, has, rfl⟩ := eq_wv_of_shapeEq hA
  obtain ⟨bs, hbs, rfl⟩ := eq_wv_of_shapeEq hB
  refine ⟨as, bs, has, hbs, rfl, ?_⟩
  have ha : s.locals.lookup (nm "a") = some (wv as) := by rw [hloc]; exact hla
  have hb : s.locals.lookup (nm "b") = some (wv bs) := by rw [hloc]; exact hlb
  obtain ⟨a0, a1, a2, a3, rfl⟩ := list4 has
  obtain ⟨b0, b1, b2, b3, rfl⟩ := list4 hbs
  rw [u256AddCarryBody] at hv
  -- limb 0
  rw [eval_addStep ha hb (by simp) (by simp) (by decide) (by decide) (ev_cw _ 0)] at hv
  generalize hS0 : wordAddCarryHOL _ _ (BitVec.ofNat 64 0) = S0 at hv
  -- limb 1
  rw [eval_addStep (by rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]; exact ha)
    (by rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]; exact hb)
    (by simp) (by simp) (by decide) (by decide)
    (by rw [ev_rfield (by rw [ev_lv, lk_set_ne _ _ (by decide), lk_set_self])]; rfl)] at hv
  generalize hS1 : wordAddCarryHOL _ _ S0.2 = S1 at hv
  -- limb 2
  rw [eval_addStep
    (by rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide),
      lk_set_ne _ _ (by decide)]; exact ha)
    (by rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide),
      lk_set_ne _ _ (by decide)]; exact hb)
    (by simp) (by simp) (by decide) (by decide)
    (by rw [ev_rfield (by rw [ev_lv, lk_set_ne _ _ (by decide), lk_set_self])]; rfl)] at hv
  generalize hS2 : wordAddCarryHOL _ _ S1.2 = S2 at hv
  -- limb 3
  rw [eval_addStep
    (by rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide),
      lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]; exact ha)
    (by rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide),
      lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]; exact hb)
    (by simp) (by simp) (by decide) (by decide)
    (by rw [ev_rfield (by rw [ev_lv, lk_set_ne _ _ (by decide), lk_set_self])]; rfl)] at hv
  generalize hS3 : wordAddCarryHOL _ _ S2.2 = S3 at hv
  simp only [List.getElem_cons_zero, List.getElem_cons_succ] at hS0 hS1 hS2 hS3
  -- the return
  have hret : ev (setVarHOLFinite (nm "r3") (.rStruct [.val (.word S3.1), .val (.word S3.2)])
      (setVarHOLFinite (nm "r3") v00
      (setVarHOLFinite (nm "r2") (.rStruct [.val (.word S2.1), .val (.word S2.2)])
      (setVarHOLFinite (nm "r2") v00
      (setVarHOLFinite (nm "r1") (.rStruct [.val (.word S1.1), .val (.word S1.2)])
      (setVarHOLFinite (nm "r1") v00
      (setVarHOLFinite (nm "r0") (.rStruct [.val (.word S0.1), .val (.word S0.2)])
      (setVarHOLFinite (nm "r0") v00 s))))))))
      (.rstruct [.rfield 0 (lv (nm "r0")), .rfield 0 (lv (nm "r1")),
        .rfield 0 (lv (nm "r2")), .rfield 0 (lv (nm "r3")), .rfield 1 (lv (nm "r3"))]) =
      some (wv [S0.1, S1.1, S2.1, S3.1, S3.2]) := by
    apply ev_rstruct
    refine evs_cons ?_ (evs_cons ?_ (evs_cons ?_ (evs_cons ?_ (evs_cons ?_ evs_nil)))) <;>
    · rw [ev_rfield (by
        rw [ev_lv]
        simp (config := {decide := true}) only [lk_set_self, lk_set_ne, ne_eq]
        try rfl)]
      rfl
  rw [addRet5, eval_return_ok hret (size_wv_le _ (by simp))] at hv
  simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hv
  subst hv
  refine ⟨[S0.1, S1.1, S2.1, S3.1], S3.2, rfl, ?_, rfl, ?_⟩
  · have h3 := addCarry_spec a3 b3 S2.2 (by
      have h2 := addCarry_spec a2 b2 S1.2 (by
        have h1 := addCarry_spec a1 b1 S0.2 (by
          have h0 := addCarry_spec a0 b0 (BitVec.ofNat 64 0) (by decide)
          rw [hS0] at h0; exact h0.2)
        rw [hS1] at h1; exact h1.2)
      rw [hS2] at h2; exact h2.2)
    rw [hS3] at h3; exact h3.2
  · have h0 := addCarry_spec a0 b0 (BitVec.ofNat 64 0) (by decide)
    rw [hS0] at h0
    have h1 := addCarry_spec a1 b1 S0.2 h0.2
    rw [hS1] at h1
    have h2 := addCarry_spec a2 b2 S1.2 h1.2
    rw [hS2] at h2
    have h3 := addCarry_spec a3 b3 S2.2 h2.2
    rw [hS3] at h3
    have e0 : (BitVec.ofNat 64 0).toNat = 0 := rfl
    rw [e0] at h0
    rw [wn_four, wn_four, wn_four]
    exact add4_eq _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ h0.1 h1.1 h2.1 h3.1

end InitECandidate.Solver.Spec
