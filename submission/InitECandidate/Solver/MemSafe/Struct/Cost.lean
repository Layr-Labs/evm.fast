import InitECandidate.Solver.MemSafe.Struct.CostCode
import InitECandidate.Solver.MemSafe.Struct.Run
import Mathlib.Tactic.Ring

/-!
# Functional specifications of the memory-cost helpers

`PureR σ X f R`: every good result of `f` returns a value `v` with `R vs s v`, keeping memory and
globals. Proved for `add_sat`, `sat_word`, `u256_is_zero`, `ceil32`, `words_of`, `mul64x64`
(exact 128-bit product), `memory_gas_cost` and `extend_memory_cost1`, against the semantic
functions `addSatF`, `satWordF`, `isZeroF`, `ceil32F`, `wordsOfF`, `mgcF`, `emc1F`.

`emc1_ok`: the arithmetic fact the memory opcodes need (§2.4, saturating memory cost): when the
cost is not `WORD_MAX`, the expansion is a multiple of 32, the new length stays below `2^37`,
and a nonempty range `[start, start + size)` lies below the new length.
-/

set_option maxRecDepth 100000

namespace InitECandidate.Solver.MemSafe.Struct
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)

variable {σ : Type} {X : Ctx 64}

/-! ## Pure callee specifications -/

/-- Every good result returns a value `v` with `R vs s v`; memory and globals kept. -/
def PureR (σ : Type) (X : Ctx 64) (f : MlS)
    (R : List (ValueHOL 64) → State σ → ValueHOL 64 → Prop) : Prop :=
  FunSpec σ X f (fun vs s r t => Good (some r) → t.memory = s.memory ∧ t.globals = s.globals ∧
    ∃ v, r = .returned v ∧ R vs s v)

/-- The post of a pure body run. -/
def PureP (s0 : State σ) (R : ValueHOL 64 → Prop) (r : Option (PanSemResultExact 64))
    (t : State σ) : Prop :=
  t.memory = s0.memory ∧ t.globals = s0.globals ∧ ∃ v, r = some (.returned v) ∧ R v

theorem pureR_of {f : MlS} {R : List (ValueHOL 64) → State σ → ValueHOL 64 → Prop}
    (h : ∀ vs body callee rs, lookupCodeHOLFinite X.code.lookup f vs = some (body, callee, rs) →
      ∀ s0 : State σ, InCtx s0 X → s0.locals = callee →
        HoareG σ X (fun u => u = s0) body (PureP s0 (R vs s0))) : PureR σ X f R := by
  intro vs body callee rs hl s hs hloc r hr hg
  have := h vs body callee rs hl s hs hloc s hs rfl (by rw [hr]; exact hg)
  rw [hr] at this
  obtain ⟨hm, hgl, v, hv, hR⟩ := this
  exact ⟨hm, hgl, v, Option.some.inj hv, hR⟩

/-- `var rn = f(args); k` with a pure callee. -/
theorem hoareG_decCallP {P : State σ → Prop}
    {Q : Option (PanSemResultExact 64) → State σ → Prop} {rn f : MlS} {sh : ShapeHOL}
    {args : List (ExpHOL 64)} {k : ProgHOL 64}
    {R : List (ValueHOL 64) → State σ → ValueHOL 64 → Prop} (hf : PureR σ X f R)
    (hQ : ∀ r (t : State σ) o, Q r t → Q r { t with locals := t.locals.resVarEq (rn, o) })
    (h : ∀ s, InCtx s X → P s → ∀ vs, evs s args = some vs → ∀ callee v,
      R vs (callEntryStateHOLFinite s callee) v → shapeEqHOL (shapeOfHOLExact v) sh = true →
      HoareG σ X (fun t => t.memory = s.memory ∧ t.globals = s.globals ∧
        t.locals = s.locals.update (rn, v)) k Q) :
    HoareG σ X P (.decCall rn sh f args k) Q := by
  refine hoareG_decCall hf (fun s hs hp vs hvs callee v st hR hst hsh => ?_)
    (fun s hs hp vs hvs callee r st hR hst habn => ?_)
  · obtain ⟨hm, hg, v', hv', hRv⟩ := hR (by simp)
    simp only [PanSemResultExact.returned.injEq] at hv'
    subst hv'
    refine hoareG_conseq (h s hs hp vs hvs callee v hRv hsh) (fun t _ ht => ?_)
      (fun r t _ _ hq => hQ r t _ hq)
    subst ht
    exact ⟨hm, hg, rfl⟩
  · obtain ⟨-, -, v, rfl, -⟩ := hR (abn_good habn)
    exact absurd rfl (abn_ne_ret habn v)

/-- `var rn = f(args); k` with a pure callee, also tracking the byte order. -/
theorem hoareG_decCallPb {P : State σ → Prop}
    {Q : Option (PanSemResultExact 64) → State σ → Prop} {rn f : MlS} {sh : ShapeHOL}
    {args : List (ExpHOL 64)} {k : ProgHOL 64}
    {R : List (ValueHOL 64) → State σ → ValueHOL 64 → Prop} (hf : PureR σ X f R)
    (hQ : ∀ r (t : State σ) o, Q r t → Q r { t with locals := t.locals.resVarEq (rn, o) })
    (h : ∀ s, InCtx s X → P s → ∀ vs, evs s args = some vs → ∀ callee v,
      R vs (callEntryStateHOLFinite s callee) v → shapeEqHOL (shapeOfHOLExact v) sh = true →
      HoareG σ X (fun t => t.memory = s.memory ∧ t.globals = s.globals ∧ t.be = s.be ∧
        t.locals = s.locals.update (rn, v)) k Q) :
    HoareG σ X P (.decCall rn sh f args k) Q := by
  refine hoareG_decCall (FunSpec.and hf (funSpec_be' f))
    (fun s hs hp vs hvs callee v st ⟨hR, hbe⟩ hst hsh => ?_)
    (fun s hs hp vs hvs callee r st ⟨hR, _⟩ hst habn => ?_)
  · obtain ⟨hm, hg, v', hv', hRv⟩ := hR (by simp)
    simp only [PanSemResultExact.returned.injEq] at hv'
    subst hv'
    refine hoareG_conseq (h s hs hp vs hvs callee v hRv hsh) (fun t _ ht => ?_)
      (fun r t _ _ hq => hQ r t _ hq)
    subst ht
    exact ⟨hm, hg, hbe, rfl⟩
  · obtain ⟨-, -, v, rfl, -⟩ := hR (abn_good habn)
    exact absurd rfl (abn_ne_ret habn v)

theorem pureP_locals {s0 : State σ} {R : ValueHOL 64 → Prop} (r : Option (PanSemResultExact 64))
    (t : State σ) (l : HolFiniteMapExact MlS (ValueHOL 64)) (h : PureP s0 R r t) :
    PureP s0 R r { t with locals := l } := h

/-! ## Semantic functions -/

def wMax : BitVec 64 := BitVec.ofNat 64 18446744073709551615

def addSatF (a b : BitVec 64) : BitVec 64 := if (a + b).toNat < a.toNat then wMax else a + b

def satWordF (v0 v1 v2 v3 : BitVec 64) : BitVec 64 :=
  if (v1 ||| (v2 ||| (v3 ||| 0))) = 0 then v0 else wMax

def isZeroF (v0 v1 v2 v3 : BitVec 64) : BitVec 64 :=
  if (v0 ||| (v1 ||| (v2 ||| (v3 ||| 0)))) = 0 then 1 else 0

def ceil32F (v : BitVec 64) : BitVec 64 :=
  if v &&& (BitVec.ofNat 64 31 &&& ~~~0) = 0 then v
  else addSatF v (BitVec.ofNat 64 32 - (v &&& (BitVec.ofNat 64 31 &&& ~~~0)))

def wordsOfF (n : BitVec 64) : BitVec 64 := ceil32F n >>> (5 : Nat)

def mgcF (size : BitVec 64) : BitVec 64 :=
  if 2 ^ 64 ≤ (wordsOfF size).toNat * (wordsOfF size).toNat then wMax
  else addSatF (wordsOfF size * BitVec.ofNat 64 3)
    (BitVec.ofNat 64 ((wordsOfF size).toNat * (wordsOfF size).toNat) >>> 9)

theorem ev_cMax (s : State σ) : ev s cMax = some (.val (.word wMax)) := rfl

/-! ## `add_sat`, `sat_word`, `u256_is_zero` -/

theorem ev_wv_word {s : State σ} {x : MlS} {ws : List (BitVec 64)}
    (h : s.locals.lookup x = some (wv ws)) {i : Nat} (hi : i < ws.length) :
    ev s (.rfield i (lv x)) = some (.val (.word ws[i])) := ev_rfield_wv (ev_lw' h) hi

theorem pure_add_sat (hC : X.code.lookup = guestCode) :
    PureR σ X (nm "add_sat") (fun vs _ v => ∀ a b, vs = [.val (.word a), .val (.word b)] →
      v = .val (.word (addSatF a b))) := by
  refine pureR_of fun vs body callee rs hl s0 _ hloc => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, rfl, ha, hb, hA, hB⟩ := lookupCode_two code_add_sat (by decide) hl
  obtain ⟨a, rfl⟩ := val_of_shapeEq_one ha
  obtain ⟨b, rfl⟩ := val_of_shapeEq_one hb
  have hla : s0.locals.lookup (nm "a") = some (.val (.word a)) := by rw [hloc]; exact hA
  have hlb : s0.locals.lookup (nm "b") = some (.val (.word b)) := by rw [hloc]; exact hB
  refine hoareG_dec fun s _ hs v hv _ => ?_
  subst s
  rw [ev_add2 (ev_lw' hla) (ev_lw' hlb)] at hv
  cases hv
  have hla' : (setVarHOLFinite (nm "s") (.val (.word (a + b))) s0).locals.lookup (nm "a") =
      some (.val (.word a)) := by rw [lk_set_ne _ _ (by decide)]; exact hla
  refine hoareG_seq (R := fun r t => (r ≠ none → PureP s0 (fun v => ∀ a' b',
      [ValueHOL.val (.word a), .val (.word b)] = [.val (.word a'), .val (.word b')] →
        v = .val (.word (addSatF a' b'))) r t) ∧ (r = none → (a + b).toNat ≥ a.toNat ∧
      t = setVarHOLFinite (nm "s") (.val (.word (a + b))) s0)) ?_ (fun r t _ hr _ h => h.1 hr) ?_
  · refine hoareG_ite ?_ ?_
    · refine hoareG_return fun u _ ⟨hu, w, hw, hw0⟩ v hv => ⟨fun _ => ?_, fun h => by cases h⟩
      subst hu
      obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
      rw [ev_lv_set] at hx; cases hx
      rw [ev_lw' hla'] at hy; cases hy
      rw [ev_cMax] at hv; cases hv
      refine ⟨rfl, rfl, _, rfl, fun a' b' h => ?_⟩
      simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at h
      obtain ⟨rfl, rfl⟩ := h
      unfold addSatF
      rw [if_pos (cmp_lower_true hxy)]
    · refine hoareG_skip fun u _ ⟨hu, hc⟩ => ⟨fun h => absurd rfl h, fun _ => ⟨?_, hu⟩⟩
      subst hu
      obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc
      rw [ev_lv_set] at hx; cases hx
      rw [ev_lw' hla'] at hy; cases hy
      exact cmp_lower_false hxy
  · refine hoareG_return fun u _ hR v hv => ?_
    obtain ⟨hge, rfl⟩ := hR.2 rfl
    rw [ev_lv_set] at hv; cases hv
    refine ⟨rfl, rfl, _, rfl, fun a' b' h => ?_⟩
    simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at h
    obtain ⟨rfl, rfl⟩ := h
    unfold addSatF
    rw [if_neg (by omega)]

theorem wv4 {ws : List (BitVec 64)} (h : ws.length = 4) : ∃ a b c d, ws = [a, b, c, d] := by
  match ws, h with
  | [a, b, c, d], _ => exact ⟨a, b, c, d, rfl⟩

theorem ev_or3 {s : State σ} {a b c : ExpHOL 64} {x y z : BitVec 64}
    (ha : ev s a = some (.val (.word x))) (hb : ev s b = some (.val (.word y)))
    (hc : ev s c = some (.val (.word z))) :
    ev s (.op .or [a, b, c]) = some (.val (.word (x ||| (y ||| (z ||| 0))))) :=
  ev_op (xs := [x, y, z]) (evs_cons ha (evs_cons hb (evs_cons hc evs_nil)))

theorem ev_or4 {s : State σ} {a b c d : ExpHOL 64} {x y z w : BitVec 64}
    (ha : ev s a = some (.val (.word x))) (hb : ev s b = some (.val (.word y)))
    (hc : ev s c = some (.val (.word z))) (hd : ev s d = some (.val (.word w))) :
    ev s (.op .or [a, b, c, d]) = some (.val (.word (x ||| (y ||| (z ||| (w ||| 0)))))) :=
  ev_op (xs := [x, y, z, w]) (evs_cons ha (evs_cons hb (evs_cons hc (evs_cons hd evs_nil))))

/-- `if c { return x }; return y` where `c` evaluates to `b`, from a state agreeing with `s0`. -/
theorem hoareG_ifRet {s0 : State σ} {R : ValueHOL 64 → Prop} {c x y : ExpHOL 64} {u0 : State σ}
    (hu0 : u0.memory = s0.memory ∧ u0.globals = s0.globals) {b : Bool}
    (hc : ev u0 c = some (.val (.word (if b then 1 else 0))))
    (hx : b = true → ∀ v, ev u0 x = some v → R v) (hy : b = false → ∀ v, ev u0 y = some v → R v) :
    HoareG σ X (fun u => u = u0) (.seq (.ite c (.return x) .skip) (.return y)) (PureP s0 R) := by
  refine hoareG_seq (R := fun r t => (r ≠ none → PureP s0 R r t) ∧ (r = none → t = u0 ∧ b = false))
    ?_ (fun r t _ hr _ h => h.1 hr) ?_
  · refine hoareG_ite ?_ ?_
    · refine hoareG_return fun u _ ⟨hu, w, hw, hw0⟩ v hv => ⟨fun _ => ?_, fun h => by cases h⟩
      subst hu
      rw [hc] at hw
      cases b
      · simp at hw; exact absurd hw.symm hw0
      · exact ⟨hu0.1, hu0.2, v, rfl, hx rfl v hv⟩
    · refine hoareG_skip fun u _ ⟨hu, hz⟩ => ⟨fun h => absurd rfl h, fun _ => ⟨hu, ?_⟩⟩
      subst hu
      rw [hc] at hz
      cases b
      · rfl
      · simp at hz
  · refine hoareG_return fun u _ hR v hv => ?_
    obtain ⟨rfl, hb⟩ := hR.2 rfl
    exact ⟨hu0.1, hu0.2, v, rfl, hy hb v hv⟩

theorem cmp_eq_val {s : State σ} {a b : ExpHOL 64} {x y : BitVec 64}
    (ha : ev s a = some (.val (.word x))) (hb : ev s b = some (.val (.word y))) :
    ev s (.cmp .equal a b) = some (.val (.word (if decide (x = y) then 1 else 0))) := by
  rw [ev_cmp ha hb]; simp [wordCmpHOL]

theorem cmp_ne_val {s : State σ} {a b : ExpHOL 64} {x y : BitVec 64}
    (ha : ev s a = some (.val (.word x))) (hb : ev s b = some (.val (.word y))) :
    ev s (.cmp .notEqual a b) = some (.val (.word (if decide (x ≠ y) then 1 else 0))) := by
  rw [ev_cmp ha hb]; simp [wordCmpHOL]

theorem pure_sat_word (hC : X.code.lookup = guestCode) :
    PureR σ X (nm "sat_word") (fun vs _ v => ∀ a b c d, vs = [wv [a, b, c, d]] →
      v = .val (.word (satWordF a b c d))) := by
  refine pureR_of fun vs body callee rs hl s0 _ hloc => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, rfl, hA, hla⟩ := lookupCode_one code_sat_word hl
  obtain ⟨ws, hl4, rfl⟩ := eq_wv_of_shapeEq hA
  obtain ⟨a, b, c, d, rfl⟩ := wv4 hl4
  have hv : s0.locals.lookup (nm "v") = some (wv [a, b, c, d]) := by rw [hloc]; exact hla
  refine hoareG_ifRet (b := decide ((b ||| (c ||| (d ||| 0))) ≠ 0)) ⟨rfl, rfl⟩
    (cmp_ne_val (ev_or3 (ev_wv_word hv (i := 1) (by simp)) (ev_wv_word hv (i := 2) (by simp))
      (ev_wv_word hv (i := 3) (by simp))) (ev_cw _ 0)) ?_ ?_
  · intro hb v hvv a' b' c' d' he
    rw [ev_cMax] at hvv; cases hvv
    simp only [List.cons.injEq, and_true] at he
    have := wv_inj he
    simp only [List.cons.injEq] at this
    obtain ⟨rfl, rfl, rfl, rfl, -⟩ := this
    simp only [decide_eq_true_eq] at hb
    unfold satWordF; rw [if_neg hb]
  · intro hb v hvv a' b' c' d' he
    rw [show rf 0 "v" = .rfield 0 (lv (nm "v")) from rfl, ev_wv_word hv (i := 0) (by simp)] at hvv
    cases hvv
    simp only [List.cons.injEq, and_true] at he
    have := wv_inj he
    simp only [List.cons.injEq] at this
    obtain ⟨rfl, rfl, rfl, rfl, -⟩ := this
    simp only [decide_eq_false_iff_not, not_not] at hb
    unfold satWordF; rw [if_pos hb]; rfl

theorem pure_u256_is_zero (hC : X.code.lookup = guestCode) :
    PureR σ X (nm "u256_is_zero") (fun vs _ v => ∀ a b c d, vs = [wv [a, b, c, d]] →
      v = .val (.word (isZeroF a b c d))) := by
  refine pureR_of fun vs body callee rs hl s0 _ hloc => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, rfl, hA, hla⟩ := lookupCode_one code_u256_is_zero hl
  obtain ⟨ws, hl4, rfl⟩ := eq_wv_of_shapeEq hA
  obtain ⟨a, b, c, d, rfl⟩ := wv4 hl4
  have hv : s0.locals.lookup (nm "a") = some (wv [a, b, c, d]) := by rw [hloc]; exact hla
  refine hoareG_ifRet (b := decide ((a ||| (b ||| (c ||| (d ||| 0)))) = 0)) ⟨rfl, rfl⟩
    (cmp_eq_val (ev_or4 (ev_wv_word hv (i := 0) (by simp)) (ev_wv_word hv (i := 1) (by simp))
      (ev_wv_word hv (i := 2) (by simp)) (ev_wv_word hv (i := 3) (by simp))) (ev_cw _ 0)) ?_ ?_
  · intro hb v hvv a' b' c' d' he
    rw [ev_cw] at hvv; cases hvv
    simp only [List.cons.injEq, and_true] at he
    have := wv_inj he
    simp only [List.cons.injEq] at this
    obtain ⟨rfl, rfl, rfl, rfl, -⟩ := this
    simp only [decide_eq_true_eq] at hb
    unfold isZeroF; rw [if_pos hb]; rfl
  · intro hb v hvv a' b' c' d' he
    rw [ev_cw] at hvv; cases hvv
    simp only [List.cons.injEq, and_true] at he
    have := wv_inj he
    simp only [List.cons.injEq] at this
    obtain ⟨rfl, rfl, rfl, rfl, -⟩ := this
    simp only [decide_eq_false_iff_not] at hb
    unfold isZeroF; rw [if_neg hb]; rfl

theorem lk_upd_self (m : HolFiniteMapExact MlS (ValueHOL 64)) (x : MlS) (v : ValueHOL 64) :
    (m.update (x, v)).lookup x = some v := lookup_update_self m x v

theorem lk_upd_ne' (m : HolFiniteMapExact MlS (ValueHOL 64)) {x y : MlS} (v : ValueHOL 64)
    (h : x ≠ y) : (m.update (x, v)).lookup y = m.lookup y := lookup_update_ne m v h

theorem pure_ceil32 (hC : X.code.lookup = guestCode) :
    PureR σ X (nm "ceil32") (fun vs _ v => ∀ a, vs = [.val (.word a)] →
      v = .val (.word (ceil32F a))) := by
  have hAS := pure_add_sat (σ := σ) hC
  refine pureR_of fun vs body callee rs hl s0 _ hloc => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, rfl, hA, hla⟩ := lookupCode_one code_ceil32 hl
  obtain ⟨a, rfl⟩ := val_of_shapeEq_one hA
  have hv : s0.locals.lookup (nm "v") = some (.val (.word a)) := by rw [hloc]; exact hla
  refine hoareG_dec fun s _ hs w hw _ => ?_
  subst s
  have hw' : w = .val (.word (a &&& (BitVec.ofNat 64 31 &&& ~~~0))) := by
    rw [ev_op2 (ev_lw' hv) (ev_cw _ 31)] at hw
    exact (Option.some.inj hw).symm
  subst hw'
  set r := a &&& (BitVec.ofNat 64 31 &&& ~~~0) with hr
  have hv' : (setVarHOLFinite (nm "r") (.val (.word r)) s0).locals.lookup (nm "v") =
      some (.val (.word a)) := by rw [lk_set_ne _ _ (by decide)]; exact hv
  refine hoareG_seq (R := fun res t => (res ≠ none → PureP s0 (fun v => ∀ a',
      [ValueHOL.val (.word a)] = [.val (.word a')] → v = .val (.word (ceil32F a'))) res t) ∧
      (res = none → t = setVarHOLFinite (nm "r") (.val (.word r)) s0 ∧ r ≠ 0))
    ?_ (fun r t _ hr _ h => h.1 hr) ?_
  · refine hoareG_ite ?_ ?_
    · refine hoareG_return fun u _ ⟨hu, w, hw, hw0⟩ v hvv => ⟨fun _ => ?_, fun h => by cases h⟩
      subst hu
      obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
      rw [ev_lv_set] at hx; cases hx
      rw [ev_cw] at hy; cases hy
      rw [ev_lw' hv'] at hvv; cases hvv
      refine ⟨rfl, rfl, _, rfl, fun a' h => ?_⟩
      simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at h
      subst h
      unfold ceil32F; rw [← hr, if_pos (show r = 0 from cmp_eq_true hxy)]
    · refine hoareG_skip fun u _ ⟨hu, hc⟩ => ⟨fun h => absurd rfl h, fun _ => ⟨hu, ?_⟩⟩
      subst hu
      obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc
      rw [ev_lv_set] at hx; cases hx
      rw [ev_cw] at hy; cases hy
      exact cmp_eq_false hxy
  refine hoareG_pre (P := fun t => t = setVarHOLFinite (nm "r") (.val (.word r)) s0 ∧ r ≠ 0) ?_
    (fun _ _ h => h.2 rfl)
  refine hoareG_decCallP hAS (fun r t o h => pureP_locals r t _ h) fun u _ ⟨hu, hr0⟩ vs hvs callee
    v hR _ => ?_
  subst hu
  rw [evs_cons (ev_lw' hv') (evs_cons (ev_sub2 (ev_cw _ 32) (ev_lv_set _ _ _)) evs_nil)] at hvs
  cases hvs
  have hvv := hR a _ rfl
  subst hvv
  refine hoareG_return fun t _ ⟨hm, hg, hl⟩ v hv => ⟨hm, hg, v, rfl, fun a' h => ?_⟩
  rw [ev_lw' (by rw [hl]; exact lk_upd_self _ _ _)] at hv
  cases hv
  simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at h
  subst h
  unfold ceil32F; rw [← hr, if_neg (show ¬ r = 0 from hr0)]

theorem pure_words_of (hC : X.code.lookup = guestCode) :
    PureR σ X (nm "words_of") (fun vs _ v => ∀ a, vs = [.val (.word a)] →
      v = .val (.word (wordsOfF a))) := by
  have hc32 := pure_ceil32 (σ := σ) hC
  refine pureR_of fun vs body callee rs hl s0 _ hloc => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, rfl, hA, hla⟩ := lookupCode_one code_words_of hl
  obtain ⟨a, rfl⟩ := val_of_shapeEq_one hA
  have hv : s0.locals.lookup (nm "n") = some (.val (.word a)) := by rw [hloc]; exact hla
  refine hoareG_decCallP hc32 (fun r t o h => pureP_locals r t _ h) fun u _ hu vs hvs callee
    v hR _ => ?_
  subst hu
  rw [evs_cons (ev_lw' hv) evs_nil] at hvs
  cases hvs
  have hvv := hR a rfl
  subst hvv
  refine hoareG_return fun t _ ⟨hm, hg, hl⟩ v hv => ⟨hm, hg, v, rfl, fun a' h => ?_⟩
  rw [ev_shift (ev_lw' (by rw [hl]; exact lk_upd_self _ _ _)) (ev_cw _ 5)] at hv
  simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at h
  subst h
  simp [wordShiftHOL] at hv
  rw [← hv]; rfl

/-! ## `mul64x64` -/

theorem hoareG_primitive {P : State σ → Prop} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    {n : MlS} {o : PrimOp} {args : List (ExpHOL 64)}
    (h : ∀ s, InCtx s X → P s → ∀ vs v, evs s args = some vs → panPrimopHOLExact o vs = some v →
      Q none (setVarHOLFinite n v s)) :
    HoareG σ X P (.primitive n o args) Q := by
  intro s hs hp
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.primitive n o args)]
  dsimp only
  split
  · intro hg; exact absurd hg (by simp [Good])
  · rename_i vs hvs
    split
    · intro hg; exact absurd hg (by simp [Good])
    · rename_i v hv
      split
      · intro _; exact h s hs hp vs v hvs hv
      · intro hg; exact absurd hg (by simp [Good])

theorem panPrimop_addCarry (l r c : BitVec 64) :
    panPrimopHOLExact .addCarry [.val (.word l), .val (.word r), .val (.word c)] =
      some (.rStruct [.val (.word (wordAddCarryHOL l r c).1),
        .val (.word (wordAddCarryHOL l r c).2)]) := rfl

theorem mul64_nat {a b A0 A1 B0 B1 m0 m1 l0 l1 : Nat} (ha : a = A1 * 2 ^ 32 + A0)
    (hb : b = B1 * 2 ^ 32 + B0) (hm : m0 + 2 ^ 64 * m1 = A0 * B1 + A1 * B0)
    (hl : l0 + 2 ^ 64 * l1 = A0 * B0 + m0 % 2 ^ 32 * 2 ^ 32) (hl0 : l0 < 2 ^ 64) :
    a * b = 2 ^ 64 * (A1 * B1 + m0 / 2 ^ 32 + m1 * 2 ^ 32 + l1) + l0 := by
  subst ha hb
  have e1 : (A1 * 2 ^ 32 + A0) * (B1 * 2 ^ 32 + B0) =
      A1 * B1 * 2 ^ 64 + (A0 * B1 + A1 * B0) * 2 ^ 32 + A0 * B0 := by ring
  rw [e1, ← hm]
  have em := Nat.div_add_mod m0 (2 ^ 32)
  generalize A1 * B1 = P11 at *
  generalize A0 * B0 = P00 at *
  generalize m0 / 2 ^ 32 = q at *
  generalize m0 % 2 ^ 32 = r at *
  subst em
  have e2 : (2 ^ 32 * q + r + 2 ^ 64 * m1) * 2 ^ 32 = 2 ^ 64 * q + r * 2 ^ 32 + 2 ^ 96 * m1 := by
    ring
  rw [e2]
  have e3 : P00 + r * 2 ^ 32 = l0 + 2 ^ 64 * l1 := by omega
  have e4 : 2 ^ 64 * (P11 + q + m1 * 2 ^ 32 + l1) + l0 =
      P11 * 2 ^ 64 + 2 ^ 64 * q + 2 ^ 96 * m1 + (l0 + 2 ^ 64 * l1) := by ring
  rw [e4, ← e3]
  ring

set_option maxHeartbeats 2000000 in
/-- `mul64x64(a, b)` returns the 128-bit product as `<lo, hi>`. -/
theorem pure_mul64x64 (hC : X.code.lookup = guestCode) :
    PureR σ X (nm "mul64x64") (fun vs _ v => ∀ a b, vs = [.val (.word a), .val (.word b)] →
      v = wv [BitVec.ofNat 64 (a.toNat * b.toNat), BitVec.ofNat 64 (a.toNat * b.toNat / 2 ^ 64)]) := by
  refine pureR_of fun vs body callee rs hl s0 _ hloc => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, rfl, ha, hb, hA, hB⟩ := lookupCode_two code_mul64x64 (by decide) hl
  obtain ⟨a, rfl⟩ := val_of_shapeEq_one ha
  obtain ⟨b, rfl⟩ := val_of_shapeEq_one hb
  have hla : s0.locals.lookup (nm "a") = some (.val (.word a)) := by rw [hloc]; exact hA
  have hlb : s0.locals.lookup (nm "b") = some (.val (.word b)) := by rw [hloc]; exact hB
  -- the limbs
  have hmask : ∀ x : BitVec 64, (x &&& (BitVec.ofNat 64 4294967295 &&& ~~~0)).toNat =
      x.toNat % 2 ^ 32 := fun x => by
    rw [show (BitVec.ofNat 64 4294967295 &&& ~~~0 : BitVec 64) = BitVec.ofNat 64 (2 ^ 32 - 1) by
      decide, BitVec.toNat_and, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by decide),
      Nat.and_two_pow_sub_one_eq_mod]
  have hshr : ∀ x : BitVec 64, (x >>> (32 : Nat)).toNat = x.toNat / 2 ^ 32 := fun x => by
    rw [BitVec.toNat_ushiftRight, Nat.shiftRight_eq_div_pow]
  have hsh32 : ∀ x : BitVec 64, wordShiftHOL .lsr x (BitVec.ofNat 64 32).toNat = some (x >>> (32 : Nat)) :=
    fun x => by simp [wordShiftHOL]
  have hsl32 : ∀ x : BitVec 64, wordShiftHOL .lsl x (BitVec.ofNat 64 32).toNat = some (x <<< (32 : Nat)) :=
    fun x => by simp [wordShiftHOL]
  have hand : ∀ (u : State σ) (x : MlS) (w : BitVec 64), u.locals.lookup x = some (.val (.word w)) →
      ev u (.op .and [lv x, cw 4294967295]) =
        some (.val (.word (w &&& (BitVec.ofNat 64 4294967295 &&& ~~~0)))) :=
    fun u x w h => by rw [ev_op2 (ev_lw' h) (ev_cw _ _)]; rfl
  have hlsr : ∀ (u : State σ) (e : ExpHOL 64) (w : BitVec 64), ev u e = some (.val (.word w)) →
      ev u (.shift .lsr e (cw 32)) = some (.val (.word (w >>> (32 : Nat)))) :=
    fun u e w h => by rw [ev_shift h (ev_cw _ _), hsh32]; rfl
  have hlsl : ∀ (u : State σ) (e : ExpHOL 64) (w : BitVec 64), ev u e = some (.val (.word w)) →
      ev u (.shift .lsl e (cw 32)) = some (.val (.word (w <<< (32 : Nat)))) :=
    fun u e w h => by rw [ev_shift h (ev_cw _ _), hsl32]; rfl
  generalize hA0 : a &&& (BitVec.ofNat 64 4294967295 &&& ~~~0) = A0
  generalize hB0 : b &&& (BitVec.ofNat 64 4294967295 &&& ~~~0) = B0
  have hA0n : A0.toNat = a.toNat % 2 ^ 32 := by rw [← hA0, hmask]
  have hB0n : B0.toNat = b.toNat % 2 ^ 32 := by rw [← hB0, hmask]
  have hA1n := hshr a
  have hB1n := hshr b
  refine hoareG_dec fun u1 _ hu1 v1 hv1 _ => ?_
  subst u1
  rw [hand _ _ _ hla, hA0] at hv1; cases hv1
  refine hoareG_dec fun u2 _ hu2 v2 hv2 _ => ?_
  subst u2
  rw [hlsr _ _ _ (ev_lw' (by rw [lk_set_ne _ _ (by decide)]; exact hla))] at hv2; cases hv2
  refine hoareG_dec fun u3 _ hu3 v3 hv3 _ => ?_
  subst u3
  rw [hand _ _ _ (by rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]; exact hlb), hB0]
    at hv3
  cases hv3
  refine hoareG_dec fun u4 _ hu4 v4 hv4 _ => ?_
  subst u4
  rw [hlsr _ _ _ (ev_lw' (by
    rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]
    exact hlb))] at hv4
  cases hv4
  set u4 := setVarHOLFinite (nm "b1") (.val (.word (b >>> (32 : Nat)))) (setVarHOLFinite (nm "b0")
    (.val (.word B0)) (setVarHOLFinite (nm "a1") (.val (.word (a >>> (32 : Nat))))
      (setVarHOLFinite (nm "a0") (.val (.word A0)) s0))) with hu4
  have l_a0 : u4.locals.lookup (nm "a0") = some (.val (.word A0)) := by
    rw [hu4, lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide),
      lk_set_self]
  have l_a1 : u4.locals.lookup (nm "a1") = some (.val (.word (a >>> (32 : Nat)))) := by
    rw [hu4, lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), lk_set_self]
  have l_b0 : u4.locals.lookup (nm "b0") = some (.val (.word B0)) := by
    rw [hu4, lk_set_ne _ _ (by decide), lk_set_self]
  have l_b1 : u4.locals.lookup (nm "b1") = some (.val (.word (b >>> (32 : Nat)))) := by
    rw [hu4, lk_set_self]
  generalize hA1 : a >>> (32 : Nat) = A1 at l_a1 hA1n
  generalize hB1 : b >>> (32 : Nat) = B1 at l_b1 hB1n
  have hlt32 : ∀ x : BitVec 64, x.toNat % 2 ^ 32 < 2 ^ 32 := fun x => Nat.mod_lt _ (by decide)
  have hlt32' : ∀ x : BitVec 64, x.toNat / 2 ^ 32 < 2 ^ 32 := fun x => by
    have := x.isLt; omega
  have hmul : ∀ x y : BitVec 64, x.toNat < 2 ^ 32 → y.toNat < 2 ^ 32 →
      (x * y).toNat = x.toNat * y.toNat := fun x y hx hy => by
    rw [BitVec.toNat_mul, Nat.mod_eq_of_lt]
    calc x.toNat * y.toNat < 2 ^ 32 * 2 ^ 32 := Nat.mul_lt_mul'' hx hy
      _ = 2 ^ 64 := by norm_num
  -- `p00`, `p11`
  refine hoareG_dec fun u5 _ hu5 v5 hv5 _ => ?_
  subst u5
  rw [ev_mul2 (ev_lw' l_a0) (ev_lw' l_b0)] at hv5; cases hv5
  refine hoareG_dec fun u6 _ hu6 v6 hv6 _ => ?_
  subst u6
  rw [ev_mul2 (ev_lw' (by rw [lk_set_ne _ _ (by decide)]; exact l_a1))
    (ev_lw' (by rw [lk_set_ne _ _ (by decide)]; exact l_b1))] at hv6
  cases hv6
  -- `mid`
  refine hoareG_dec fun u7 _ hu7 v7 hv7 _ => ?_
  subst u7
  -- from here on: a predicate on the locals
  refine hoareG_pre (P := fun t => t.locals.lookup (nm "a0") = some (.val (.word A0)) ∧
      t.locals.lookup (nm "a1") = some (.val (.word A1)) ∧
      t.locals.lookup (nm "b0") = some (.val (.word B0)) ∧
      t.locals.lookup (nm "b1") = some (.val (.word B1)) ∧
      t.locals.lookup (nm "p00") = some (.val (.word (A0 * B0))) ∧
      t.locals.lookup (nm "p11") = some (.val (.word (A1 * B1))) ∧
      t.memory = s0.memory ∧ t.globals = s0.globals) ?_ (fun t _ ht => by
        subst ht
        refine ⟨?_, ?_, ?_, ?_, ?_, ?_, rfl, rfl⟩
        · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]
          exact l_a0
        · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]
          exact l_a1
        · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]
          exact l_b0
        · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]
          exact l_b1
        · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), lk_set_self]
        · rw [lk_set_ne _ _ (by decide), lk_set_self])
  have hMC : ∃ M0 M1 : BitVec 64, wordAddCarryHOL (A0 * B1) (A1 * B0) (BitVec.ofNat 64 0) = (M0, M1) :=
    ⟨_, _, rfl⟩
  obtain ⟨M0, M1, hMC⟩ := hMC
  have hLC : ∃ L0 L1 : BitVec 64,
      wordAddCarryHOL (A0 * B0) (M0 <<< (32 : Nat)) (BitVec.ofNat 64 0) = (L0, L1) := ⟨_, _, rfl⟩
  obtain ⟨L0, L1, hLC⟩ := hLC
  refine hoareG_seq (R := fun r t => r = none ∧ t.locals.lookup (nm "p00") =
      some (.val (.word (A0 * B0))) ∧ t.locals.lookup (nm "p11") = some (.val (.word (A1 * B1))) ∧
      t.locals.lookup (nm "mid") = some (wv [M0, M1]) ∧ t.memory = s0.memory ∧
      t.globals = s0.globals) ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoareG_primitive fun u _ ⟨h1, h2, h3, h4, h5, h6, hm, hg⟩ vs v hvs hv => ?_
    rw [evs_cons (ev_mul2 (ev_lw' h1) (ev_lw' h4)) (evs_cons (ev_mul2 (ev_lw' h2) (ev_lw' h3))
      (evs_cons (ev_cw _ 0) evs_nil))] at hvs
    cases hvs
    rw [panPrimop_addCarry, hMC] at hv
    have hv' := (Option.some.inj hv).symm
    subst hv'
    exact ⟨rfl, by rw [lk_set_ne _ _ (by decide)]; exact h5, by rw [lk_set_ne _ _ (by decide)]; exact h6,
      lk_set_self _ _ _, hm, hg⟩
  refine hoareG_pre (P := fun t => t.locals.lookup (nm "p00") =
      some (.val (.word (A0 * B0))) ∧ t.locals.lookup (nm "p11") = some (.val (.word (A1 * B1))) ∧
      t.locals.lookup (nm "mid") = some (wv [M0, M1]) ∧ t.memory = s0.memory ∧
      t.globals = s0.globals) ?_ (fun _ _ h => h.2)
  refine hoareG_dec fun u9 _ ⟨h5, h6, h7, hm, hg⟩ v9 _ _ => ?_
  refine hoareG_pre (P := fun t => t.locals.lookup (nm "p00") =
      some (.val (.word (A0 * B0))) ∧ t.locals.lookup (nm "p11") = some (.val (.word (A1 * B1))) ∧
      t.locals.lookup (nm "mid") = some (wv [M0, M1]) ∧ t.memory = s0.memory ∧
      t.globals = s0.globals) ?_ (fun t _ ht => by
        subst ht
        exact ⟨by rw [lk_set_ne _ _ (by decide)]; exact h5, by rw [lk_set_ne _ _ (by decide)]; exact h6,
          by rw [lk_set_ne _ _ (by decide)]; exact h7, hm, hg⟩)
  refine hoareG_seq (R := fun r t => r = none ∧
      t.locals.lookup (nm "p11") = some (.val (.word (A1 * B1))) ∧
      t.locals.lookup (nm "mid") = some (wv [M0, M1]) ∧
      t.locals.lookup (nm "lo") = some (wv [L0, L1]) ∧ t.memory = s0.memory ∧
      t.globals = s0.globals) ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoareG_primitive fun u _ ⟨h5, h6, h7, hm, hg⟩ vs v hvs hv => ?_
    unfold rf at hvs
    rw [evs_cons (ev_lw' h5) (evs_cons (hlsl _ _ _ (ev_wv_word h7 (i := 0) (by simp)))
      (evs_cons (ev_cw _ 0) evs_nil))] at hvs
    cases hvs
    simp only [List.getElem_cons_zero] at hv
    rw [panPrimop_addCarry, hLC] at hv
    have hv' := (Option.some.inj hv).symm
    subst hv'
    exact ⟨rfl, by rw [lk_set_ne _ _ (by decide)]; exact h6, by rw [lk_set_ne _ _ (by decide)]; exact h7,
      lk_set_self _ _ _, hm, hg⟩
  refine hoareG_pre (P := fun t => t.locals.lookup (nm "p11") = some (.val (.word (A1 * B1))) ∧
      t.locals.lookup (nm "mid") = some (wv [M0, M1]) ∧
      t.locals.lookup (nm "lo") = some (wv [L0, L1]) ∧ t.memory = s0.memory ∧
      t.globals = s0.globals) ?_ (fun _ _ h => h.2)
  refine hoareG_dec fun u11 _ ⟨h6, h7, h8, hm, hg⟩ v11 hv11 _ => ?_
  have hhi := ev_op (s := u11) (o := .add) (xs := [A1 * B1, M0 >>> (32 : Nat), M1 <<< (32 : Nat), L1])
    (es := [lv (nm "p11"), .shift .lsr (rf 0 "mid") (cw 32), .shift .lsl (rf 1 "mid") (cw 32),
      rf 1 "lo"])
    (evs_cons (ev_lw' h6) (evs_cons (hlsr _ _ _ (ev_wv_word h7 (i := 0) (by simp)))
      (evs_cons (hlsl _ _ _ (ev_wv_word h7 (i := 1) (by simp)))
        (evs_cons (ev_wv_word h8 (i := 1) (by simp)) evs_nil))))
  rw [hhi] at hv11
  have hv11' : v11 = .val (.word (A1 * B1 + (M0 >>> (32 : Nat) + (M1 <<< (32 : Nat) + (L1 + 0))))) :=
    (Option.some.inj hv11).symm
  subst hv11'
  refine hoareG_return fun u _ hu v hv => ?_
  subst hu
  unfold rf at hv
  rw [ev_rstruct (evs_cons (ev_wv_word (by rw [lk_set_ne _ _ (by decide)]; exact h8) (i := 0)
    (by simp)) (evs_cons (ev_lv_set _ _ _) evs_nil))] at hv
  cases hv
  refine ⟨hm, hg, _, rfl, fun a' b' h => ?_⟩
  simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at h
  obtain ⟨rfl, rfl⟩ := h
  -- the arithmetic
  have ha0 := hA0n; have hb0 := hB0n
  have hp00 : (A0 * B0).toNat = A0.toNat * B0.toNat :=
    hmul _ _ (by rw [hA0n]; exact hlt32 _) (by rw [hB0n]; exact hlt32 _)
  have hp11' : (A1 * B1).toNat = A1.toNat * B1.toNat :=
    hmul _ _ (by rw [hA1n]; exact hlt32' _) (by rw [hB1n]; exact hlt32' _)
  have hab1 : (A0 * B1).toNat = A0.toNat * B1.toNat :=
    hmul _ _ (by rw [hA0n]; exact hlt32 _) (by rw [hB1n]; exact hlt32' _)
  have hab2 : (A1 * B0).toNat = A1.toNat * B0.toNat :=
    hmul _ _ (by rw [hA1n]; exact hlt32' _) (by rw [hB0n]; exact hlt32 _)
  obtain ⟨hm1, hm1le⟩ := addCarry_spec (A0 * B1) (A1 * B0) (BitVec.ofNat 64 0) (by simp)
  rw [hMC] at hm1 hm1le
  obtain ⟨hl1, hl1le⟩ := addCarry_spec (A0 * B0) (M0 <<< (32 : Nat)) (BitVec.ofNat 64 0) (by simp)
  rw [hLC] at hl1 hl1le
  simp only [BitVec.toNat_ofNat, Nat.zero_mod, Nat.add_zero] at hm1 hl1
  dsimp only at hm1 hl1 hm1le hl1le
  have hsl : (M0 <<< (32 : Nat)).toNat = M0.toNat % 2 ^ 32 * 2 ^ 32 := by
    rw [BitVec.toNat_shiftLeft, Nat.shiftLeft_eq]
    have := M0.isLt
    rw [show (2 : Nat) ^ 64 = 2 ^ 32 * 2 ^ 32 by norm_num, Nat.mul_mod_mul_right] 
  rw [hsl, hp00] at hl1
  rw [hab1, hab2] at hm1
  have key := mul64_nat (a := a.toNat) (b := b.toNat) (A0 := A0.toNat) (A1 := A1.toNat)
    (B0 := B0.toNat) (B1 := B1.toNat) (by rw [hA0n, hA1n]; omega) (by rw [hB0n, hB1n]; omega)
    hm1 hl1 L0.isLt
  have hab : a.toNat * b.toNat < 2 ^ 128 := by
    calc a.toNat * b.toNat < 2 ^ 64 * 2 ^ 64 := Nat.mul_lt_mul'' a.isLt b.isLt
      _ = 2 ^ 128 := by norm_num
  have hsum : A1.toNat * B1.toNat + M0.toNat / 2 ^ 32 + M1.toNat * 2 ^ 32 + L1.toNat < 2 ^ 64 := by
    omega
  have hshl1 : (M1 <<< (32 : Nat)).toNat = M1.toNat * 2 ^ 32 := by
    rw [BitVec.toNat_shiftLeft, Nat.shiftLeft_eq, Nat.mod_eq_of_lt]
    have : M1.toNat ≤ 1 := hm1le
    omega
  have hhi : (A1 * B1 + (M0 >>> (32 : Nat) + (M1 <<< (32 : Nat) + (L1 + 0)))).toNat =
      A1.toNat * B1.toNat + M0.toNat / 2 ^ 32 + M1.toNat * 2 ^ 32 + L1.toNat := by
    have h0 : (L1 + 0 : BitVec 64) = L1 := BitVec.add_zero L1
    rw [h0]
    have e1 : (M1 <<< (32 : Nat) + L1).toNat = M1.toNat * 2 ^ 32 + L1.toNat := by
      rw [BitVec.toNat_add, hshl1, Nat.mod_eq_of_lt (by omega)]
    have e2 : (M0 >>> (32 : Nat) + (M1 <<< (32 : Nat) + L1)).toNat =
        M0.toNat / 2 ^ 32 + (M1.toNat * 2 ^ 32 + L1.toNat) := by
      rw [BitVec.toNat_add, hshr, e1, Nat.mod_eq_of_lt (by omega)]
    rw [BitVec.toNat_add, hp11', e2, Nat.mod_eq_of_lt (by omega)]
    omega
  have hL0 : L0 = BitVec.ofNat 64 (a.toNat * b.toNat) := by
    apply BitVec.eq_of_toNat_eq
    rw [BitVec.toNat_ofNat, key]
    have := L0.isLt
    omega
  have hHI : A1 * B1 + (M0 >>> (32 : Nat) + (M1 <<< (32 : Nat) + (L1 + 0))) =
      BitVec.ofNat 64 (a.toNat * b.toNat / 2 ^ 64) := by
    apply BitVec.eq_of_toNat_eq
    rw [hhi, BitVec.toNat_ofNat, key]
    have := L0.isLt
    rw [Nat.mod_eq_of_lt (by omega)]
    omega
  rw [hL0, hHI]
  rfl

/-! ## `memory_gas_cost` -/

theorem pure_memory_gas_cost (hC : X.code.lookup = guestCode) :
    PureR σ X (nm "memory_gas_cost") (fun vs _ v => ∀ x, vs = [.val (.word x)] →
      v = .val (.word (mgcF x))) := by
  have hW := pure_words_of (σ := σ) hC
  have hM := pure_mul64x64 (σ := σ) hC
  have hAS := pure_add_sat (σ := σ) hC
  refine pureR_of fun vs body callee rs hl s0 _ hloc => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, rfl, hA, hla⟩ := lookupCode_one code_memory_gas_cost hl
  obtain ⟨x, rfl⟩ := val_of_shapeEq_one hA
  have hv : s0.locals.lookup (nm "size") = some (.val (.word x)) := by rw [hloc]; exact hla
  refine hoareG_decCallP hW (fun r t o h => pureP_locals r t _ h) fun u _ hu vs hvs callee
    v hR _ => ?_
  subst u
  rw [evs_cons (ev_lw' hv) evs_nil] at hvs
  cases hvs
  have hvv := hR x rfl
  subst hvv
  set w := wordsOfF x with hw
  refine hoareG_decCallP hM (fun r t o h => pureP_locals r t _ h) fun u _ ⟨hm, hg, hl⟩ vs hvs
    callee v hR _ => ?_
  have hwl : u.locals.lookup (nm "w") = some (.val (.word w)) := by rw [hl]; exact lk_upd_self _ _ _
  rw [evs_cons (ev_lw' hwl) (evs_cons (ev_lw' hwl) evs_nil)] at hvs
  cases hvs
  have hvv := hR w w rfl
  subst hvv
  have hsq : ∀ t : State σ, t.locals = u.locals.update (nm "sq", wv [BitVec.ofNat 64 (w.toNat * w.toNat),
      BitVec.ofNat 64 (w.toNat * w.toNat / 2 ^ 64)]) → t.locals.lookup (nm "sq") =
        some (wv [BitVec.ofNat 64 (w.toNat * w.toNat), BitVec.ofNat 64 (w.toNat * w.toNat / 2 ^ 64)]) :=
    fun t ht => by rw [ht]; exact lk_upd_self _ _ _
  have hww : w.toNat * w.toNat < 2 ^ 128 := by
    calc w.toNat * w.toNat < 2 ^ 64 * 2 ^ 64 := Nat.mul_lt_mul'' w.isLt w.isLt
      _ = 2 ^ 128 := by norm_num
  have hhi : (BitVec.ofNat 64 (w.toNat * w.toNat / 2 ^ 64) ≠ 0) ↔ 2 ^ 64 ≤ w.toNat * w.toNat := by
    constructor
    · intro h; by_contra hc; apply h; apply BitVec.eq_of_toNat_eq
      rw [BitVec.toNat_ofNat]; simp; omega
    · intro h hc; have := congrArg BitVec.toNat hc
      rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)] at this; simp at this; omega
  refine hoareG_seq (R := fun r t => (r ≠ none → PureP s0 (fun v => ∀ x',
      [ValueHOL.val (.word x)] = [.val (.word x')] → v = .val (.word (mgcF x'))) r t) ∧
      (r = none → t.memory = s0.memory ∧ t.globals = s0.globals ∧
        t.locals.lookup (nm "w") = some (.val (.word w)) ∧
        t.locals.lookup (nm "sq") = some (wv [BitVec.ofNat 64 (w.toNat * w.toNat),
          BitVec.ofNat 64 (w.toNat * w.toNat / 2 ^ 64)]) ∧ w.toNat * w.toNat < 2 ^ 64))
    ?_ (fun r t _ hr _ h => h.1 hr) ?_
  · refine hoareG_ite ?_ ?_
    · refine hoareG_return fun t _ ⟨⟨hm', hg', hl'⟩, c, hc, hc0⟩ v hvv =>
        ⟨fun _ => ⟨hm'.trans hm, hg'.trans hg, v, rfl, fun x' h => ?_⟩, fun h => by cases h⟩
      obtain ⟨y, z, hy, hz, hyz⟩ := cmp_true hc hc0
      unfold rf at hy
      rw [ev_wv_word (hsq t hl') (i := 1) (by simp)] at hy; cases hy
      rw [ev_cw] at hz; cases hz
      rw [ev_cMax] at hvv; cases hvv
      simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at h
      subst h
      have := hhi.mp (cmp_ne_true hyz)
      unfold mgcF; rw [← hw, if_pos this]
    · refine hoareG_skip fun t _ ⟨⟨hm', hg', hl'⟩, hc⟩ => ⟨fun h => absurd rfl h, fun _ =>
        ⟨hm'.trans hm, hg'.trans hg, by rw [hl', lk_upd_ne' _ _ (by decide)]; exact hwl, hsq t hl', ?_⟩⟩
      obtain ⟨y, z, hy, hz, hyz⟩ := cmp_false hc
      unfold rf at hy
      rw [ev_wv_word (hsq t hl') (i := 1) (by simp)] at hy; cases hy
      rw [ev_cw] at hz; cases hz
      have := cmp_ne_false hyz
      by_contra hc'
      exact (hhi.mpr (by omega)) this
  refine hoareG_pre (P := fun t => t.memory = s0.memory ∧ t.globals = s0.globals ∧
      t.locals.lookup (nm "w") = some (.val (.word w)) ∧
      t.locals.lookup (nm "sq") = some (wv [BitVec.ofNat 64 (w.toNat * w.toNat),
        BitVec.ofNat 64 (w.toNat * w.toNat / 2 ^ 64)]) ∧ w.toNat * w.toNat < 2 ^ 64) ?_
    (fun _ _ h => h.2 rfl)
  refine hoareG_decCallP hAS (fun r t o h => pureP_locals r t _ h) fun t _ ⟨hm', hg', hwl', hsq', hlt⟩
    vs hvs callee v hR _ => ?_
  have hsh9 : wordShiftHOL .lsr (BitVec.ofNat 64 (w.toNat * w.toNat)) (BitVec.ofNat 64 9).toNat =
      some (BitVec.ofNat 64 (w.toNat * w.toNat) >>> (9 : Nat)) := by simp [wordShiftHOL]
  unfold rf at hvs
  rw [evs_cons (ev_mul2 (ev_lw' hwl') (ev_cw _ 3)) (evs_cons (by
      rw [ev_shift (ev_wv_word hsq' (i := 0) (by simp)) (ev_cw _ 9)]
      simp only [List.getElem_cons_zero]
      rw [hsh9]; rfl) evs_nil)] at hvs
  cases hvs
  have hvv := hR _ _ rfl
  subst hvv
  refine hoareG_return fun t' _ ⟨hm'', hg'', hl''⟩ v hv => ⟨hm''.trans hm', hg''.trans hg', v, rfl,
    fun x' h => ?_⟩
  rw [ev_lw' (by rw [hl'']; exact lk_upd_self _ _ _)] at hv
  cases hv
  simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at h
  subst h
  unfold mgcF; rw [← hw, if_neg (by omega)]
  rfl

/-! ## `extend_memory_cost1` -/

/-- `extend_memory_cost1(start, size)` with `MEM_LEN = cur`: `<cost, expand_by>`. -/
def emc1F (a0 a1 a2 a3 b0 b1 b2 b3 cur : BitVec 64) : BitVec 64 × BitVec 64 :=
  if isZeroF b0 b1 b2 b3 ≠ 0 then (0, 0) else
  if addSatF (satWordF a0 a1 a2 a3) (satWordF b0 b1 b2 b3) = wMax then (wMax, 0) else
  if (ceil32F (addSatF (satWordF a0 a1 a2 a3) (satWordF b0 b1 b2 b3))).toNat ≤ (ceil32F cur).toNat
  then (0, 0) else
  if mgcF (ceil32F (addSatF (satWordF a0 a1 a2 a3) (satWordF b0 b1 b2 b3))) = wMax then (wMax, 0)
  else (mgcF (ceil32F (addSatF (satWordF a0 a1 a2 a3) (satWordF b0 b1 b2 b3))) -
      mgcF (ceil32F cur),
    ceil32F (addSatF (satWordF a0 a1 a2 a3) (satWordF b0 b1 b2 b3)) - ceil32F cur)

/-- `if c { return x }; rest`. -/
theorem hoareG_guardRet {P : State σ → Prop} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    {c x : ExpHOL 64} {rest : ProgHOL 64}
    (hret : ∀ s, InCtx s X → P s → ∀ w, ev s c = some (.val (.word w)) → w ≠ 0 → ∀ v,
      ev s x = some v → Q (some (.returned v)) (emptyLocalsHOLFinite s))
    (hrest : HoareG σ X (fun s => P s ∧ ev s c = some (.val (.word 0))) rest Q) :
    HoareG σ X P (.seq (.ite c (.return x) .skip) rest) Q := by
  refine hoareG_seq (R := fun r t => (r ≠ none → Q r t) ∧
      (r = none → P t ∧ ev t c = some (.val (.word 0)))) ?_ (fun r t _ hr _ h => h.1 hr)
    (hoareG_pre hrest fun _ _ h => h.2 rfl)
  refine hoareG_ite ?_ ?_
  · exact hoareG_return fun s hs ⟨hp, w, hw, hw0⟩ v hv =>
      ⟨fun _ => hret s hs hp w hw hw0 v hv, fun h => by cases h⟩
  · exact hoareG_skip fun s _ h => ⟨fun h' => absurd rfl h', fun _ => h⟩

theorem ev_ret2 {s : State σ} {a b : ExpHOL 64} {x y : BitVec 64}
    (ha : ev s a = some (.val (.word x))) (hb : ev s b = some (.val (.word y))) :
    ev s (.rstruct [a, b]) = some (wv [x, y]) :=
  ev_rstruct (evs_cons ha (evs_cons hb evs_nil))

theorem pure_extend_memory_cost1 (hC : X.code.lookup = guestCode) :
    PureR σ X (nm "extend_memory_cost1") (fun vs s v => ∀ a0 a1 a2 a3 b0 b1 b2 b3 E,
      vs = [wv [a0, a1, a2, a3], wv [b0, b1, b2, b3]] →
      s.globals.lookup gEv = some (.val (.word E)) →
      v = wv [(emc1F a0 a1 a2 a3 b0 b1 b2 b3 (rd s.memory (E + BitVec.ofNat 64 32))).1,
        (emc1F a0 a1 a2 a3 b0 b1 b2 b3 (rd s.memory (E + BitVec.ofNat 64 32))).2]) := by
  have hZ := pure_u256_is_zero (σ := σ) hC
  have hS := pure_sat_word (σ := σ) hC
  have hA := pure_add_sat (σ := σ) hC
  have hC32 := pure_ceil32 (σ := σ) hC
  have hMG := pure_memory_gas_cost (σ := σ) hC
  refine pureR_of fun vs body callee rs hl s0 _ hloc => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, rfl, ha, hb, hA', hB'⟩ := lookupCode_two code_extend_memory_cost1
    (by decide) hl
  obtain ⟨wa, hla4, rfl⟩ := eq_wv_of_shapeEq ha
  obtain ⟨wb, hlb4, rfl⟩ := eq_wv_of_shapeEq hb
  obtain ⟨a0, a1, a2, a3, rfl⟩ := wv4 hla4
  obtain ⟨b0, b1, b2, b3, rfl⟩ := wv4 hlb4
  have hst : s0.locals.lookup (nm "start") = some (wv [a0, a1, a2, a3]) := by rw [hloc]; exact hA'
  have hsz : s0.locals.lookup (nm "size") = some (wv [b0, b1, b2, b3]) := by rw [hloc]; exact hB'
  -- the final value, given the guards
  set F := emc1F a0 a1 a2 a3 b0 b1 b2 b3 with hF
  have post : ∀ (t : State σ) (v : ValueHOL 64), t.memory = s0.memory → t.globals = s0.globals →
      (∀ E, s0.globals.lookup gEv = some (.val (.word E)) →
        v = wv [(F (rd s0.memory (E + BitVec.ofNat 64 32))).1,
          (F (rd s0.memory (E + BitVec.ofNat 64 32))).2]) →
      PureP s0 (fun v => ∀ a0' a1' a2' a3' b0' b1' b2' b3' E,
        [wv [a0, a1, a2, a3], wv [b0, b1, b2, b3]] = [wv [a0', a1', a2', a3'], wv [b0', b1', b2', b3']] →
        s0.globals.lookup gEv = some (.val (.word E)) →
        v = wv [(emc1F a0' a1' a2' a3' b0' b1' b2' b3' (rd s0.memory (E + BitVec.ofNat 64 32))).1,
          (emc1F a0' a1' a2' a3' b0' b1' b2' b3' (rd s0.memory (E + BitVec.ofNat 64 32))).2])
        (some (.returned v)) t := by
    intro t v hm hg hv
    refine ⟨hm, hg, v, rfl, fun a0' a1' a2' a3' b0' b1' b2' b3' E he hE => ?_⟩
    simp only [List.cons.injEq, and_true] at he
    obtain ⟨h1, h2⟩ := he
    have e1 := wv_inj h1
    have e2 := wv_inj h2
    simp only [List.cons.injEq, and_true] at e1 e2
    obtain ⟨rfl, rfl, rfl, rfl⟩ := e1
    obtain ⟨rfl, rfl, rfl, rfl⟩ := e2
    exact hv E hE
  -- `var z = u256_is_zero(size)`
  refine hoareG_decCallP hZ (fun r t o h => pureP_locals r t _ h) fun u _ hu vs hvs callee
    v hR _ => ?_
  subst u
  rw [evs_cons (ev_lw' hsz) evs_nil] at hvs
  cases hvs
  have hvv := hR b0 b1 b2 b3 rfl
  subst hvv
  refine hoareG_guardRet ?_ ?_
  · intro t _ ⟨hm, hg, hl⟩ w hw hw0 v hv
    rw [cmp_ne_val (ev_lw' (by rw [hl]; exact lk_upd_self _ _ _)) (ev_cw _ 0)] at hw
    have hZ0 : isZeroF b0 b1 b2 b3 ≠ 0 := by
      intro h; rw [h] at hw; simp at hw; exact hw0 hw.symm
    rw [ev_ret2 (ev_cw _ 0) (ev_cw _ 0)] at hv
    cases hv
    refine post _ _ hm hg fun E _ => ?_
    rw [hF]; unfold emc1F; rw [if_pos hZ0]; rfl
  refine hoareG_pre (P := fun t => t.memory = s0.memory ∧ t.globals = s0.globals ∧
      t.locals.lookup (nm "start") = some (wv [a0, a1, a2, a3]) ∧
      t.locals.lookup (nm "size") = some (wv [b0, b1, b2, b3]) ∧ isZeroF b0 b1 b2 b3 = 0) ?_
    (fun t _ ⟨⟨hm, hg, hl⟩, hc⟩ => by
      rw [cmp_ne_val (ev_lw' (by rw [hl]; exact lk_upd_self _ _ _)) (ev_cw _ 0)] at hc
      refine ⟨hm, hg, by rw [hl, lk_upd_ne' _ _ (by decide)]; exact hst,
        by rw [hl, lk_upd_ne' _ _ (by decide)]; exact hsz, ?_⟩
      simpa using hc)
  -- `var s = sat_word(start); var n = sat_word(size); var endp = add_sat(s, n)`
  refine hoareG_decCallP hS (fun r t o h => pureP_locals r t _ h) fun u _ ⟨hm, hg, h1, h2, hz⟩
    vs hvs callee v hR _ => ?_
  rw [evs_cons (ev_lw' h1) evs_nil] at hvs
  cases hvs
  have hvv := hR a0 a1 a2 a3 rfl
  subst hvv
  refine hoareG_decCallP hS (fun r t o h => pureP_locals r t _ h) fun u' _ ⟨hm', hg', hl'⟩
    vs hvs callee v hR _ => ?_
  rw [evs_cons (ev_lw' (by rw [hl', lk_upd_ne' _ _ (by decide)]; exact h2)) evs_nil] at hvs
  cases hvs
  have hvv := hR b0 b1 b2 b3 rfl
  subst hvv
  refine hoareG_decCallP hA (fun r t o h => pureP_locals r t _ h) fun u'' _ ⟨hm'', hg'', hl''⟩
    vs hvs callee v hR _ => ?_
  have hs1 : u''.locals.lookup (nm "s") = some (.val (.word (satWordF a0 a1 a2 a3))) := by
    rw [hl'', lk_upd_ne' _ _ (by decide), hl']; exact lk_upd_self _ _ _
  have hn1 : u''.locals.lookup (nm "n") = some (.val (.word (satWordF b0 b1 b2 b3))) := by
    rw [hl'']; exact lk_upd_self _ _ _
  rw [evs_cons (ev_lw' hs1) (evs_cons (ev_lw' hn1) evs_nil)] at hvs
  cases hvs
  have hvv := hR _ _ rfl
  subst hvv
  set ENDP := addSatF (satWordF a0 a1 a2 a3) (satWordF b0 b1 b2 b3) with hENDP
  refine hoareG_guardRet ?_ ?_
  · intro t _ ⟨hm3, hg3, hl3⟩ w hw hw0 v hv
    rw [cmp_eq_val (ev_lw' (by rw [hl3]; exact lk_upd_self _ _ _)) (ev_cMax _)] at hw
    have hE0 : ENDP = wMax := by
      by_contra h; simp [h] at hw; exact hw0 hw.symm
    rw [ev_ret2 (ev_cMax _) (ev_cw _ 0)] at hv
    cases hv
    refine post _ _ (hm3.trans (hm''.trans (hm'.trans hm))) (hg3.trans (hg''.trans (hg'.trans hg)))
      fun E _ => ?_
    rw [hF]; unfold emc1F; rw [if_neg (by rw [hz]; simp), ← hENDP, if_pos hE0]; rfl
  have hm0 : u''.memory = s0.memory := hm''.trans (hm'.trans hm)
  have hg0 : u''.globals = s0.globals := hg''.trans (hg'.trans hg)
  refine hoareG_pre (P := fun t => t.memory = s0.memory ∧ t.globals = s0.globals ∧
      t.locals.lookup (nm "endp") = some (.val (.word ENDP)) ∧ ENDP ≠ wMax) ?_
    (fun t _ ⟨⟨hm3, hg3, hl3⟩, hc⟩ => by
      have hel : t.locals.lookup (nm "endp") = some (.val (.word ENDP)) := by
        rw [hl3]; exact lk_upd_self _ _ _
      rw [cmp_eq_val (ev_lw' hel) (ev_cMax _)] at hc
      exact ⟨hm3.trans hm0, hg3.trans hg0, hel, by simpa using hc⟩)
  -- `var cur = MEM_LEN`
  refine hoareG_dec fun u3 _ ⟨hm3, hg3, hel, hne⟩ v hv _ => ?_
  obtain ⟨w, hw, -, rfl⟩ := ev_load1_inv hv
  obtain ⟨E, y, hE, hy, rfl⟩ := ev_add2_inv hw
  rw [ev_cw] at hy; cases hy
  have hE0 : s0.globals.lookup gEv = some (.val (.word E)) := by rw [← hg3]; exact hE
  rw [hm3]
  set CUR := rd s0.memory (E + BitVec.ofNat 64 32) with hCUR
  refine hoareG_pre (P := fun t => t.memory = s0.memory ∧ t.globals = s0.globals ∧
      t.locals.lookup (nm "endp") = some (.val (.word ENDP)) ∧
      t.locals.lookup (nm "cur") = some (.val (.word CUR))) ?_ (fun t _ ht => by
        subst ht
        exact ⟨hm3, hg3, by rw [lk_set_ne _ _ (by decide)]; exact hel, lk_set_self _ _ _⟩)
  -- `var before = ceil32(cur); var after = ceil32(endp)`
  refine hoareG_decCallP hC32 (fun r t o h => pureP_locals r t _ h) fun u4 _ ⟨hm4, hg4, h4e, h4c⟩
    vs hvs callee v hR _ => ?_
  rw [evs_cons (ev_lw' h4c) evs_nil] at hvs
  cases hvs
  have hvv := hR CUR rfl
  subst hvv
  refine hoareG_decCallP hC32 (fun r t o h => pureP_locals r t _ h) fun u5 _ ⟨hm5, hg5, hl5⟩
    vs hvs callee v hR _ => ?_
  rw [evs_cons (ev_lw' (by rw [hl5, lk_upd_ne' _ _ (by decide)]; exact h4e)) evs_nil] at hvs
  cases hvs
  have hvv := hR ENDP rfl
  subst hvv
  set BEF := ceil32F CUR with hBEF
  set AFT := ceil32F ENDP with hAFT
  have h6b : ∀ t : State σ, t.locals = u5.locals.update (nm "after", .val (.word AFT)) →
      t.locals.lookup (nm "before") = some (.val (.word BEF)) := fun t ht => by
    rw [ht, lk_upd_ne' _ _ (by decide), hl5]; exact lk_upd_self _ _ _
  have h6a : ∀ t : State σ, t.locals = u5.locals.update (nm "after", .val (.word AFT)) →
      t.locals.lookup (nm "after") = some (.val (.word AFT)) := fun t ht => by
    rw [ht]; exact lk_upd_self _ _ _
  have hm05 : u5.memory = s0.memory := hm5.trans hm4
  have hg05 : u5.globals = s0.globals := hg5.trans hg4
  refine hoareG_guardRet ?_ ?_
  · intro t _ ⟨hm6, hg6, hl6⟩ w hw hw0 v hv
    obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
    rw [ev_lw' (h6b t hl6)] at hx; cases hx
    rw [ev_lw' (h6a t hl6)] at hy; cases hy
    have hle := cmp_notLower_true hxy
    rw [ev_ret2 (ev_cw _ 0) (ev_cw _ 0)] at hv
    cases hv
    refine post _ _ (hm6.trans hm05) (hg6.trans hg05) fun E' hE' => ?_
    rw [hE0] at hE'
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hE'
    subst hE'
    rw [hF]; unfold emc1F; rw [if_neg (by rw [hz]; simp), ← hENDP, if_neg hne, ← hCUR, ← hAFT,
      ← hBEF, if_pos hle]; rfl
  refine hoareG_pre (P := fun t => t.memory = s0.memory ∧ t.globals = s0.globals ∧
      t.locals.lookup (nm "before") = some (.val (.word BEF)) ∧
      t.locals.lookup (nm "after") = some (.val (.word AFT)) ∧ BEF.toNat < AFT.toNat) ?_
    (fun t _ ⟨⟨hm6, hg6, hl6⟩, hc⟩ => by
      obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc
      rw [ev_lw' (h6b t hl6)] at hx; cases hx
      rw [ev_lw' (h6a t hl6)] at hy; cases hy
      exact ⟨hm6.trans hm05, hg6.trans hg05, h6b t hl6, h6a t hl6, cmp_notLower_false hxy⟩)
  -- `var ca = memory_gas_cost(after); var cb = memory_gas_cost(before)`
  refine hoareG_decCallP hMG (fun r t o h => pureP_locals r t _ h) fun u7 _ ⟨hm7, hg7, h7b, h7a, hlt⟩
    vs hvs callee v hR _ => ?_
  rw [evs_cons (ev_lw' h7a) evs_nil] at hvs
  cases hvs
  have hvv := hR AFT rfl
  subst hvv
  refine hoareG_decCallP hMG (fun r t o h => pureP_locals r t _ h) fun u8 _ ⟨hm8, hg8, hl8⟩
    vs hvs callee v hR _ => ?_
  rw [evs_cons (ev_lw' (by rw [hl8, lk_upd_ne' _ _ (by decide)]; exact h7b)) evs_nil] at hvs
  cases hvs
  have hvv := hR BEF rfl
  subst hvv
  have hm08 : u8.memory = s0.memory := hm8.trans hm7
  have hg08 : u8.globals = s0.globals := hg8.trans hg7
  have l9 : ∀ t : State σ, t.locals = u8.locals.update (nm "cb", .val (.word (mgcF BEF))) →
      t.locals.lookup (nm "ca") = some (.val (.word (mgcF AFT))) ∧
      t.locals.lookup (nm "cb") = some (.val (.word (mgcF BEF))) ∧
      t.locals.lookup (nm "after") = some (.val (.word AFT)) ∧
      t.locals.lookup (nm "before") = some (.val (.word BEF)) := fun t ht => by
    refine ⟨?_, ?_, ?_, ?_⟩
    · rw [ht, lk_upd_ne' _ _ (by decide), hl8]; exact lk_upd_self _ _ _
    · rw [ht]; exact lk_upd_self _ _ _
    · rw [ht, lk_upd_ne' _ _ (by decide), hl8, lk_upd_ne' _ _ (by decide)]; exact h7a
    · rw [ht, lk_upd_ne' _ _ (by decide), hl8, lk_upd_ne' _ _ (by decide)]; exact h7b
  refine hoareG_guardRet ?_ ?_
  · intro t _ ⟨hm9, hg9, hl9⟩ w hw hw0 v hv
    obtain ⟨l_ca, -, -, -⟩ := l9 t hl9
    rw [cmp_eq_val (ev_lw' l_ca) (ev_cMax _)] at hw
    have hca : mgcF AFT = wMax := by
      by_contra h; simp [h] at hw; exact hw0 hw.symm
    rw [ev_ret2 (ev_cMax _) (ev_cw _ 0)] at hv
    cases hv
    refine post _ _ (hm9.trans hm08) (hg9.trans hg08) fun E' hE' => ?_
    rw [hE0] at hE'
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hE'
    subst hE'
    rw [hF]; unfold emc1F; rw [if_neg (by rw [hz]; simp), ← hENDP, if_neg hne, ← hCUR, ← hAFT,
      ← hBEF, if_neg (by omega), if_pos hca]; rfl
  · refine hoareG_return fun t _ ⟨⟨hm9, hg9, hl9⟩, hc⟩ v hv => ?_
    obtain ⟨l_ca, l_cb, l_a, l_b⟩ := l9 t hl9
    rw [cmp_eq_val (ev_lw' l_ca) (ev_cMax _)] at hc
    have hca : mgcF AFT ≠ wMax := by simpa using hc
    rw [ev_ret2 (ev_sub2 (ev_lw' l_ca) (ev_lw' l_cb)) (ev_sub2 (ev_lw' l_a) (ev_lw' l_b))] at hv
    cases hv
    refine post _ _ (hm9.trans hm08) (hg9.trans hg08) fun E' hE' => ?_
    rw [hE0] at hE'
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hE'
    subst hE'
    rw [hF]; unfold emc1F; rw [if_neg (by rw [hz]; simp), ← hENDP, if_neg hne, ← hCUR, ← hAFT,
      ← hBEF, if_neg (by omega), if_neg hca]

/-! ## Arithmetic of the semantic functions -/

theorem wMax_toNat : wMax.toNat = 2 ^ 64 - 1 := rfl

theorem addSatF_spec (a b : BitVec 64) :
    (a.toNat + b.toNat < 2 ^ 64 → (addSatF a b).toNat = a.toNat + b.toNat) ∧
      (2 ^ 64 ≤ a.toNat + b.toNat → addSatF a b = wMax) := by
  have ha := a.isLt; have hb := b.isLt
  have hs : (a + b).toNat = (a.toNat + b.toNat) % 2 ^ 64 := BitVec.toNat_add a b
  constructor
  · intro h
    rw [Nat.mod_eq_of_lt h] at hs
    unfold addSatF; rw [if_neg (by omega), hs]
  · intro h
    have : (a + b).toNat < a.toNat := by rw [hs]; omega
    unfold addSatF; rw [if_pos this]

theorem addSatF_ne_max {a b : BitVec 64} (h : addSatF a b ≠ wMax) :
    (addSatF a b).toNat = a.toNat + b.toNat ∧ a.toNat + b.toNat < 2 ^ 64 := by
  by_cases hs : a.toNat + b.toNat < 2 ^ 64
  · exact ⟨(addSatF_spec a b).1 hs, hs⟩
  · exact absurd ((addSatF_spec a b).2 (by omega)) h

theorem mask31 (v : BitVec 64) : (v &&& (BitVec.ofNat 64 31 &&& ~~~0)).toNat = v.toNat % 32 := by
  rw [show (BitVec.ofNat 64 31 &&& ~~~0 : BitVec 64) = BitVec.ofNat 64 (2 ^ 5 - 1) by decide,
    BitVec.toNat_and, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by decide),
    Nat.and_two_pow_sub_one_eq_mod]

/-- `ceil32`: round up to a multiple of 32, or saturate. -/
theorem ceil32F_spec (v : BitVec 64) :
    v.toNat ≤ (ceil32F v).toNat ∧
      (ceil32F v ≠ wMax → (ceil32F v).toNat % 32 = 0 ∧ (ceil32F v).toNat < v.toNat + 32) ∧
      (v.toNat % 32 = 0 → ceil32F v = v) := by
  have hv := v.isLt
  have hm := mask31 v
  by_cases h0 : v &&& (BitVec.ofNat 64 31 &&& ~~~0) = 0
  · have : v.toNat % 32 = 0 := by rw [← hm, h0]; rfl
    unfold ceil32F; rw [if_pos h0]
    exact ⟨le_refl _, fun _ => ⟨this, by omega⟩, fun _ => rfl⟩
  · have hr : v.toNat % 32 ≠ 0 := fun h => h0 (BitVec.eq_of_toNat_eq (by rw [hm, h]; rfl))
    have hsub : (BitVec.ofNat 64 32 - (v &&& (BitVec.ofNat 64 31 &&& ~~~0))).toNat =
        32 - v.toNat % 32 := by
      rw [BitVec.toNat_sub, hm, BitVec.toNat_ofNat]; omega
    unfold ceil32F; rw [if_neg h0]
    obtain ⟨h1, h2⟩ := addSatF_spec v (BitVec.ofNat 64 32 - (v &&& (BitVec.ofNat 64 31 &&& ~~~0)))
    rw [hsub] at h1 h2
    by_cases hs : v.toNat + (32 - v.toNat % 32) < 2 ^ 64
    · rw [h1 hs]
      exact ⟨by omega, fun _ => ⟨by omega, by omega⟩, fun h => absurd h hr⟩
    · rw [h2 (by omega)]
      exact ⟨by rw [wMax_toNat]; omega, fun h => absurd rfl h, fun h => absurd h hr⟩

theorem mgcF_ne_max {x : BitVec 64} (h : mgcF x ≠ wMax) : (ceil32F x).toNat < 2 ^ 37 := by
  have hw : (wordsOfF x).toNat * (wordsOfF x).toNat < 2 ^ 64 := by
    by_contra hc; apply h; unfold mgcF; rw [if_pos (by omega)]
  have hwd : (wordsOfF x).toNat = (ceil32F x).toNat / 32 := by
    unfold wordsOfF; rw [BitVec.toNat_ushiftRight, Nat.shiftRight_eq_div_pow]
  rw [hwd] at hw
  by_contra hc
  have h32 : 2 ^ 32 ≤ (ceil32F x).toNat / 32 := by omega
  have := Nat.mul_le_mul h32 h32
  omega

/-- **The memory-cost fact.** When `extend_memory_cost1` does not saturate, the expansion is a
multiple of 32, the new length stays below `2^37`, and a nonempty range lies below it. -/
theorem emc1_ok {a0 a1 a2 a3 b0 b1 b2 b3 cur : BitVec 64} (hc32 : cur.toNat % 32 = 0)
    (hcb : cur.toNat < 2 ^ 37) (hne : (emc1F a0 a1 a2 a3 b0 b1 b2 b3 cur).1 ≠ wMax) :
    (emc1F a0 a1 a2 a3 b0 b1 b2 b3 cur).2.toNat % 32 = 0 ∧
      cur.toNat + (emc1F a0 a1 a2 a3 b0 b1 b2 b3 cur).2.toNat < 2 ^ 37 ∧
      (isZeroF b0 b1 b2 b3 = 0 → (satWordF a0 a1 a2 a3).toNat + (satWordF b0 b1 b2 b3).toNat ≤
        cur.toNat + (emc1F a0 a1 a2 a3 b0 b1 b2 b3 cur).2.toNat) := by
  have hbef := (ceil32F_spec cur).2.2 hc32
  unfold emc1F at hne ⊢
  by_cases hz : isZeroF b0 b1 b2 b3 ≠ 0
  · rw [if_pos hz]
    exact ⟨rfl, by simp; omega, fun h => absurd h hz⟩
  rw [if_neg hz] at hne ⊢
  have hz' : isZeroF b0 b1 b2 b3 = 0 := by simpa using hz
  by_cases he : addSatF (satWordF a0 a1 a2 a3) (satWordF b0 b1 b2 b3) = wMax
  · rw [if_pos he] at hne; exact absurd rfl hne
  rw [if_neg he] at hne ⊢
  obtain ⟨hen, -⟩ := addSatF_ne_max he
  obtain ⟨hA1, hA2, -⟩ := ceil32F_spec (addSatF (satWordF a0 a1 a2 a3) (satWordF b0 b1 b2 b3))
  rw [hbef] at hne ⊢
  by_cases hle : (ceil32F (addSatF (satWordF a0 a1 a2 a3) (satWordF b0 b1 b2 b3))).toNat ≤
      cur.toNat
  · rw [if_pos hle]
    refine ⟨rfl, by simp; omega, fun _ => ?_⟩
    have h0 : (0 : BitVec 64).toNat = 0 := rfl
    show _ ≤ cur.toNat + (0 : BitVec 64).toNat
    rw [h0]
    omega
  rw [if_neg hle] at hne ⊢
  by_cases hm : mgcF (ceil32F (addSatF (satWordF a0 a1 a2 a3) (satWordF b0 b1 b2 b3))) = wMax
  · rw [if_pos hm] at hne; exact absurd rfl hne
  rw [if_neg hm]
  have hAb0 := mgcF_ne_max hm
  have hAb : (ceil32F (addSatF (satWordF a0 a1 a2 a3) (satWordF b0 b1 b2 b3))).toNat < 2 ^ 37 :=
    lt_of_le_of_lt (ceil32F_spec _).1 hAb0
  have hAm : ceil32F (addSatF (satWordF a0 a1 a2 a3) (satWordF b0 b1 b2 b3)) ≠ wMax := by
    intro h; rw [h, wMax_toNat] at hAb; omega
  obtain ⟨hA32, -⟩ := hA2 hAm
  have hx : (ceil32F (addSatF (satWordF a0 a1 a2 a3) (satWordF b0 b1 b2 b3)) - cur).toNat =
      (ceil32F (addSatF (satWordF a0 a1 a2 a3) (satWordF b0 b1 b2 b3))).toNat - cur.toNat := by
    rw [BitVec.toNat_sub]; have := cur.isLt; omega
  dsimp only
  rw [hx]
  exact ⟨by omega, by omega, fun _ => by omega⟩

end InitECandidate.Solver.MemSafe.Struct
