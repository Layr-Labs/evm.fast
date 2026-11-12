import InitECandidate.Solver.SourceCost.LoopExtra.Arith.Zero

/-!
# Zero / nonzero propagation through statements

`zA zt F p` runs `p` abstractly from the facts `F`. It returns the facts at normal exit
(`none` when `p` cannot end normally) and a fact about every value `p` may return. Calls
use summaries `zt` (`f`, argument positions, fact): when the listed arguments are zero,
the callee returns a value satisfying the fact (`ZTblSound`). Loops, `break` and
`continue` are not supported.
-/

namespace InitECandidate.Solver.SourceCost.Arith
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)

variable {width : Nat} [NeZero width] {σ : Type} {C : CodeMap width}

inductive RF where
  | bot
  | is (f : Fact)
  | top
  deriving DecidableEq

def RFHolds : RF → ValueHOL width → Prop
  | .bot, _ => False
  | .is f, v => FactHolds f v
  | .top, _ => True

def joinRF : RF → RF → RF
  | .bot, r => r
  | .is a, .bot => .is a
  | .is a, .is b => if a = b then .is a else .top
  | _, _ => .top

def rfOf : Option Fact → RF
  | some f => .is f
  | none => .top

def updF (F : List (MlS × Fact)) (z : MlS) (o : Option Fact) : List (MlS × Fact) :=
  match o with
  | some f => (z, f) :: F.filter (fun q => q.1 != z)
  | none => F.filter (fun q => q.1 != z)

def joinF (F1 F2 : List (MlS × Fact)) : List (MlS × Fact) :=
  F1.filter (fun q => F1.lookup q.1 == some q.2 && F2.lookup q.1 == some q.2)

def joinN : Option (List (MlS × Fact)) → Option (List (MlS × Fact)) →
    Option (List (MlS × Fact))
  | none, n => n
  | some a, none => some a
  | some a, some b => some (joinF a b)

def zSumm (zt : List (MlS × List Nat × Fact)) (f : MlS) (af : List (Option Fact)) : Option Fact :=
  (zt.find? (fun q => q.1 == f && q.2.1.all (fun k => af[k]? == some (some .zero)))).map
    (fun q => q.2.2)

def zA (zt : List (MlS × List Nat × Fact)) :
    List (MlS × Fact) → ProgHOL width → Option (Option (List (MlS × Fact)) × RF)
  | F, .skip | F, .annot _ _ | F, .tick => some (some F, .bot)
  | F, .store _ _ | F, .store32 _ _ | F, .storeByte _ _ => some (some F, .bot)
  | F, .assign .local y e => some (some (updF F y (zE F e)), .bot)
  | F, .assign .global _ _ => some (some F, .bot)
  | F, .primitive y _ args =>
      some (some (updF F y (if zEAll F args then some .zero else none)), .bot)
  | F, .return e => some (none, rfOf (zE F e))
  | _, .raise _ _ => some (none, .bot)
  | F, .seq a b =>
      match zA zt F a with
      | some (none, r1) => some (none, r1)
      | some (some F1, r1) =>
          match zA zt F1 b with
          | some (n2, r2) => some (n2, joinRF r1 r2)
          | none => none
      | none => none
  | F, .ite c a b =>
      match zE F c with
      | some .nz => zA zt F a
      | some .zero => zA zt F b
      | none =>
          match zA zt F a, zA zt F b with
          | some (na, ra), some (nb, rb) => some (joinN na nb, joinRF ra rb)
          | _, _ => none
  | F, .dec z _ e b =>
      match zA zt (updF F z (zE F e)) b with
      | some (n, r) => some (n.map (fun F' => updF F' z (F.lookup z)), r)
      | none => none
  | F, .call none f args => some (none, rfOf (zSumm zt f (args.map (zE F))))
  | F, .call (some (none, none)) _ _ => some (some F, .bot)
  | F, .call (some (some (.local, y), none)) f args =>
      some (some (updF F y (zSumm zt f (args.map (zE F)))), .bot)
  | F, .call (some (some (.global, _), none)) _ _ => some (some F, .bot)
  | F, .decCall z _ f args k =>
      match zA zt (updF F z (zSumm zt f (args.map (zE F)))) k with
      | some (n, r) => some (n.map (fun F' => updF F' z (F.lookup z)), r)
      | none => none
  | _, _ => none

/-- The locals of `s` satisfy the facts `F`. -/
def FSat (F : List (MlS × Fact)) (s : PanSemStateFiniteExact width σ) : Prop :=
  ∀ z f, F.lookup z = some f → ∃ v, s.locals.lookup z = some v ∧ FactHolds f v

/-- Summaries: when the listed arguments are zero, a returned value satisfies the fact. -/
def ZTblSound (σ : Type) (C : CodeMap width) (zt : List (MlS × List Nat × Fact)) : Prop :=
  ∀ q ∈ zt, ∀ values body callee rs,
    lookupCodeHOLFinite C.lookup q.1 values = some (body, callee, rs) →
    (∀ k ∈ q.2.1, ∃ v, values[k]? = some v ∧ zeroV v = true) →
    ∀ s : PanSemStateFiniteExact width σ, s.code = C → s.locals = callee →
      ∀ v, (evaluateHOLFiniteState s body).1 = some (.returned v) → FactHolds q.2.2 v

/-! ## Lemmas on facts -/

theorem lookup_mem_of_some {α β : Type} [BEq α] [LawfulBEq α] :
    ∀ {l : List (α × β)} {a : α} {b : β}, l.lookup a = some b → (a, b) ∈ l
  | [], _, _, h => by simp at h
  | (x, y) :: l, a, b, h => by
      by_cases hax : a = x
      · subst hax; simp only [List.lookup, beq_self_eq_true, Option.some.injEq] at h
        subst h; exact List.mem_cons_self
      · have : (a == x) = false := by simpa using hax
        simp only [List.lookup, this] at h
        exact List.mem_cons_of_mem _ (lookup_mem_of_some h)

theorem lookup_filter_ne {β : Type} {F : List (MlS × β)} {y z : MlS} (h : y ≠ z) :
    (F.filter (fun q => q.1 != z)).lookup y = F.lookup y := by
  induction F with
  | nil => rfl
  | cons q F ih =>
      obtain ⟨a, b⟩ := q
      by_cases haz : a = z
      · subst haz
        have hya : (y == a) = false := by simpa using h
        simp [List.filter, List.lookup, hya] at ih ⊢
        exact ih
      · have hb : (a != z) = true := by simpa using haz
        simp only [List.filter, hb] at ih ⊢
        simp only [List.lookup]
        split <;> simp_all

theorem lookup_filter_eq {β : Type} {F : List (MlS × β)} {z : MlS} :
    (F.filter (fun q => q.1 != z)).lookup z = none := by
  induction F with
  | nil => rfl
  | cons q F ih =>
      obtain ⟨a, b⟩ := q
      by_cases haz : a = z
      · subst haz; simp [List.filter, ih]
      · have hb : (a != z) = true := by simpa using haz
        have hza : (z == a) = false := by simpa using Ne.symm haz
        simp only [List.filter, hb, List.lookup, hza]
        exact ih

theorem lookup_updF (F : List (MlS × Fact)) (z y : MlS) (o : Option Fact) :
    (updF F z o).lookup y = if y = z then o else F.lookup y := by
  by_cases hyz : y = z
  · subst hyz
    cases o <;> simp [updF, lookup_filter_eq]
  · have hb : (y == z) = false := by simpa using hyz
    cases o <;> simp [updF, List.lookup, hyz, hb, lookup_filter_ne hyz]

theorem fsat_updF {F : List (MlS × Fact)} {s t : PanSemStateFiniteExact width σ} (hs : FSat F s)
    {z : MlS} {o : Option Fact}
    (hz : ∀ f, o = some f → ∃ v, t.locals.lookup z = some v ∧ FactHolds f v)
    (ho : ∀ y, y ≠ z → t.locals.lookup y = s.locals.lookup y) : FSat (updF F z o) t := by
  intro y f hy
  rw [lookup_updF] at hy
  split at hy
  · rename_i hyz; subst hyz; exact hz f hy
  · rename_i hyz; rw [ho y hyz]; exact hs y f hy

theorem fsat_of_locals {F : List (MlS × Fact)} {s t : PanSemStateFiniteExact width σ}
    (hs : FSat F s) (h : t.locals = s.locals) : FSat F t := by
  intro y f hy; rw [h]; exact hs y f hy

theorem lookup_joinF {F1 F2 : List (MlS × Fact)} {z : MlS} {f : Fact}
    (h : (joinF F1 F2).lookup z = some f) : F1.lookup z = some f ∧ F2.lookup z = some f := by
  have hm := lookup_mem_of_some h
  unfold joinF at hm
  simp only [List.mem_filter, Bool.and_eq_true, beq_iff_eq] at hm
  exact hm.2

theorem fsat_joinF_left {F1 F2 : List (MlS × Fact)} {s : PanSemStateFiniteExact width σ}
    (h : FSat F1 s) : FSat (joinF F1 F2) s := fun z f hz => h z f (lookup_joinF hz).1

theorem fsat_joinF_right {F1 F2 : List (MlS × Fact)} {s : PanSemStateFiniteExact width σ}
    (h : FSat F2 s) : FSat (joinF F1 F2) s := fun z f hz => h z f (lookup_joinF hz).2

theorem joinN_left {n1 n2 : Option (List (MlS × Fact))} {F1 : List (MlS × Fact)}
    {s : PanSemStateFiniteExact width σ} (h1 : n1 = some F1) (hs : FSat F1 s) :
    ∃ F', joinN n1 n2 = some F' ∧ FSat F' s := by
  subst h1
  cases n2 with
  | none => exact ⟨F1, rfl, hs⟩
  | some F2 => exact ⟨_, rfl, fsat_joinF_left hs⟩

theorem joinN_right {n1 n2 : Option (List (MlS × Fact))} {F2 : List (MlS × Fact)}
    {s : PanSemStateFiniteExact width σ} (h2 : n2 = some F2) (hs : FSat F2 s) :
    ∃ F', joinN n1 n2 = some F' ∧ FSat F' s := by
  subst h2
  cases n1 with
  | none => exact ⟨F2, rfl, hs⟩
  | some F1 => exact ⟨_, rfl, fsat_joinF_right hs⟩

theorem rf_join_left {r1 r2 : RF} {v : ValueHOL width} (h : RFHolds r1 v) :
    RFHolds (joinRF r1 r2) v := by
  cases r1 with
  | bot => exact absurd h id
  | top => cases r2 <;> trivial
  | is a =>
      cases r2 with
      | bot => exact h
      | top => trivial
      | is b =>
          show RFHolds (if a = b then .is a else .top) v
          split
          · exact h
          · trivial

theorem rf_join_right {r1 r2 : RF} {v : ValueHOL width} (h : RFHolds r2 v) :
    RFHolds (joinRF r1 r2) v := by
  cases r1 with
  | bot => exact h
  | top => cases r2 <;> trivial
  | is a =>
      cases r2 with
      | bot => exact absurd h id
      | top => trivial
      | is b =>
          show RFHolds (if a = b then .is a else .top) v
          split
          · rename_i hab; subst hab; exact h
          · trivial

theorem rfOf_holds {o : Option Fact} {v : ValueHOL width} (h : ∀ f, o = some f → FactHolds f v) :
    RFHolds (rfOf o) v := by
  cases o with
  | none => trivial
  | some f => exact h f rfl

theorem evalList_get {s : PanSemStateExact width σ} [DecidablePred s.memaddrs] :
    ∀ {es : List (ExpHOL width)} {vs : List (ValueHOL width)} {k : Nat} {e : ExpHOL width},
    evalListHOLExact s es = some vs → es[k]? = some e →
      ∃ v, vs[k]? = some v ∧ evalHOLExact s e = some v
  | [], _, _, _, _, h => by simp at h
  | e0 :: es, vs, k, e, h1, h2 => by
      simp only [evalListHOLExact] at h1
      split at h1
      · rename_i v vs' hv hvs
        simp only [Option.some.injEq] at h1; subst h1
        cases k with
        | zero =>
            simp only [List.getElem?_cons_zero, Option.some.injEq] at h2; subst h2
            exact ⟨v, rfl, hv⟩
        | succ k =>
            simp only [List.getElem?_cons_succ] at h2 ⊢
            exact evalList_get hvs h2
      · cases h1

/-- A summary used at a call gives a fact about the returned value. -/
theorem zSumm_sound {zt : List (MlS × List Nat × Fact)} (hzt : ZTblSound σ C zt)
    {F : List (MlS × Fact)} {s : PanSemStateFiniteExact width σ} (hF : FSat F s)
    {f : MlS} {args : List (ExpHOL width)} {values : List (ValueHOL width)}
    (hvs : @evalListHOLFinite width σ _ s (fun a => Classical.propDecidable (s.memaddrs a)) args =
      some values) {body : ProgHOL width}
    {callee : HolFiniteMapExact MlS (ValueHOL width)} {rs : ShapeHOL}
    (hl : lookupCodeHOLFinite C.lookup f values = some (body, callee, rs))
    {fact : Fact} (hsum : zSumm zt f (args.map (zE F)) = some fact)
    (t : PanSemStateFiniteExact width σ) (htc : t.code = C) (htl : t.locals = callee)
    {v : ValueHOL width} (hv : (evaluateHOLFiniteState t body).1 = some (.returned v)) :
    FactHolds fact v := by
  unfold zSumm at hsum
  obtain ⟨q, hq, rfl⟩ := Option.map_eq_some_iff.mp hsum
  have hqm := List.mem_of_find?_eq_some hq
  have hqp := List.find?_some hq
  simp only [Bool.and_eq_true, beq_iff_eq, List.all_eq_true] at hqp
  obtain ⟨hqf, hks⟩ := hqp
  subst hqf
  refine hzt q hqm values body callee rs hl ?_ t htc htl v hv
  intro k hk
  have hk' := hks k hk
  simp only [List.getElem?_map] at hk'
  cases he : args[k]? with
  | none => rw [he] at hk'; cases hk'
  | some e =>
      rw [he] at hk'
      simp only [Option.map_some, Option.some.injEq] at hk'
      have hvs' : @evalListHOLExact width σ _ s.toExact
          (fun a => Classical.propDecidable (s.memaddrs a)) args = some values := hvs
      obtain ⟨v', hv', hev⟩ := @evalList_get width _ σ s.toExact
        (fun a => Classical.propDecidable (s.memaddrs a)) _ _ _ _ hvs' he
      refine ⟨v', hv', ?_⟩
      exact @zE_sound width _ σ F s.toExact (fun a => Classical.propDecidable (s.memaddrs a)) hF e .zero v' hk' hev

/-! ## Soundness -/

def ZOk (C : CodeMap width) (F : List (MlS × Fact)) (p : ProgHOL width)
    (n : Option (List (MlS × Fact))) (r : RF) (s : PanSemStateFiniteExact width σ) : Prop :=
  s.code = C → FSat F s →
    ((evaluateHOLFiniteState s p).1 = none → ∃ F', n = some F' ∧ FSat F' (evaluateHOLFiniteState s p).2) ∧
    (∀ v, (evaluateHOLFiniteState s p).1 = some (.returned v) → RFHolds r v)

theorem primop_zero {o : PrimOp} {vs : List (ValueHOL width)} {v : ValueHOL width}
    (h : panPrimopHOLExact o vs = some v) (hz : ∀ x ∈ vs, zeroV x = true) : zeroV v = true := by
  unfold panPrimopHOLExact at h
  split at h
  · rename_i l r c
    simp only [Option.some.injEq] at h
    subst h
    have hl := hz (.val (.word l)) (by simp)
    have hr := hz (.val (.word r)) (by simp)
    have hc := hz (.val (.word c)) (by simp)
    simp only [zeroV, decide_eq_true_eq] at hl hr hc
    subst hl hr hc
    simp [wordAddCarryHOL, zeroV, zeroVL]
  · cases h

theorem zok_leaf_same {F : List (MlS × Fact)} {p : ProgHOL width} {s : PanSemStateFiniteExact width σ}
    (h : (evaluateHOLFiniteState s p).1 = none → (evaluateHOLFiniteState s p).2.locals = s.locals)
    (hr : ∀ v, (evaluateHOLFiniteState s p).1 ≠ some (.returned v)) : ZOk C F p (some F) .bot s := by
  intro _ hF
  exact ⟨fun hn => ⟨F, rfl, fsat_of_locals hF (h hn)⟩, fun v hv => absurd hv (hr v)⟩

macro "zleaf" : tactic => `(tactic| (
  apply zok_leaf_same
  · intro h
    revert h
    rw [evaluateHOLFiniteState_eq_evaluate_def]
    dsimp only
    repeat' split
    all_goals (intro h; first | rfl | (cases h; done) |
      (simp [setKvarHOLFinite, setGlobalHOLFinite, decClockHOLFinite] at *; done))
  · intro v h
    revert h
    rw [evaluateHOLFiniteState_eq_evaluate_def]
    dsimp only
    repeat' split
    all_goals (intro h; cases h)))

theorem zok_skip (F : List (MlS × Fact)) (s : PanSemStateFiniteExact width σ) :
    ZOk C F (.skip : ProgHOL width) (some F) .bot s := by zleaf
theorem zok_annot (F : List (MlS × Fact)) (a b : MlS) (s : PanSemStateFiniteExact width σ) :
    ZOk C F (.annot a b : ProgHOL width) (some F) .bot s := by zleaf
theorem zok_tick (F : List (MlS × Fact)) (s : PanSemStateFiniteExact width σ) :
    ZOk C F (.tick : ProgHOL width) (some F) .bot s := by
  apply zok_leaf_same
  · intro h; revert h; rw [evaluateHOLFiniteState_tick]; split <;> intro h
    · cases h
    · rfl
  · intro v h; revert h; rw [evaluateHOLFiniteState_tick]; split <;> intro h <;> cases h
theorem zok_store (F : List (MlS × Fact)) (a b : ExpHOL width) (s : PanSemStateFiniteExact width σ) :
    ZOk C F (.store a b) (some F) .bot s := by zleaf
theorem zok_store32 (F : List (MlS × Fact)) (a b : ExpHOL width) (s : PanSemStateFiniteExact width σ) :
    ZOk C F (.store32 a b) (some F) .bot s := by zleaf
theorem zok_storeByte (F : List (MlS × Fact)) (a b : ExpHOL width) (s : PanSemStateFiniteExact width σ) :
    ZOk C F (.storeByte a b) (some F) .bot s := by zleaf
theorem zok_assign_global (F : List (MlS × Fact)) (y : MlS) (e : ExpHOL width)
    (s : PanSemStateFiniteExact width σ) : ZOk C F (.assign .global y e) (some F) .bot s := by zleaf

theorem zok_assign (F : List (MlS × Fact)) (y : MlS) (e : ExpHOL width)
    (s : PanSemStateFiniteExact width σ) :
    ZOk C F (.assign .local y e) (some (updF F y (zE F e))) .bot s := by
  intro _ hF
  refine ⟨fun hn => ?_, fun v hv => ?_⟩
  · revert hn
    rw [evaluateHOLFiniteState_eq_evaluate_def s (.assign .local y e)]
    dsimp only
    split
    · intro hn; cases hn
    · rename_i v hv
      split
      · intro _
        refine ⟨_, rfl, fsat_updF hF ?_ ?_⟩
        · intro f hf
          exact ⟨v, by simp [setKvarHOLFinite, setVarHOLFinite, FUPDATE],
            @zE_sound width _ σ F s.toExact (fun a => Classical.propDecidable (s.memaddrs a)) hF e f v hf hv⟩
        · intro z hz; simp [setKvarHOLFinite, setVarHOLFinite, FUPDATE, Ne.symm hz]
      · intro hn; cases hn
  · revert hv
    rw [evaluateHOLFiniteState_eq_evaluate_def s (.assign .local y e)]
    dsimp only
    repeat' split
    all_goals (intro h; cases h)

theorem zok_primitive (F : List (MlS × Fact)) (y : MlS) (o : PrimOp) (args : List (ExpHOL width))
    (s : PanSemStateFiniteExact width σ) :
    ZOk C F (.primitive y o args) (some (updF F y (if zEAll F args then some .zero else none))) .bot s := by
  intro _ hF
  refine ⟨fun hn => ?_, fun v hv => ?_⟩
  · revert hn
    rw [evaluateHOLFiniteState_eq_evaluate_def s (.primitive y o args)]
    dsimp only
    split
    · intro hn; cases hn
    · rename_i vs hvs
      split
      · intro hn; cases hn
      · rename_i v hv
        split
        · intro _
          refine ⟨_, rfl, fsat_updF hF ?_ ?_⟩
          · intro f hf
            split at hf
            · rename_i hall
              simp only [Option.some.injEq] at hf; subst hf
              refine ⟨v, by simp [setVarHOLFinite, FUPDATE], ?_⟩
              exact primop_zero hv (@zEAll_sound width _ σ F s.toExact
                (fun a => Classical.propDecidable (s.memaddrs a)) hF args vs hall hvs)
            · cases hf
          · intro z hz; simp [setVarHOLFinite, FUPDATE, Ne.symm hz]
        · intro hn; cases hn
  · revert hv
    rw [evaluateHOLFiniteState_eq_evaluate_def s (.primitive y o args)]
    dsimp only
    repeat' split
    all_goals (intro h; cases h)

theorem zok_return (F : List (MlS × Fact)) (e : ExpHOL width) (s : PanSemStateFiniteExact width σ) :
    ZOk C F (.return e) none (rfOf (zE F e)) s := by
  intro _ hF
  refine ⟨fun hn => ?_, fun v' hv' => ?_⟩
  · revert hn
    rw [evaluateHOLFiniteState_eq_evaluate_def s (.return e)]
    dsimp only
    repeat' split
    all_goals (intro h; cases h)
  · revert hv'
    rw [evaluateHOLFiniteState_eq_evaluate_def s (.return e)]
    dsimp only
    split
    · intro h; cases h
    · rename_i v hv
      split
      · intro h
        simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at h
        subst h
        exact rfOf_holds fun f hf =>
          @zE_sound width _ σ F s.toExact (fun a => Classical.propDecidable (s.memaddrs a)) hF e f v hf hv
      · intro h; cases h

theorem zok_raise (F : List (MlS × Fact)) (x : MlS) (e : ExpHOL width)
    (s : PanSemStateFiniteExact width σ) : ZOk C F (.raise x e) none .bot s := by
  intro _ _
  refine ⟨fun hn => ?_, fun v hv => ?_⟩
  · revert hn
    rw [evaluateHOLFiniteState_eq_evaluate_def s (.raise x e)]
    dsimp only
    repeat' split
    all_goals (intro h; cases h)
  · revert hv
    rw [evaluateHOLFiniteState_eq_evaluate_def s (.raise x e)]
    dsimp only
    repeat' split
    all_goals (intro h; cases h)

theorem zok_seq {F : List (MlS × Fact)} {a b : ProgHOL width} {zt : List (MlS × List Nat × Fact)}
    {n : Option (List (MlS × Fact))} {r : RF}
    (h : (match zA zt F a with
      | some (none, r1) => some (none, r1)
      | some (some F1, r1) =>
          match zA zt F1 b with
          | some (n2, r2) => some (n2, joinRF r1 r2)
          | none => none
      | none => none) = some (n, r))
    (ha : ∀ n1 r1, zA zt F a = some (n1, r1) → ∀ s : PanSemStateFiniteExact width σ, ZOk C F a n1 r1 s)
    (hb : ∀ F1 n2 r2, zA zt F1 b = some (n2, r2) → ∀ s : PanSemStateFiniteExact width σ,
      ZOk C F1 b n2 r2 s)
    (s : PanSemStateFiniteExact width σ) : ZOk C F (.seq a b) n r s := by
  intro hc hF
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.seq a b)]
  dsimp only
  cases hza : zA zt F a with
  | none => rw [hza] at h; cases h
  | some pr =>
    obtain ⟨n1, r1⟩ := pr
    have hA := ha n1 r1 hza s hc hF
    rw [hza] at h
    cases n1 with
    | none =>
        simp only [Option.some.injEq, Prod.mk.injEq] at h
        obtain ⟨rfl, rfl⟩ := h
        cases h1 : (evaluateHOLFiniteState s a).1 with
        | none => obtain ⟨F', hF', _⟩ := hA.1 h1; cases hF'
        | some ra =>
            simp only []
            exact ⟨fun hn => (by rw [h1] at hn; cases hn), hA.2⟩
    | some F1 =>
        dsimp only at h
        cases hzb : zA zt F1 b with
        | none => rw [hzb] at h; cases h
        | some pr2 =>
          obtain ⟨n2, r2⟩ := pr2
          rw [hzb] at h
          simp only [Option.some.injEq, Prod.mk.injEq] at h
          obtain ⟨rfl, rfl⟩ := h
          cases h1 : (evaluateHOLFiniteState s a).1 with
          | none =>
              simp only []
              obtain ⟨F', hF', hsat⟩ := hA.1 h1
              simp only [Option.some.injEq] at hF'; subst hF'
              have hc' : (evaluateHOLFiniteState s a).2.code = C := (code_preserved s a).trans hc
              obtain ⟨hB1, hB2⟩ := hb F1 n2 r2 hzb _ hc' hsat
              exact ⟨hB1, fun v hv => rf_join_right (hB2 v hv)⟩
          | some ra =>
              simp only []
              exact ⟨fun hn => (by rw [h1] at hn; cases hn), fun v hv => rf_join_left (hA.2 v hv)⟩

theorem zres_bad {n : Option (List (MlS × Fact))} {r : RF} {res : Option (PanSemResultExact width)}
    {st : PanSemStateFiniteExact width σ} (h1 : res ≠ none) (h2 : ∀ v, res ≠ some (.returned v)) :
    (res = none → ∃ F', n = some F' ∧ FSat F' st) ∧ (∀ v, res = some (.returned v) → RFHolds r v) :=
  ⟨fun h => absurd h h1, fun v h => absurd h (h2 v)⟩

theorem zok_ite {zt : List (MlS × List Nat × Fact)} {F : List (MlS × Fact)} {c : ExpHOL width}
    {a b : ProgHOL width} {n : Option (List (MlS × Fact))} {r : RF}
    (h : zA zt F (.ite c a b) = some (n, r))
    (ha : ∀ n1 r1, zA zt F a = some (n1, r1) → ∀ s : PanSemStateFiniteExact width σ, ZOk C F a n1 r1 s)
    (hb : ∀ n1 r1, zA zt F b = some (n1, r1) → ∀ s : PanSemStateFiniteExact width σ, ZOk C F b n1 r1 s)
    (s : PanSemStateFiniteExact width σ) : ZOk C F (.ite c a b) n r s := by
  intro hc hF
  simp only [zA] at h
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.ite c a b)]
  dsimp only
  split
  · rename_i w hw
    have hcf : ∀ f, zE F c = some f → FactHolds f (.val (.word w)) := fun f hf =>
      @zE_sound width _ σ F s.toExact (fun a => Classical.propDecidable (s.memaddrs a)) hF c f _ hf hw
    split
    · rename_i hw0
      subst hw0
      cases hz : zE F c with
      | none =>
          rw [hz] at h; dsimp only at h
          cases hza : zA zt F a with
          | none => rw [hza] at h; cases h
          | some pa =>
            cases hzb : zA zt F b with
            | none => rw [hza, hzb] at h; cases h
            | some pb =>
              obtain ⟨na, ra⟩ := pa
              obtain ⟨nb, rb⟩ := pb
              rw [hza, hzb] at h
              simp only [Option.some.injEq, Prod.mk.injEq] at h
              obtain ⟨rfl, rfl⟩ := h
              obtain ⟨h1, h2⟩ := hb nb rb hzb s hc hF
              refine ⟨fun hn => ?_, fun v hv => rf_join_right (h2 v hv)⟩
              obtain ⟨F', hF', hs⟩ := h1 hn
              exact joinN_right hF' hs
      | some f =>
          have := hcf f hz
          cases f with
          | nz => obtain ⟨w', hw', hne⟩ := this; simp at hw'; exact absurd hw'.symm hne
          | zero =>
              rw [hz] at h; dsimp only at h
              exact hb n r h s hc hF
    · rename_i hw0
      cases hz : zE F c with
      | none =>
          rw [hz] at h; dsimp only at h
          cases hza : zA zt F a with
          | none => rw [hza] at h; cases h
          | some pa =>
            cases hzb : zA zt F b with
            | none => rw [hza, hzb] at h; cases h
            | some pb =>
              obtain ⟨na, ra⟩ := pa
              obtain ⟨nb, rb⟩ := pb
              rw [hza, hzb] at h
              simp only [Option.some.injEq, Prod.mk.injEq] at h
              obtain ⟨rfl, rfl⟩ := h
              obtain ⟨h1, h2⟩ := ha na ra hza s hc hF
              refine ⟨fun hn => ?_, fun v hv => rf_join_left (h2 v hv)⟩
              obtain ⟨F', hF', hs⟩ := h1 hn
              exact joinN_left hF' hs
      | some f =>
          have := hcf f hz
          cases f with
          | zero => simp [FactHolds, zeroV] at this; exact absurd this hw0
          | nz =>
              rw [hz] at h; dsimp only at h
              exact ha n r h s hc hF
  · exact zres_bad (by simp) (by simp)

theorem zok_dec {zt : List (MlS × List Nat × Fact)} {F : List (MlS × Fact)} {z : MlS}
    {sh : ShapeHOL} {e : ExpHOL width} {b : ProgHOL width} {n : Option (List (MlS × Fact))}
    {r : RF} (h : zA zt F (.dec z sh e b) = some (n, r))
    (hb : ∀ F1 n1 r1, zA zt F1 b = some (n1, r1) → ∀ s : PanSemStateFiniteExact width σ,
      ZOk C F1 b n1 r1 s)
    (s : PanSemStateFiniteExact width σ) : ZOk C F (.dec z sh e b) n r s := by
  intro hc hF
  simp only [zA] at h
  cases hzb : zA zt (updF F z (zE F e)) b with
  | none => rw [hzb] at h; cases h
  | some pb =>
    obtain ⟨nb, rb⟩ := pb
    rw [hzb] at h
    simp only [Option.some.injEq, Prod.mk.injEq] at h
    obtain ⟨rfl, rfl⟩ := h
    rw [evaluateHOLFiniteState_eq_evaluate_def s (.dec z sh e b)]
    dsimp only
    split
    · exact zres_bad (by simp) (by simp)
    · rename_i v hv
      split
      · have hF1 : FSat (updF F z (zE F e)) (setVarHOLFinite z v s) := by
          refine fsat_updF hF ?_ ?_
          · intro f hf
            exact ⟨v, by simp [setVarHOLFinite, FUPDATE],
              @zE_sound width _ σ F s.toExact (fun a => Classical.propDecidable (s.memaddrs a)) hF e f v hf hv⟩
          · intro y hy; simp [setVarHOLFinite, FUPDATE, Ne.symm hy]
        obtain ⟨h1, h2⟩ := hb _ nb rb hzb (setVarHOLFinite z v s) hc hF1
        refine ⟨fun hn => ?_, h2⟩
        obtain ⟨F', hF', hs⟩ := h1 hn
        refine ⟨_, by rw [hF']; rfl, ?_⟩
        refine fsat_updF hs ?_ ?_
        · intro f hf
          obtain ⟨w, hw, hfw⟩ := hF z f hf
          exact ⟨w, by simp [lookup_resVarEq_restore, hw], hfw⟩
        · intro y hy; simp [lookup_resVarEq_restore, hy]
      · exact zres_bad (by simp) (by simp)

theorem zok_call_none {zt : List (MlS × List Nat × Fact)} (hzt : ZTblSound σ C zt)
    (F : List (MlS × Fact)) (f : MlS) (args : List (ExpHOL width)) (s : PanSemStateFiniteExact width σ) :
    ZOk C F (.call none f args) none (rfOf (zSumm zt f (args.map (zE F)))) s := by
  intro hc hF
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.call none f args)]
  dsimp only
  split
  · exact zres_bad (by simp) (by simp)
  · rename_i values hvs
    split
    · exact zres_bad (by simp) (by simp)
    · rename_i body callee rs hl
      rw [hc] at hl
      split
      · exact zres_bad (by simp) (by simp)
      · generalize hE : evaluateHOLFiniteState (callEntryStateHOLFinite s callee) body = E
        obtain ⟨res, st⟩ := E
        rcases res with _ | (_ | _ | _ | _ | v | ⟨e, v⟩ | ev) <;> dsimp only
        all_goals (try (refine zres_bad ?_ ?_ <;> simp <;> done))
        split
        · refine ⟨fun h => (by cases h), fun v' h => ?_⟩
          simp at h
          subst h
          exact rfOf_holds fun fact hsum => zSumm_sound hzt hF hvs hl hsum
            (callEntryStateHOLFinite s callee) (by simp [callEntryStateHOLFinite, hc]) rfl (by rw [hE])
        · exact zres_bad (by simp) (by simp)

theorem zok_call_nn
    (F : List (MlS × Fact)) (f : MlS) (args : List (ExpHOL width)) (s : PanSemStateFiniteExact width σ) :
    ZOk C F (.call (some (none, none)) f args) (some F) .bot s := by
  intro _ hF
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.call (some (none, none)) f args)]
  dsimp only
  split
  · exact zres_bad (by simp) (by simp)
  · split
    · exact zres_bad (by simp) (by simp)
    · rename_i body callee rs hl
      split
      · exact zres_bad (by simp) (by simp)
      · generalize hE : evaluateHOLFiniteState (callEntryStateHOLFinite s callee) body = E
        obtain ⟨res, st⟩ := E
        rcases res with _ | (_ | _ | _ | _ | v | ⟨e, v⟩ | ev) <;> dsimp only
        all_goals (try (refine zres_bad ?_ ?_ <;> simp <;> done))
        split
        · exact ⟨fun _ => ⟨F, rfl, fsat_of_locals hF rfl⟩, fun v h => by cases h⟩
        · exact zres_bad (by simp) (by simp)

theorem zok_call_global
    (F : List (MlS × Fact)) (y f : MlS) (args : List (ExpHOL width)) (s : PanSemStateFiniteExact width σ) :
    ZOk C F (.call (some (some (.global, y), none)) f args) (some F) .bot s := by
  intro _ hF
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.call (some (some (.global, y), none)) f args)]
  dsimp only
  split
  · exact zres_bad (by simp) (by simp)
  · split
    · exact zres_bad (by simp) (by simp)
    · rename_i body callee rs hl
      split
      · exact zres_bad (by simp) (by simp)
      · generalize hE : evaluateHOLFiniteState (callEntryStateHOLFinite s callee) body = E
        obtain ⟨res, st⟩ := E
        rcases res with _ | (_ | _ | _ | _ | v | ⟨e, v⟩ | ev) <;> dsimp only
        all_goals (try (refine zres_bad ?_ ?_ <;> simp <;> done))
        split
        · split
          · exact ⟨fun _ => ⟨F, rfl, fsat_of_locals hF rfl⟩, fun v h => by cases h⟩
          · exact zres_bad (by simp) (by simp)
        · exact zres_bad (by simp) (by simp)

theorem zok_call_local {zt : List (MlS × List Nat × Fact)} (hzt : ZTblSound σ C zt)
    (F : List (MlS × Fact)) (y f : MlS) (args : List (ExpHOL width)) (s : PanSemStateFiniteExact width σ) :
    ZOk C F (.call (some (some (.local, y), none)) f args)
      (some (updF F y (zSumm zt f (args.map (zE F))))) .bot s := by
  intro hc hF
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.call (some (some (.local, y), none)) f args)]
  dsimp only
  split
  · exact zres_bad (by simp) (by simp)
  · rename_i values hvs
    split
    · exact zres_bad (by simp) (by simp)
    · rename_i body callee rs hl
      rw [hc] at hl
      split
      · exact zres_bad (by simp) (by simp)
      · generalize hE : evaluateHOLFiniteState (callEntryStateHOLFinite s callee) body = E
        obtain ⟨res, st⟩ := E
        rcases res with _ | (_ | _ | _ | _ | v | ⟨e, v⟩ | ev) <;> dsimp only
        all_goals (try (refine zres_bad ?_ ?_ <;> simp <;> done))
        split
        · split
          · refine ⟨fun _ => ⟨_, rfl, fsat_updF hF ?_ ?_⟩, fun v h => by cases h⟩
            · intro fact hsum
              exact ⟨v, by simp [setKvarHOLFinite, setVarHOLFinite, FUPDATE],
                zSumm_sound hzt hF hvs hl hsum (callEntryStateHOLFinite s callee) (by simp [callEntryStateHOLFinite, hc]) rfl
                  (by rw [hE])⟩
            · intro z hz; simp [setKvarHOLFinite, setVarHOLFinite, FUPDATE, Ne.symm hz]
          · exact zres_bad (by simp) (by simp)
        · exact zres_bad (by simp) (by simp)

theorem zok_decCall {zt : List (MlS × List Nat × Fact)} (hzt : ZTblSound σ C zt)
    {F : List (MlS × Fact)} {z f : MlS} {sh : ShapeHOL} {args : List (ExpHOL width)}
    {k : ProgHOL width} {n : Option (List (MlS × Fact))} {r : RF}
    (h : zA zt F (.decCall z sh f args k) = some (n, r))
    (hk : ∀ F1 n1 r1, zA zt F1 k = some (n1, r1) → ∀ s : PanSemStateFiniteExact width σ,
      ZOk C F1 k n1 r1 s)
    (s : PanSemStateFiniteExact width σ) : ZOk C F (.decCall z sh f args k) n r s := by
  intro hc hF
  simp only [zA] at h
  cases hzk : zA zt (updF F z (zSumm zt f (args.map (zE F)))) k with
  | none => rw [hzk] at h; cases h
  | some pk =>
    obtain ⟨nk, rk⟩ := pk
    rw [hzk] at h
    simp only [Option.some.injEq, Prod.mk.injEq] at h
    obtain ⟨rfl, rfl⟩ := h
    rw [evaluateHOLFiniteState_eq_evaluate_def s (.decCall z sh f args k)]
    dsimp only
    split
    · exact zres_bad (by simp) (by simp)
    · rename_i values hvs
      split
      · exact zres_bad (by simp) (by simp)
      · rename_i body callee rs hl
        rw [hc] at hl
        split
        · exact zres_bad (by simp) (by simp)
        · generalize hE : evaluateHOLFiniteState (callEntryStateHOLFinite s callee) body = E
          obtain ⟨res, st⟩ := E
          rcases res with _ | (_ | _ | _ | _ | v | ⟨e, v⟩ | ev) <;> dsimp only
          all_goals (try (refine zres_bad ?_ ?_ <;> simp <;> done))
          split
          · have hcode : st.code = C := by
              have := code_preserved (callEntryStateHOLFinite s callee) body
              rw [hE] at this; simpa [callEntryStateHOLFinite, hc] using this
            let t : PanSemStateFiniteExact width σ :=
              setVarHOLFinite z v { st with locals := s.locals }
            have hF1 : FSat (updF F z (zSumm zt f (args.map (zE F)))) t := by
              refine fsat_updF hF ?_ ?_
              · intro fact hsum
                exact ⟨v, by simp [t, setVarHOLFinite, FUPDATE],
                  zSumm_sound hzt hF hvs hl hsum (callEntryStateHOLFinite s callee) (by simp [callEntryStateHOLFinite, hc]) rfl
                    (by rw [hE])⟩
              · intro y hy; simp [t, setVarHOLFinite, FUPDATE, Ne.symm hy]
            obtain ⟨h1, h2⟩ := hk _ nk rk hzk t hcode hF1
            refine ⟨fun hn => ?_, h2⟩
            obtain ⟨F', hF', hs⟩ := h1 hn
            refine ⟨_, by rw [hF']; rfl, ?_⟩
            refine fsat_updF hs ?_ ?_
            · intro fct hf
              obtain ⟨w, hw, hfw⟩ := hF z fct hf
              exact ⟨w, by simp [lookup_resVarEq_restore, hw], hfw⟩
            · intro y hy; simp only [lookup_resVarEq_restore, if_neg hy]; rfl
          · exact zres_bad (by simp) (by simp)

theorem zA_sound {zt : List (MlS × List Nat × Fact)} (hzt : ZTblSound σ C zt) :
    ∀ (p : ProgHOL width) (F : List (MlS × Fact)) (n : Option (List (MlS × Fact))) (r : RF),
      zA zt F p = some (n, r) → ∀ s : PanSemStateFiniteExact width σ, ZOk C F p n r s
  | .skip, F, n, r, h, s => by
      simp only [zA, Option.some.injEq, Prod.mk.injEq] at h; obtain ⟨rfl, rfl⟩ := h
      exact zok_skip F s
  | .annot _ _, F, n, r, h, s => by
      simp only [zA, Option.some.injEq, Prod.mk.injEq] at h; obtain ⟨rfl, rfl⟩ := h
      exact zok_annot F _ _ s
  | .tick, F, n, r, h, s => by
      simp only [zA, Option.some.injEq, Prod.mk.injEq] at h; obtain ⟨rfl, rfl⟩ := h
      exact zok_tick F s
  | .store _ _, F, n, r, h, s => by
      simp only [zA, Option.some.injEq, Prod.mk.injEq] at h; obtain ⟨rfl, rfl⟩ := h
      exact zok_store F _ _ s
  | .store32 _ _, F, n, r, h, s => by
      simp only [zA, Option.some.injEq, Prod.mk.injEq] at h; obtain ⟨rfl, rfl⟩ := h
      exact zok_store32 F _ _ s
  | .storeByte _ _, F, n, r, h, s => by
      simp only [zA, Option.some.injEq, Prod.mk.injEq] at h; obtain ⟨rfl, rfl⟩ := h
      exact zok_storeByte F _ _ s
  | .assign .local y e, F, n, r, h, s => by
      simp only [zA, Option.some.injEq, Prod.mk.injEq] at h; obtain ⟨rfl, rfl⟩ := h
      exact zok_assign F y e s
  | .assign .global y e, F, n, r, h, s => by
      simp only [zA, Option.some.injEq, Prod.mk.injEq] at h; obtain ⟨rfl, rfl⟩ := h
      exact zok_assign_global F y e s
  | .primitive y o args, F, n, r, h, s => by
      simp only [zA, Option.some.injEq, Prod.mk.injEq] at h; obtain ⟨rfl, rfl⟩ := h
      exact zok_primitive F y o args s
  | .return e, F, n, r, h, s => by
      simp only [zA, Option.some.injEq, Prod.mk.injEq] at h; obtain ⟨rfl, rfl⟩ := h
      exact zok_return F e s
  | .raise x e, F, n, r, h, s => by
      simp only [zA, Option.some.injEq, Prod.mk.injEq] at h; obtain ⟨rfl, rfl⟩ := h
      exact zok_raise F x e s
  | .seq a b, F, n, r, h, s =>
      zok_seq h (fun n1 r1 h1 => zA_sound hzt a F n1 r1 h1)
        (fun F1 n2 r2 h2 => zA_sound hzt b F1 n2 r2 h2) s
  | .ite c a b, F, n, r, h, s =>
      zok_ite h (fun n1 r1 h1 => zA_sound hzt a F n1 r1 h1)
        (fun n1 r1 h1 => zA_sound hzt b F n1 r1 h1) s
  | .dec z sh e b, F, n, r, h, s => zok_dec h (fun F1 n1 r1 h1 => zA_sound hzt b F1 n1 r1 h1) s
  | .call none f args, F, n, r, h, s => by
      simp only [zA, Option.some.injEq, Prod.mk.injEq] at h; obtain ⟨rfl, rfl⟩ := h
      exact zok_call_none hzt F f args s
  | .call (some (none, none)) f args, F, n, r, h, s => by
      simp only [zA, Option.some.injEq, Prod.mk.injEq] at h; obtain ⟨rfl, rfl⟩ := h
      exact zok_call_nn F f args s
  | .call (some (some (.local, y), none)) f args, F, n, r, h, s => by
      simp only [zA, Option.some.injEq, Prod.mk.injEq] at h; obtain ⟨rfl, rfl⟩ := h
      exact zok_call_local hzt F y f args s
  | .call (some (some (.global, y), none)) f args, F, n, r, h, s => by
      simp only [zA, Option.some.injEq, Prod.mk.injEq] at h; obtain ⟨rfl, rfl⟩ := h
      exact zok_call_global F y f args s
  | .decCall z sh f args k, F, n, r, h, s =>
      zok_decCall hzt h (fun F1 n1 r1 h1 => zA_sound hzt k F1 n1 r1 h1) s
  | .while _ _, _, _, _, h, _ | .break, _, _, _, h, _ | .continue, _, _, _, h, _
  | .extCall _ _ _ _ _, _, _, _, h, _ | .shMemLoad _ _ _ _, _, _, _, h, _
  | .shMemStore _ _ _, _, _, _, h, _ => by simp [zA] at h
  | .call (some (_, some _)) _ _, _, _, _, h, _ => by simp [zA] at h

end InitECandidate.Solver.SourceCost.Arith
