import InitECandidate.Solver.Spec.Fq12.FqMul

/-!
# `u256_add`, `fq_sub` and `fq_inv`

* `funRet_u256_add`: `u256_add(a, b)` returns the 4 limbs of `(a + b) mod 2²⁵⁶`.
* `funRet_fq_sub`: for `b < p`, `fq_sub(a, b)` returns `fqSubN a b` (`a - b`, or
  `a + p - b` when `a < b`), as 4 limbs.
* `funRet_fq_inv`: `fq_inv(a)` returns a reduced value (`< p`): it is
  `fq_mul(modinv_bin(a, p), R³ mod p)` and `R³ mod p < p`. Nothing about `modinv_bin` is
  needed.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.Spec.Fq12
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-! ## Code -/

/-- `var r = <0, 0>; r = __add_with_carry__(a.i, b.i, cin); rest` -/
def addStep (a b r : MlS) (i : Nat) (cin : ExpHOL 64) (rest : ProgHOL 64) : ProgHOL 64 :=
  .dec r (shK 2) (.rstruct [cw 0, cw 0])
    (.seq (.primitive r .addCarry [.rfield i (lv a), .rfield i (lv b), cin]) rest)

def u256AddBody : ProgHOL 64 :=
  addStep (nm "a") (nm "b") (nm "r0") 0 (cw 0)
    (addStep (nm "a") (nm "b") (nm "r1") 1 (.rfield 1 (lv (nm "r0")))
      (addStep (nm "a") (nm "b") (nm "r2") 2 (.rfield 1 (lv (nm "r1")))
        (addStep (nm "a") (nm "b") (nm "r3") 3 (.rfield 1 (lv (nm "r2"))) subRet4)))

theorem entry_u256_add : fnEntry Guest.Software.guestFn_u256_add =
    (nm "u256_add", params2 4, u256AddBody, shK 4) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_u256_add : guestCode (nm "u256_add") = some (params2 4, u256AddBody, shK 4) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 56) (by decide)) ⟨_, rfl⟩
    entry_u256_add

def fqSubBody : ProgHOL 64 :=
  .decCall (nm "lt") .one (nm "u256_lt") [lv (nm "a"), lv (nm "b")]
    (.decCall (nm "d") (shK 4) (nm "u256_sub") [lv (nm "a"), lv (nm "b")]
      (.seq (.ite (.cmp .equal (lv (nm "lt")) (cw 1))
          (callTo (nm "d") (nm "u256_add") [lv (nm "d"), fqPE]) .skip)
        (.return (lv (nm "d")))))

theorem entry_fq_sub : fnEntry Guest.Software.guestFn_fq_sub =
    (nm "fq_sub", params2 4, fqSubBody, shK 4) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_fq_sub : guestCode (nm "fq_sub") = some (params2 4, fqSubBody, shK 4) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 650) (by decide)) ⟨_, rfl⟩
    entry_fq_sub

/-- `R³ mod p` as a 4-limb struct expression. -/
def fqR3E : ExpHOL 64 :=
  .rstruct [cw 12812017116984455391, cw 7129779742913871286, cw 17257524443456604923,
    cw 2377177743836652868]

def fqInvBody : ProgHOL 64 :=
  .decCall (nm "i") (shK 4) (nm "modinv_bin") [lv (nm "a"), fqPE]
    (.call none (nm "fq_mul") [lv (nm "i"), fqR3E])

theorem entry_fq_inv : fnEntry Guest.Software.guestFn_fq_inv =
    (nm "fq_inv", [(nm "a", shK 4)], fqInvBody, shK 4) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_fq_inv : guestCode (nm "fq_inv") = some ([(nm "a", shK 4)], fqInvBody, shK 4) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 655) (by decide)) ⟨_, rfl⟩
    entry_fq_inv

/-! ## `u256_add` -/

variable {σ : Type}

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

/-- `u256_add` return relation. -/
def AddRet (vs : List (ValueHOL 64)) (v : ValueHOL 64) : Prop :=
  ∃ as bs : List (BitVec 64), as.length = 4 ∧ bs.length = 4 ∧ vs = [wv as, wv bs] ∧
    ∃ ds : List (BitVec 64), ds.length = 4 ∧ v = wv ds ∧
      wn ds = (wn as + wn bs) % 2 ^ 256

theorem add4_mod (a0 a1 a2 a3 b0 b1 b2 b3 s0 s1 s2 s3 c1 c2 c3 c4 : Nat)
    (hs0 : s0 < 2 ^ 64) (hs1 : s1 < 2 ^ 64) (hs2 : s2 < 2 ^ 64) (hs3 : s3 < 2 ^ 64)
    (e0 : s0 + 2 ^ 64 * c1 = a0 + b0 + 0)
    (e1 : s1 + 2 ^ 64 * c2 = a1 + b1 + c1)
    (e2 : s2 + 2 ^ 64 * c3 = a2 + b2 + c2)
    (e3 : s3 + 2 ^ 64 * c4 = a3 + b3 + c3) :
    wn4 s0 s1 s2 s3 = (wn4 a0 a1 a2 a3 + wn4 b0 b1 b2 b3) % 2 ^ 256 := by
  unfold wn4
  have key : s0 + 2^64 * (s1 + 2^64 * (s2 + 2^64 * s3)) + 2^256 * c4 =
      a0 + 2^64 * (a1 + 2^64 * (a2 + 2^64 * a3)) + (b0 + 2^64 * (b1 + 2^64 * (b2 + 2^64 * b3))) := by
    omega
  have hT : s0 + 2^64 * (s1 + 2^64 * (s2 + 2^64 * s3)) < 2 ^ 256 := by omega
  rw [← key, Nat.add_mul_mod_self_left, Nat.mod_eq_of_lt hT]

theorem funRet_u256_add {X : Ctx 64} (hC : X.code.lookup = guestCode) :
    FunRet σ X (nm "u256_add") AddRet := by
  intro vs body callee rs hl s _ hloc _ v hv
  rw [hC] at hl
  obtain ⟨rfl, rfl, A, B, rfl, hA, hB, hla, hlb⟩ := lookupCode_two code_u256_add (by decide) hl
  obtain ⟨as, has, rfl⟩ := eq_wv_of_shapeEq hA
  obtain ⟨bs, hbs, rfl⟩ := eq_wv_of_shapeEq hB
  refine ⟨as, bs, has, hbs, rfl, ?_⟩
  have ha : s.locals.lookup (nm "a") = some (wv as) := by rw [hloc]; exact hla
  have hb : s.locals.lookup (nm "b") = some (wv bs) := by rw [hloc]; exact hlb
  obtain ⟨a0, a1, a2, a3, rfl⟩ := list4 has
  obtain ⟨b0, b1, b2, b3, rfl⟩ := list4 hbs
  rw [u256AddBody] at hv
  rw [eval_addStep ha hb (by simp) (by simp) (by decide) (by decide) (ev_cw _ 0)] at hv
  generalize hS0 : wordAddCarryHOL _ _ (BitVec.ofNat 64 0) = S0 at hv
  rw [eval_addStep (by rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]; exact ha)
    (by rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]; exact hb)
    (by simp) (by simp) (by decide) (by decide)
    (by rw [ev_rfield (by rw [ev_lv, lk_set_ne _ _ (by decide), lk_set_self])]; rfl)] at hv
  generalize hS1 : wordAddCarryHOL _ _ S0.2 = S1 at hv
  rw [eval_addStep
    (by rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide),
      lk_set_ne _ _ (by decide)]; exact ha)
    (by rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide),
      lk_set_ne _ _ (by decide)]; exact hb)
    (by simp) (by simp) (by decide) (by decide)
    (by rw [ev_rfield (by rw [ev_lv, lk_set_ne _ _ (by decide), lk_set_self])]; rfl)] at hv
  generalize hS2 : wordAddCarryHOL _ _ S1.2 = S2 at hv
  rw [eval_addStep
    (by rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide),
      lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]; exact ha)
    (by rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide),
      lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]; exact hb)
    (by simp) (by simp) (by decide) (by decide)
    (by rw [ev_rfield (by rw [ev_lv, lk_set_ne _ _ (by decide), lk_set_self])]; rfl)] at hv
  generalize hS3 : wordAddCarryHOL _ _ S2.2 = S3 at hv
  have hret : ev (setVarHOLFinite (nm "r3") (.rStruct [.val (.word S3.1), .val (.word S3.2)])
      (setVarHOLFinite (nm "r3") v00
      (setVarHOLFinite (nm "r2") (.rStruct [.val (.word S2.1), .val (.word S2.2)])
      (setVarHOLFinite (nm "r2") v00
      (setVarHOLFinite (nm "r1") (.rStruct [.val (.word S1.1), .val (.word S1.2)])
      (setVarHOLFinite (nm "r1") v00
      (setVarHOLFinite (nm "r0") (.rStruct [.val (.word S0.1), .val (.word S0.2)])
      (setVarHOLFinite (nm "r0") v00 s))))))))
      (.rstruct [.rfield 0 (lv (nm "r0")), .rfield 0 (lv (nm "r1")),
        .rfield 0 (lv (nm "r2")), .rfield 0 (lv (nm "r3"))]) =
      some (wv [S0.1, S1.1, S2.1, S3.1]) := by
    apply ev_rstruct
    refine evs_cons ?_ (evs_cons ?_ (evs_cons ?_ (evs_cons ?_ evs_nil))) <;>
    · rw [ev_rfield (by
        rw [ev_lv]
        simp (config := {decide := true}) only [lk_set_self, lk_set_ne, ne_eq]
        try rfl)]
      rfl
  rw [subRet4, eval_return_ok hret (size_wv_le _ (by simp))] at hv
  simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hv
  subst hv
  refine ⟨[S0.1, S1.1, S2.1, S3.1], rfl, rfl, ?_⟩
  simp only [List.getElem_cons_zero, List.getElem_cons_succ] at hS0 hS1 hS2 hS3
  have h0 := addCarry_spec a0 b0 (BitVec.ofNat 64 0) (by decide)
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
  exact add4_mod _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
    S0.1.isLt S1.1.isLt S2.1.isLt S3.1.isLt h0.1 h1.1 h2.1 h3.1

/-! ## `fq_sub` -/

theorem ev_eq1 {s : PanSemStateFiniteExact 64 σ} {ult : MlS} {p : Prop} [Decidable p]
    (h : s.locals.lookup ult = some (.val (.word (if p then 1 else 0)))) :
    ev s (.cmp .equal (lv ult) (cw 1)) = some (.val (.word (if p then 1 else 0))) := by
  rw [ev_cmp (by rw [ev_lv]; exact h) (ev_cw _ 1)]
  by_cases hp : p <;> simp [hp, Flapjack.Compiler.Encoders.Asm.wordCmpHOL]

/-- `fq_sub` return relation (for a reduced subtrahend). -/
def FqSubRet (vs : List (ValueHOL 64)) (v : ValueHOL 64) : Prop :=
  ∃ as bs : List (BitVec 64), as.length = 4 ∧ bs.length = 4 ∧ vs = [wv as, wv bs] ∧
    (wn bs < fqP → ∃ ds : List (BitVec 64), ds.length = 4 ∧ v = wv ds ∧
      wn ds = fqSubN (wn as) (wn bs))

theorem funRet_fq_sub {X : Ctx 64} (hC : X.code.lookup = guestCode) :
    FunRet σ X (nm "fq_sub") FqSubRet := by
  intro vs body callee rs hl
  rw [hC] at hl
  obtain ⟨rfl, rfl, A, B, rfl, hA, hB, hla, hlb⟩ := lookupCode_two code_fq_sub (by decide) hl
  obtain ⟨as, has, rfl⟩ := eq_wv_of_shapeEq hA
  obtain ⟨bs, hbs, rfl⟩ := eq_wv_of_shapeEq hB
  have hla4 := wn_lt4 has
  have hlb4 := wn_lt4 hbs
  have hpl : fqP < 2 ^ 256 := by have := fqP_lt; omega
  -- the whole body under the reducedness of `b`
  suffices H : wn bs < fqP → Hoare σ X (fun s => s.locals = callee) fqSubBody
      (fun r _ => ∀ v, r = some (.returned v) → ∃ ds : List (BitVec 64), ds.length = 4 ∧
        v = wv ds ∧ wn ds = fqSubN (wn as) (wn bs)) by
    intro s hs hloc ht v hv
    exact ⟨as, bs, has, hbs, rfl, fun hb => H hb s hs hloc ht v hv⟩
  intro hbp
  refine hoare_decCall (funRet_u256_lt hC) ?_
  intro s _ hloc vs hvs w hR _
  have ha : s.locals.lookup (nm "a") = some (wv as) := by rw [hloc]; exact hla
  have hb : s.locals.lookup (nm "b") = some (wv bs) := by rw [hloc]; exact hlb
  have hvs' : evs s [lv (nm "a"), lv (nm "b")] = some [wv as, wv bs] :=
    evs_cons (by rw [ev_lv]; exact ha) (evs_cons (by rw [ev_lv]; exact hb) evs_nil)
  rw [hvs'] at hvs
  cases hvs
  obtain ⟨as', bs', _, _, hv1, rfl⟩ := hR
  simp only [List.cons.injEq, and_true] at hv1
  obtain ⟨e1, e2⟩ := hv1
  have e1 := wv_inj e1
  have e2 := wv_inj e2
  subst e1; subst e2
  refine hoare_decCall (funRet_u256_sub hC) ?_
  intro t _ hlt vs2 hvs2 d hR2 _
  have hta : t.locals.lookup (nm "a") = some (wv as) := by
    rw [hlt, lookup_update_ne _ _ (by decide)]; exact ha
  have htb : t.locals.lookup (nm "b") = some (wv bs) := by
    rw [hlt, lookup_update_ne _ _ (by decide)]; exact hb
  have htl : t.locals.lookup (nm "lt") = some (.val (.word (if wn as < wn bs then 1 else 0))) := by
    rw [hlt, lookup_update_self]
  have hvs2' : evs t [lv (nm "a"), lv (nm "b")] = some [wv as, wv bs] :=
    evs_cons (by rw [ev_lv]; exact hta) (evs_cons (by rw [ev_lv]; exact htb) evs_nil)
  rw [hvs2'] at hvs2
  cases hvs2
  obtain ⟨as', bs', _, _, hv2, ds, es, hds, hes, rfl, hwn⟩ := hR2
  simp only [List.cons.injEq, and_true] at hv2
  obtain ⟨e1, e2⟩ := hv2
  have e1 := wv_inj e1
  have e2 := wv_inj e2
  subst e1; subst e2
  have : es = [] := List.eq_nil_of_length_eq_zero hes
  subst this
  simp only [List.append_nil] at hwn ⊢
  -- the continuation, from locals `t.locals.update (d, wv ds)`
  refine hoare_seq (R := fun r u => (r = none → ∃ fs : List (BitVec 64), fs.length = 4 ∧
      u.locals.lookup (nm "d") = some (wv fs) ∧ wn fs = fqSubN (wn as) (wn bs)) ∧
      (∀ v, r = some (.returned v) → False)) ?_ (fun r u _ _ _ h v hv => (h.2 v hv).elim) ?_
  · refine hoare_ite ?_ ?_
    · -- `a < b`: add `p`
      refine hoare_call (funRet_u256_add hC) ?_
      intro u _ ⟨hu, c, hc, hc0⟩ vs3 hvs3 w3 hR3 _ u' _ hu'
      have hul : u.locals.lookup (nm "lt") = some (.val (.word (if wn as < wn bs then 1 else 0))) := by
        rw [hu, lookup_update_ne _ _ (by decide)]; exact htl
      have hud : u.locals.lookup (nm "d") = some (wv ds) := by rw [hu, lookup_update_self]
      rw [ev_eq1 hul] at hc
      have hab : wn as < wn bs := by
        by_contra h
        rw [if_neg h] at hc
        exact hc0 (by simpa using hc.symm)
      have hvs3' : evs u [lv (nm "d"), fqPE] = some [wv ds, wv [4332616871279656263,
          10917124144477883021, 13281191951274694749, 3486998266802970665]] :=
        evs_cons (by rw [ev_lv]; exact hud) (evs_cons (ev_fqPE _) evs_nil)
      rw [hvs3'] at hvs3
      cases hvs3
      obtain ⟨as', bs', _, _, hv3, fs, hfs, rfl, hwf⟩ := hR3
      simp only [List.cons.injEq, and_true] at hv3
      obtain ⟨e1, e2⟩ := hv3
      have e1 := wv_inj e1
      have e2 := wv_inj e2
      subst e1; subst e2
      rw [wn_fqPE] at hwf
      refine ⟨fun _ => ⟨fs, hfs, by rw [hu', lookup_update_self], ?_⟩, fun v hv => by cases hv⟩
      rw [hwf, hwn]
      unfold fqSubN
      rw [if_pos hab]
      have e3 : (wn as + 2 ^ (64 * 4) - wn bs) % 2 ^ (64 * 4) = wn as + 2 ^ 256 - wn bs := by
        rw [show 64 * 4 = 256 from rfl, Nat.mod_eq_of_lt (by omega)]
      rw [e3, show wn as + 2 ^ 256 - wn bs + fqP = (wn as + fqP - wn bs) + 2 ^ 256 * 1 by omega,
        Nat.add_mul_mod_self_left, Nat.mod_eq_of_lt (by omega)]
    · -- `a ≥ b`
      refine hoare_skip fun u _ ⟨hu, hc⟩ => ⟨fun _ => ⟨ds, hds, by rw [hu, lookup_update_self], ?_⟩,
        fun v hv => by cases hv⟩
      have hul : u.locals.lookup (nm "lt") = some (.val (.word (if wn as < wn bs then 1 else 0))) := by
        rw [hu, lookup_update_ne _ _ (by decide)]; exact htl
      rw [ev_eq1 hul] at hc
      have hab : ¬ wn as < wn bs := by
        intro h
        rw [if_pos h] at hc
        simp at hc
      rw [hwn, sub_of_le hla4 hlb4 (by omega)]
      unfold fqSubN
      rw [if_neg hab]
  · refine hoare_return fun u _ hR v hv => ?_
    obtain ⟨fs, hfs, hud, hwf⟩ := hR.1 rfl
    intro v' hv'
    simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hv'
    subst hv'
    rw [ev_lv, hud] at hv
    simp only [Option.some.injEq] at hv
    subst hv
    exact ⟨fs, hfs, rfl, hwf⟩

/-! ## `fq_inv` -/

/-- `fq_inv` returns a reduced value. -/
def FqInvRet (vs : List (ValueHOL 64)) (v : ValueHOL 64) : Prop :=
  ∃ as : List (BitVec 64), as.length = 4 ∧ vs = [wv as] ∧
    ∃ rs : List (BitVec 64), rs.length = 4 ∧ v = wv rs ∧ wn rs < fqP

theorem wn_fqR3 : wn [12812017116984455391, 7129779742913871286, 17257524443456604923,
    2377177743836652868] < fqP := by
  simp only [wn_cons, wn_nil]; unfold fqP; decide

theorem funRet_fq_inv {X : Ctx 64} (hC : X.code.lookup = guestCode) :
    FunRet σ X (nm "fq_inv") FqInvRet := by
  intro vs body callee rs hl
  rw [hC] at hl
  obtain ⟨rfl, rfl, A, rfl, hA, hla⟩ := lookupCode_one code_fq_inv hl
  obtain ⟨as, has, rfl⟩ := eq_wv_of_shapeEq hA
  suffices H : Hoare σ X (fun s => s.locals = callee) fqInvBody
      (fun r _ => ∀ v, r = some (.returned v) → ∃ rs : List (BitVec 64), rs.length = 4 ∧
        v = wv rs ∧ wn rs < fqP) by
    intro s hs hloc ht v hv
    exact ⟨as, has, rfl, H s hs hloc ht v hv⟩
  refine hoare_decCall (funRet_true _) ?_
  intro s _ _ vs hvs w _ hsh
  obtain ⟨is, his, rfl⟩ := eq_wv_of_shapeEq' hsh
  refine hoare_tailCall (funSpec_of_funRet (funRet_fq_mul hC)) ?_
  intro t _ ht vs2 hvs2 callee v st hR _
  have hti : t.locals.lookup (nm "i") = some (wv is) := by rw [ht, lookup_update_self]
  have hvs2' : evs t [lv (nm "i"), fqR3E] = some [wv is, wv [12812017116984455391,
      7129779742913871286, 17257524443456604923, 2377177743836652868]] :=
    evs_cons (by rw [ev_lv]; exact hti) (evs_cons rfl evs_nil)
  rw [hvs2'] at hvs2
  cases hvs2
  obtain ⟨as', bs', _, _, hv2, hgood⟩ := hR v rfl
  simp only [List.cons.injEq, and_true] at hv2
  obtain ⟨e1, e2⟩ := hv2
  have e1 := wv_inj e1
  have e2 := wv_inj e2
  subst e1; subst e2
  obtain ⟨rs, hrs, rfl, hlt, -⟩ := hgood (Or.inr wn_fqR3)
  intro v' hv'
  simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hv'
  subst hv'
  exact ⟨rs, hrs, rfl, hlt⟩

end InitECandidate.Solver.Spec.Fq12
