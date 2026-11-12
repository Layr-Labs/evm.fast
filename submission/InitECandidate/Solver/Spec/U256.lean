import InitECandidate.Solver.Spec.Exec

/-!
# Return specifications of `u256_lt` and `u256_sub`

Proved against the bodies the code map `guestCode` installs (`code_u256_lt`,
`code_u256_sub`), for every context `X` with `X.code.lookup = guestCode`:

* `funRet_u256_lt`: `u256_lt(a, b)` returns the word `1` iff `a < b` as 256-bit numbers
  (and `0` otherwise);
* `funRet_u256_sub`: `u256_sub(a, b)` returns the 4-limb struct of `(a - b) mod 2^256`.

Both specifications also record that the arguments are 4-limb word structs (the code
lookup checks the parameter shapes).
-/

namespace InitECandidate.Solver.Spec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost

variable {σ : Type}

theorem lk_set_self (s : PanSemStateFiniteExact 64 σ) (n : MlS) (v : ValueHOL 64) :
    (setVarHOLFinite n v s).locals.lookup n = some v := by
  simp [setVarHOLFinite, FUPDATE]

theorem lk_set_ne (s : PanSemStateFiniteExact 64 σ) {n q : MlS} (v : ValueHOL 64) (h : n ≠ q) :
    (setVarHOLFinite n v s).locals.lookup q = s.locals.lookup q := by
  simp [setVarHOLFinite, FUPDATE, h]

theorem ev_lv (s : PanSemStateFiniteExact 64 σ) (x : MlS) : ev s (lv x) = s.locals.lookup x := rfl

theorem ev_cw (s : PanSemStateFiniteExact 64 σ) (n : Nat) :
    ev s (cw n) = some (.val (.word (BitVec.ofNat 64 n))) := rfl

theorem getD_eq {as : List (BitVec 64)} {i : Nat} (h : i < as.length) : as.getD i 0 = as[i] := by
  simp [List.getD_eq_getElem?_getD, h]

/-- Four little-endian limbs as a number. -/
def wn4 (x0 x1 x2 x3 : Nat) : Nat := x0 + 2 ^ 64 * (x1 + 2 ^ 64 * (x2 + 2 ^ 64 * x3))

theorem wn_four (w0 w1 w2 w3 : BitVec 64) :
    wn [w0, w1, w2, w3] = wn4 w0.toNat w1.toNat w2.toNat w3.toNat := by
  simp [wn4]

/-! ## `u256_lt` -/

/-- Lexicographic comparison from the listed limbs down to limb `0`. -/
def lexLt (as bs : List (BitVec 64)) : List Nat → Bool
  | [] => decide (as.getD 0 0 < bs.getD 0 0)
  | i :: is => if as.getD i 0 ≠ bs.getD i 0 then decide (as.getD i 0 < bs.getD i 0)
      else lexLt as bs is

theorem ev_limb {s : PanSemStateFiniteExact 64 σ} {a : MlS} {as : List (BitVec 64)}
    (ha : s.locals.lookup a = some (wv as)) {i : Nat} (hi : i < as.length) :
    ev s (.rfield i (lv a)) = some (.val (.word (as.getD i 0))) := by
  rw [ev_rfield_wv (by rw [ev_lv]; exact ha) hi, getD_eq hi]

theorem eval_ltChain {s : PanSemStateFiniteExact 64 σ} {a b : MlS} {as bs : List (BitVec 64)}
    (ha : s.locals.lookup a = some (wv as)) (hb : s.locals.lookup b = some (wv bs))
    (h0a : 0 < as.length) (h0b : 0 < bs.length) :
    ∀ is : List Nat, (∀ i ∈ is, i < as.length ∧ i < bs.length) →
      (evaluateHOLFiniteState s (ltChain a b is)).1 =
        some (.returned (.val (.word (if lexLt as bs is then 1 else 0))))
  | [], _ => by
      have hc := ev_cmp (o := .lower) (ev_limb ha h0a) (ev_limb hb h0b)
      simp only [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] at hc
      simp only [ltChain]
      by_cases hlt : as.getD 0 0 < bs.getD 0 0
      · have hc' : ev s (.cmp .lower (.rfield 0 (lv a)) (.rfield 0 (lv b))) =
            some (.val (.word 1)) := by
          rw [hc]; simp only [hlt, decide_true, if_true]
        rw [eval_seq_some (r := .returned (.val (.word (BitVec.ofNat 64 1))))]
        · rw [eval_ite_t hc' (by decide), eval_return_ok (ev_cw s 1) (size_val_le _ _)]
          simp only [lexLt, hlt, decide_true, if_true]; rfl
        · rw [eval_ite_t hc' (by decide), eval_return_ok (ev_cw s 1) (size_val_le _ _)]
      · have hc' : ev s (.cmp .lower (.rfield 0 (lv a)) (.rfield 0 (lv b))) =
            some (.val (.word 0)) := by
          rw [hc]; simp only [hlt, decide_false, Bool.false_eq_true, if_false]
        rw [eval_seq_none]
        · rw [eval_ite_f hc', evaluateHOLFiniteState_skip,
            eval_return_ok (ev_cw _ 0) (size_val_le _ _)]
          simp only [lexLt, hlt, decide_false, Bool.false_eq_true, if_false]; rfl
        · rw [eval_ite_f hc', evaluateHOLFiniteState_skip]
  | i :: is, his => by
      have hi := his i List.mem_cons_self
      have ih := eval_ltChain ha hb h0a h0b is (fun j hj => his j (List.mem_cons_of_mem _ hj))
      have hne := ev_cmp (o := .notEqual) (ev_limb ha hi.1) (ev_limb hb hi.2)
      have hlt := ev_cmp (o := .lower) (ev_limb ha hi.1) (ev_limb hb hi.2)
      simp only [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] at hne hlt
      simp only [ltChain, limbStep]
      by_cases heq : as.getD i 0 = bs.getD i 0
      · have hne' : ev s (.cmp .notEqual (.rfield i (lv a)) (.rfield i (lv b))) =
            some (.val (.word 0)) := by
          rw [hne]; simp only [heq, beq_self_eq_true, Bool.not_true, Bool.false_eq_true, if_false]
        rw [eval_seq_none (by rw [eval_ite_f hne', evaluateHOLFiniteState_skip]),
          eval_ite_f hne', evaluateHOLFiniteState_skip, ih]
        simp only [lexLt, heq, ne_eq, not_true_eq_false, if_false]
      · have hne' : ev s (.cmp .notEqual (.rfield i (lv a)) (.rfield i (lv b))) =
            some (.val (.word 1)) := by
          rw [hne]
          have : (as.getD i 0 == bs.getD i 0) = false := by simpa using heq
          simp only [this, Bool.not_false, if_true]
        by_cases hl : as.getD i 0 < bs.getD i 0
        · have hl' : ev s (.cmp .lower (.rfield i (lv a)) (.rfield i (lv b))) =
              some (.val (.word 1)) := by
            rw [hlt]; simp only [hl, decide_true, if_true]
          have hin : (evaluateHOLFiniteState s
              (.seq (.ite (.cmp .lower (.rfield i (lv a)) (.rfield i (lv b))) (.return (cw 1)) .skip)
                (.return (cw 0)))) =
              (some (.returned (.val (.word (BitVec.ofNat 64 1)))), emptyLocalsHOLFinite s) := by
            rw [eval_seq_some (r := .returned (.val (.word (BitVec.ofNat 64 1))))]
            · rw [eval_ite_t hl' (by decide), eval_return_ok (ev_cw s 1) (size_val_le _ _)]
            · rw [eval_ite_t hl' (by decide), eval_return_ok (ev_cw s 1) (size_val_le _ _)]
          rw [eval_seq_some (r := .returned (.val (.word (BitVec.ofNat 64 1))))]
          · rw [eval_ite_t hne' (by decide), hin]
            simp only [lexLt, heq, hl, ne_eq, not_false_eq_true, decide_true, if_true]; rfl
          · rw [eval_ite_t hne' (by decide), hin]
        · have hl' : ev s (.cmp .lower (.rfield i (lv a)) (.rfield i (lv b))) =
              some (.val (.word 0)) := by
            rw [hlt]; simp only [hl, decide_false, Bool.false_eq_true, if_false]
          have hin : (evaluateHOLFiniteState s
              (.seq (.ite (.cmp .lower (.rfield i (lv a)) (.rfield i (lv b))) (.return (cw 1)) .skip)
                (.return (cw 0)))) =
              (some (.returned (.val (.word (BitVec.ofNat 64 0)))), emptyLocalsHOLFinite s) := by
            rw [eval_seq_none (by rw [eval_ite_f hl', evaluateHOLFiniteState_skip]),
              eval_ite_f hl', evaluateHOLFiniteState_skip,
              eval_return_ok (ev_cw s 0) (size_val_le _ _)]
          rw [eval_seq_some (r := .returned (.val (.word (BitVec.ofNat 64 0))))]
          · rw [eval_ite_t hne' (by decide), hin]
            simp only [lexLt, heq, hl, ne_eq, not_false_eq_true, decide_false, Bool.false_eq_true,
              if_true, if_false]; rfl
          · rw [eval_ite_t hne' (by decide), hin]

theorem list4 {as : List (BitVec 64)} (h : as.length = 4) :
    ∃ a0 a1 a2 a3, as = [a0, a1, a2, a3] := by
  match as, h with
  | [a0, a1, a2, a3], _ => exact ⟨a0, a1, a2, a3, rfl⟩

theorem lexLt4 {as bs : List (BitVec 64)} (ha : as.length = 4) (hb : bs.length = 4) :
    lexLt as bs [3, 2, 1] = true ↔ wn as < wn bs := by
  obtain ⟨a0, a1, a2, a3, rfl⟩ := list4 ha
  obtain ⟨b0, b1, b2, b3, rfl⟩ := list4 hb
  have := a0.isLt; have := a1.isLt; have := a2.isLt; have := a3.isLt
  have := b0.isLt; have := b1.isLt; have := b2.isLt; have := b3.isLt
  simp only [lexLt, List.getD_cons_succ, List.getD_cons_zero, wn_cons, wn_nil, ne_eq,
    BitVec.lt_def, ← BitVec.toNat_inj]
  split_ifs <;> simp only [decide_eq_true_eq] <;> omega

theorem ite_lexLt {as bs : List (BitVec 64)} {is : List Nat}
    (h : lexLt as bs is = true ↔ wn as < wn bs) :
    (if lexLt as bs is = true then (1 : BitVec 64) else 0) = if wn as < wn bs then 1 else 0 := by
  by_cases hl : wn as < wn bs
  · rw [if_pos (h.mpr hl), if_pos hl]
  · rw [if_neg (fun h' => hl (h.mp h')), if_neg hl]

/-- `u256_lt` / `bls_fp_lt_raw` return relation on `k` limbs. -/
def LtRet (k : Nat) (vs : List (ValueHOL 64)) (v : ValueHOL 64) : Prop :=
  ∃ as bs : List (BitVec 64), as.length = k ∧ bs.length = k ∧ vs = [wv as, wv bs] ∧
    v = .val (.word (if wn as < wn bs then 1 else 0))

theorem funRet_u256_lt {X : Ctx 64} (hC : X.code.lookup = guestCode) :
    FunRet σ X (nm "u256_lt") (LtRet 4) := by
  intro vs body callee rs hl s _ hloc _ v hv
  rw [hC] at hl
  obtain ⟨rfl, rfl, A, B, rfl, hA, hB, hla, hlb⟩ := lookupCode_two code_u256_lt (by decide) hl
  obtain ⟨as, has, rfl⟩ := eq_wv_of_shapeEq hA
  obtain ⟨bs, hbs, rfl⟩ := eq_wv_of_shapeEq hB
  refine ⟨as, bs, has, hbs, rfl, ?_⟩
  have ha : s.locals.lookup (nm "a") = some (wv as) := by rw [hloc]; exact hla
  have hb : s.locals.lookup (nm "b") = some (wv bs) := by rw [hloc]; exact hlb
  have h := eval_ltChain ha hb (by omega) (by omega) [3, 2, 1] (by
    intro i hi; simp at hi; omega)
  rw [u256LtBody, h] at hv
  simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hv
  rw [← hv, ite_lexLt (lexLt4 has hbs)]

/-! ## `u256_sub` -/

def v00 : ValueHOL 64 := .rStruct [.val (.word 0), .val (.word 0)]

theorem shapeOf_pair (x y : BitVec 64) :
    shapeOfHOLExact (.rStruct [.val (.word x), .val (.word y)] : ValueHOL 64) = shK 2 :=
  shapeOf_wv [x, y]

theorem shapeEq_shK (k : Nat) : shapeEqHOL (shK k) (shK k) = true :=
  (shapeEqHOL_eq_true _ _).mpr rfl

/-- One limb of the subtraction chain. -/
theorem eval_subStep {s : PanSemStateFiniteExact 64 σ} {a b r : MlS} {i : Nat}
    {cin : ExpHOL 64} {rest : ProgHOL 64} {as bs : List (BitVec 64)} {c : BitVec 64}
    (ha : s.locals.lookup a = some (wv as)) (hb : s.locals.lookup b = some (wv bs))
    (hia : i < as.length) (hib : i < bs.length) (hra : r ≠ a) (hrb : r ≠ b)
    (hc : ev (setVarHOLFinite r v00 s) cin = some (.val (.word c))) :
    (evaluateHOLFiniteState s (subStep a b r i cin rest)).1 =
      (evaluateHOLFiniteState
        (setVarHOLFinite r (.rStruct [.val (.word (wordAddCarryHOL as[i] (bs[i] ^^^ (0 - 1)) c).1),
            .val (.word (wordAddCarryHOL as[i] (bs[i] ^^^ (0 - 1)) c).2)])
          (setVarHOLFinite r v00 s)) rest).1 := by
  have h00 : ev s (.rstruct [cw 0, cw 0]) = some v00 := rfl
  rw [subStep, eval_dec_ok h00 (by rw [v00, shapeOf_pair]; exact shapeEq_shK 2)]
  have ha' : (setVarHOLFinite r v00 s).locals.lookup a = some (wv as) := by
    rw [lk_set_ne _ _ hra]; exact ha
  have hb' : (setVarHOLFinite r v00 s).locals.lookup b = some (wv bs) := by
    rw [lk_set_ne _ _ hrb]; exact hb
  have hx : ev (setVarHOLFinite r v00 s) (.op .xor [.rfield i (lv b), .op .sub [cw 0, cw 1]]) =
      some (.val (.word (bs[i] ^^^ (0 - 1)))) := by
    rw [ev_op2 (ev_rfield_wv (by rw [ev_lv]; exact hb') hib)
      (ev_op2 (ev_cw _ 0) (ev_cw _ 1))]
    simp [wordOpHOL, wordOp]
  have hargs := evs_cons (ev_rfield_wv (by rw [ev_lv]; exact ha') hia) (evs_cons hx (evs_cons hc evs_nil))
  have hvalid : isValidValueHOLFinite (setVarHOLFinite r v00 s) .local r
      (.rStruct [.val (.word (wordAddCarryHOL as[i] (bs[i] ^^^ (0 - 1)) c).1),
        .val (.word (wordAddCarryHOL as[i] (bs[i] ^^^ (0 - 1)) c).2)]) = true := by
    rw [isValidValueHOLFinite_eq]
    simp only [isValidValueHOLExact, lookupKvarHOLExact]
    rw [lk_set_self]
    dsimp only [v00]
    rw [shapeOf_pair, shapeOf_pair]
    exact shapeEq_shK 2
  have hprim := eval_primitive_ok (o := .addCarry) hargs rfl hvalid
  rw [eval_seq_none (by rw [hprim]), hprim]
  rfl

/-- `u256_sub` / `bls_fp_sub_raw` return relation on `k` limbs (`extra` trailing words,
the borrow flag for `bls_fp_sub_raw`). -/
def SubRet (k extra : Nat) (vs : List (ValueHOL 64)) (v : ValueHOL 64) : Prop :=
  ∃ as bs : List (BitVec 64), as.length = k ∧ bs.length = k ∧ vs = [wv as, wv bs] ∧
    ∃ ds es : List (BitVec 64), ds.length = k ∧ es.length = extra ∧ v = wv (ds ++ es) ∧
      wn ds = (wn as + 2 ^ (64 * k) - wn bs) % 2 ^ (64 * k)

theorem sub4_mod (a0 a1 a2 a3 b0 b1 b2 b3 s0 s1 s2 s3 c1 c2 c3 c4 : Nat)
    (hb0 : b0 < 2 ^ 64) (hb1 : b1 < 2 ^ 64) (hb2 : b2 < 2 ^ 64) (hb3 : b3 < 2 ^ 64)
    (hs0 : s0 < 2 ^ 64) (hs1 : s1 < 2 ^ 64) (hs2 : s2 < 2 ^ 64) (hs3 : s3 < 2 ^ 64)
    (e0 : s0 + 2 ^ 64 * c1 = a0 + (2 ^ 64 - 1 - b0) + 1)
    (e1 : s1 + 2 ^ 64 * c2 = a1 + (2 ^ 64 - 1 - b1) + c1)
    (e2 : s2 + 2 ^ 64 * c3 = a2 + (2 ^ 64 - 1 - b2) + c2)
    (e3 : s3 + 2 ^ 64 * c4 = a3 + (2 ^ 64 - 1 - b3) + c3) :
    wn4 s0 s1 s2 s3 = (wn4 a0 a1 a2 a3 + 2 ^ (64 * 4) - wn4 b0 b1 b2 b3) % 2 ^ (64 * 4) := by
  unfold wn4
  have key : s0 + 2^64 * (s1 + 2^64 * (s2 + 2^64 * s3)) + 2^256 * c4 =
      a0 + 2^64 * (a1 + 2^64 * (a2 + 2^64 * a3)) + 2^256 -
        (b0 + 2^64 * (b1 + 2^64 * (b2 + 2^64 * b3))) := by omega
  have hT : s0 + 2^64 * (s1 + 2^64 * (s2 + 2^64 * s3)) < 2 ^ 256 := by omega
  rw [show 64 * 4 = 256 from rfl, ← key, Nat.add_mul_mod_self_left, Nat.mod_eq_of_lt hT]

theorem funRet_u256_sub {X : Ctx 64} (hC : X.code.lookup = guestCode) :
    FunRet σ X (nm "u256_sub") (SubRet 4 0) := by
  intro vs body callee rs hl s _ hloc _ v hv
  rw [hC] at hl
  obtain ⟨rfl, rfl, A, B, rfl, hA, hB, hla, hlb⟩ := lookupCode_two code_u256_sub (by decide) hl
  obtain ⟨as, has, rfl⟩ := eq_wv_of_shapeEq hA
  obtain ⟨bs, hbs, rfl⟩ := eq_wv_of_shapeEq hB
  refine ⟨as, bs, has, hbs, rfl, ?_⟩
  have ha : s.locals.lookup (nm "a") = some (wv as) := by rw [hloc]; exact hla
  have hb : s.locals.lookup (nm "b") = some (wv bs) := by rw [hloc]; exact hlb
  obtain ⟨a0, a1, a2, a3, rfl⟩ := list4 has
  obtain ⟨b0, b1, b2, b3, rfl⟩ := list4 hbs
  rw [u256SubBody] at hv
  -- limb 0
  rw [eval_subStep ha hb (by simp) (by simp) (by decide) (by decide) (ev_cw _ 1)] at hv
  generalize hS0 : wordAddCarryHOL _ _ (BitVec.ofNat 64 1) = S0 at hv
  -- limb 1
  rw [eval_subStep (by rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]; exact ha)
    (by rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]; exact hb)
    (by simp) (by simp) (by decide) (by decide)
    (by rw [ev_rfield (by rw [ev_lv, lk_set_ne _ _ (by decide), lk_set_self])]; rfl)] at hv
  generalize hS1 : wordAddCarryHOL _ _ S0.2 = S1 at hv
  -- limb 2
  rw [eval_subStep
    (by rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide),
      lk_set_ne _ _ (by decide)]; exact ha)
    (by rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide),
      lk_set_ne _ _ (by decide)]; exact hb)
    (by simp) (by simp) (by decide) (by decide)
    (by rw [ev_rfield (by rw [ev_lv, lk_set_ne _ _ (by decide), lk_set_self])]; rfl)] at hv
  generalize hS2 : wordAddCarryHOL _ _ S1.2 = S2 at hv
  -- limb 3
  rw [eval_subStep
    (by rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide),
      lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]; exact ha)
    (by rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide),
      lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]; exact hb)
    (by simp) (by simp) (by decide) (by decide)
    (by rw [ev_rfield (by rw [ev_lv, lk_set_ne _ _ (by decide), lk_set_self])]; rfl)] at hv
  generalize hS3 : wordAddCarryHOL _ _ S2.2 = S3 at hv
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
  refine ⟨[S0.1, S1.1, S2.1, S3.1], [], rfl, rfl, by simp, ?_⟩
  simp only [List.getElem_cons_zero, List.getElem_cons_succ] at hS0 hS1 hS2 hS3
  have h0 := addCarry_spec a0 (b0 ^^^ (0 - 1)) (BitVec.ofNat 64 1) (by decide)
  rw [hS0, toNat_xor_m1] at h0
  have h1 := addCarry_spec a1 (b1 ^^^ (0 - 1)) S0.2 h0.2
  rw [hS1, toNat_xor_m1] at h1
  have h2 := addCarry_spec a2 (b2 ^^^ (0 - 1)) S1.2 h1.2
  rw [hS2, toNat_xor_m1] at h2
  have h3 := addCarry_spec a3 (b3 ^^^ (0 - 1)) S2.2 h2.2
  rw [hS3, toNat_xor_m1] at h3
  have e1 : (BitVec.ofNat 64 1).toNat = 1 := rfl
  rw [e1] at h0
  rw [wn_four, wn_four, wn_four]
  exact sub4_mod _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ b0.isLt b1.isLt b2.isLt b3.isLt
    S0.1.isLt S1.1.isLt S2.1.isLt S3.1.isLt h0.1 h1.1 h2.1 h3.1

end InitECandidate.Solver.Spec
