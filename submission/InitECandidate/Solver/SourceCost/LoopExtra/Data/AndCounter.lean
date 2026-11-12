import InitECandidate.Solver.SourceCost.LoopExtra.AddrLoop

/-!
# Counter loops under a conjunctive guard

`while (i < 16) && (found == 0) { ...; i = i + 1; ... }` (`_node_rlp_fill`): Pancake's
`a && b` is the bitwise `and` of `0 != a` and `0 != b`, so a true guard makes every
conjunct true. If one conjunct is `i <s E` or `i <u E` and the body steps `i` by one,
the generic counter measure applies to the whole guard.
-/

namespace InitECandidate.Solver.SourceCost
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)

variable {width : Nat} [NeZero width] {σ : Type} {X : Ctx width}

/-! ## Guards implied by a true guard -/

/-- A counter comparison `i <s E` / `i <u E` that a true guard implies. -/
def ctrGuard : ExpHOL width → Option (Flapjack.Cmp × MlS × ExpHOL width)
  | .cmp .less (.var .local i) E => some (.less, i, E)
  | .cmp .lower (.var .local i) E => some (.lower, i, E)
  | .cmp .notEqual (.const z) g => if z = 0 then ctrGuard g else none
  | .op .and [a, b] =>
      match ctrGuard a with
      | some r => some r
      | none => ctrGuard b
  | _ => none

theorem condTrue_and {s : PanSemStateFiniteExact width σ} {a b : ExpHOL width}
    (h : CondTrue s (.op .and [a, b])) : CondTrue s a ∧ CondTrue s b := by
  obtain ⟨w, h, hw⟩ := h
  simp only [evalHOLFinite] at h
  cases ha : @evalHOLExact width σ _ s.toExact
      (fun x => Classical.propDecidable (s.memaddrs x)) a with
  | none => simp [evalHOLExact, evalListHOLExact, ha] at h
  | some va =>
    cases hb : @evalHOLExact width σ _ s.toExact
        (fun x => Classical.propDecidable (s.memaddrs x)) b with
    | none => simp [evalHOLExact, evalListHOLExact, ha, hb] at h
    | some vb =>
      rcases va with ⟨⟨x⟩⟩ | _ | _ <;> rcases vb with ⟨⟨y⟩⟩ | _ | _ <;>
        simp [evalHOLExact, evalListHOLExact, ha, hb, valueIsWord, valueWord, wordOpHOL,
          wordOp] at h
      have hx : x ≠ 0 := by
        rintro rfl; apply hw; rw [← h]; simp [AndOp.and]
      have hy : y ≠ 0 := by
        rintro rfl; apply hw; rw [← h]; simp [AndOp.and]
      exact ⟨⟨x, ha, hx⟩, ⟨y, hb, hy⟩⟩

theorem condTrue_ne0 {s : PanSemStateFiniteExact width σ} {g : ExpHOL width}
    (h : CondTrue s (.cmp .notEqual (.const 0) g)) : CondTrue s g := by
  obtain ⟨w, h, hw⟩ := h
  simp only [evalHOLFinite, evalHOLExact] at h
  split at h
  · rename_i x y hl hr
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hl h
    subst hl
    refine ⟨y, hr, ?_⟩
    rintro rfl
    apply hw
    rw [← h]
    simp [wordCmpHOL]
  · simp at h

theorem ctrGuard_sound {s : PanSemStateFiniteExact width σ} :
    ∀ (c : ExpHOL width) {op : Flapjack.Cmp} {i : MlS} {E : ExpHOL width},
      ctrGuard c = some (op, i, E) → CondTrue s c → CondTrue s (.cmp op (.var .local i) E) := by
  intro c
  induction c using ctrGuard.induct with
  | case1 i E =>
      intro op i' E' h hc
      simp only [ctrGuard, Option.some.injEq, Prod.mk.injEq] at h
      obtain ⟨rfl, rfl, rfl⟩ := h; exact hc
  | case2 i E =>
      intro op i' E' h hc
      simp only [ctrGuard, Option.some.injEq, Prod.mk.injEq] at h
      obtain ⟨rfl, rfl, rfl⟩ := h; exact hc
  | case3 g ih =>
      intro op i E h hc
      simp only [ctrGuard, if_true] at h
      exact ih h (condTrue_ne0 hc)
  | case4 z g hz =>
      intro op i E h _
      simp only [ctrGuard] at h
      split at h
      · rename_i h0; exact absurd h0 hz
      · cases h
  | case5 a b r hr ih =>
      intro op i E h hc
      simp only [ctrGuard, hr, Option.some.injEq] at h
      subst h
      exact ih hr (condTrue_and hc).1
  | case6 a b hr _ ih =>
      intro op i E h hc
      simp only [ctrGuard, hr] at h
      exact ih h (condTrue_and hc).2
  | case7 t h1 h2 h3 h4 =>
      intro op i E h _
      unfold ctrGuard at h
      split at h
      · exact absurd rfl (h1 _ _)
      · exact absurd rfl (h2 _ _)
      · exact absurd rfl (h3 _ _)
      · exact absurd rfl (h4 _ _)
      · cases h

/-! ## Counter measure under an implied guard -/

/-- `while c { ... i = i + 1 ... }` where a true `c` forces `i <u E`. -/
theorem cost_while_imp_lower {c : ExpHOL width} {i : MlS} {E : ExpHOL width}
    {body : ProgHOL width} {B : Nat}
    (himp : ∀ s : PanSemStateFiniteExact width σ, CondTrue s c →
      CondTrue s (.cmp .lower (.var .local i) E))
    (hb : Cost σ X body B) (hs : Steps σ i (· + 1) body) :
    Cost σ X (.while c body) ((2 ^ width + 1) * (B + 1)) := by
  refine cost_while (fun s => 2 ^ width - wordOf s i) (2 ^ width) hb
    (fun s _ _ => Nat.sub_le _ _) ?_
  intro s _ hcond _ hexit
  obtain ⟨v, e, hv, hlt⟩ := cond_var_left (himp s hcond)
  have hv' : (decClockHOLFinite s).locals.lookup i = some (.val (.word v)) := hv
  have hafter := hs _ v hv' hexit
  show 2 ^ width - wordOf _ i < 2 ^ width - wordOf s i
  unfold wordOf
  rw [hafter, hv]
  simp only [Compiler.Encoders.Asm.wordCmpHOL, decide_eq_true_eq, BitVec.lt_def] at hlt
  have he := e.isLt
  have hv1 : (v + 1).toNat = v.toNat + 1 := by
    have hpow : 1 < 2 ^ width := Nat.one_lt_two_pow (NeZero.ne width)
    have h1 : (1 : BitVec width).toNat = 1 := by
      simp [Nat.mod_eq_of_lt hpow]
    rw [BitVec.toNat_add, h1, Nat.mod_eq_of_lt (by omega)]
  simp only [hv1]
  omega

/-- `while c { ... i = i + 1 ... }` where a true `c` forces `i <s E`. -/
theorem cost_while_imp_less {c : ExpHOL width} {i : MlS} {E : ExpHOL width}
    {body : ProgHOL width} {B : Nat}
    (himp : ∀ s : PanSemStateFiniteExact width σ, CondTrue s c →
      CondTrue s (.cmp .less (.var .local i) E))
    (hb : Cost σ X body B) (hs : Steps σ i (· + 1) body) :
    Cost σ X (.while c body) ((2 ^ width + 1) * (B + 1)) := by
  let μ : PanSemStateFiniteExact width σ → Nat := fun s =>
    match s.locals.lookup i with
    | some (.val (.word w)) => 2 ^ width - signedKey w
    | _ => 0
  refine cost_while μ (2 ^ width) hb ?_ ?_
  · intro s _ _
    simp only [μ]
    split
    · exact Nat.sub_le _ _
    · exact Nat.zero_le _
  · intro s _ hcond _ hexit
    obtain ⟨v, e, hv, hlt⟩ := cond_var_left (himp s hcond)
    have hv' : (decClockHOLFinite s).locals.lookup i = some (.val (.word v)) := hv
    have hafter := hs _ v hv' hexit
    simp only [μ, hafter, hv]
    simp only [Compiler.Encoders.Asm.wordCmpHOL] at hlt
    rw [signedKey_succ hlt]
    have := signedKey_lt (v + 1)
    rw [signedKey_succ hlt] at this
    omega

/-! ## Recognizer -/

/-- A guard that is not itself a counter comparison (those are `loopOkBasic`'s) but
implies one, with a body stepping the counter by one. -/
def loopOkAndCounter (c : ExpHOL width) (b : ProgHOL width) : Bool :=
  match ctrGuard c with
  | some (.less, i, _) => stepsB i true b
  | some (.lower, i, _) => stepsB i true b
  | _ => false

theorem loopOkAndCounter_sound {c : ExpHOL width} {b : ProgHOL width} {B : Nat}
    (h : loopOkAndCounter c b = true) (hb : Cost σ X b B) :
    Cost σ X (.while c b) ((2 ^ width + 1) * (B + 1)) := by
  unfold loopOkAndCounter at h
  split at h
  · rename_i i E hg
    exact cost_while_imp_less (fun s hc => ctrGuard_sound c hg hc) hb (stepsB_sound _ true _ h)
  · rename_i i E hg
    exact cost_while_imp_lower (fun s hc => ctrGuard_sound c hg hc) hb (stepsB_sound _ true _ h)
  · cases h

end InitECandidate.Solver.SourceCost
