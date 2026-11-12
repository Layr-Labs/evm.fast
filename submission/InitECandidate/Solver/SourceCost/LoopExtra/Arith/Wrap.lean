import InitECandidate.Solver.SourceCost.LoopExtra.Arith.ZeroProg

/-!
# Counter-wrap loops

A loop whose body increments a local `i` by one on every normal exit, and which, run from
any state where `i` is zero, leaves the loop condition false (shown by zero propagation
`zA`), makes at most `2 ^ width` iterations: the counter reaches zero within `2 ^ width`
iterations (`taylor_exponential`: at `i = 0` the divisor `i * den` is zero, so the next
term is zero and `nz` is set).
-/

namespace InitECandidate.Solver.SourceCost.Arith
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)

variable {width : Nat} [NeZero width] {σ : Type} {X : Ctx width}

def isIncr (i : MlS) : ExpHOL width → Bool
  | .op .add [.var .local j, .const one] => j == i && one == 1
  | _ => false

/-- `p` increments `i` exactly once on every normal exit. -/
def inc1 (i : MlS) : ProgHOL width → Bool
  | .assign .local y e => y == i && isIncr i e
  | .seq a b => (inc1 i a && keepsB i b) || (keepsB i a && inc1 i b)
  | .ite _ a b => inc1 i a && inc1 i b
  | .dec z _ _ b => z != i && inc1 i b
  | .decCall z _ _ _ k => z != i && inc1 i k
  | _ => false

def Inc1 (σ : Type) (i : MlS) (p : ProgHOL width) : Prop :=
  ∀ s : PanSemStateFiniteExact width σ, (evaluateHOLFiniteState s p).1 = none →
    ∃ w, s.locals.lookup i = some (.val (.word w)) ∧
      (evaluateHOLFiniteState s p).2.locals.lookup i = some (.val (.word (w + 1)))

theorem inc1_assign' (i : MlS) :
    Inc1 σ i (.assign .local i (.op .add [.var .local i, .const 1]) : ProgHOL width) := by
  intro s hn
  revert hn
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.assign .local i _)]
  dsimp only
  split
  · intro h; cases h
  · rename_i v hv
    split
    · intro _
      simp only [evalHOLExact, evalListHOLExact] at hv
      cases hy : s.locals.lookup i with
      | none =>
          rw [hy] at hv
          simp at hv
      | some vy =>
          rw [hy] at hv
          rcases vy with ⟨⟨w⟩⟩ | _ | _
          · simp only [List.all_cons, valueIsWord, List.all_nil, Bool.and_self, if_true,
              List.map_cons, valueWord, List.map_nil, wordOpHOL, wordOp, List.foldr_cons,
              List.foldr_nil, Option.map_some, Option.some.injEq] at hv
            subst hv
            exact ⟨w, rfl, by simp [setKvarHOLFinite, setVarHOLFinite, FUPDATE]⟩
          · simp [valueIsWord] at hv
          · simp [valueIsWord] at hv
    · intro h; cases h

theorem inc1_assign {i y : MlS} {e : ExpHOL width} (h : (y == i && isIncr i e) = true) :
    Inc1 σ i (.assign .local y e) := by
  simp only [Bool.and_eq_true, beq_iff_eq] at h
  obtain ⟨hyi, he⟩ := h
  have he' : e = .op .add [.var .local i, .const 1] := by
    unfold isIncr at he
    split at he
    · simp only [Bool.and_eq_true, beq_iff_eq] at he
      rw [he.1, he.2]
    · cases he
  rw [hyi, he']
  exact inc1_assign' i

theorem inc1_sound (i : MlS) : ∀ p : ProgHOL width, inc1 i p = true → Inc1 σ i p
  | .assign .local _ _, h => inc1_assign h
  | .seq a b, h => by
      simp only [inc1, Bool.or_eq_true, Bool.and_eq_true] at h
      intro s
      rw [evaluateHOLFiniteState_eq_evaluate_def s (.seq a b)]
      dsimp only
      cases h1 : (evaluateHOLFiniteState s a).1 with
      | none =>
          simp only []
          intro hn
          rcases h with ⟨ha, hb⟩ | ⟨ha, hb⟩
          · obtain ⟨w, hw, hw'⟩ := inc1_sound i a ha s h1
            exact ⟨w, hw, by rw [keepsB_sound i b hb _ (Or.inl hn), hw']⟩
          · have hk := keepsB_sound (σ := σ) i a ha s (Or.inl h1)
            obtain ⟨w, hw, hw'⟩ := inc1_sound i b hb _ hn
            exact ⟨w, by rw [← hk]; exact hw, hw'⟩
      | some r => intro hn; simp only [h1] at hn; cases hn
  | .ite c a b, h => by
      simp only [inc1, Bool.and_eq_true] at h
      intro s
      rw [evaluateHOLFiniteState_eq_evaluate_def s (.ite c a b)]
      dsimp only
      split
      · split
        · exact inc1_sound i b h.2 s
        · exact inc1_sound i a h.1 s
      · intro hn; cases hn
  | .dec z sh e b, h => by
      simp only [inc1, Bool.and_eq_true, bne_iff_ne, ne_eq] at h
      obtain ⟨hzi, hb⟩ := h
      intro s
      rw [evaluateHOLFiniteState_eq_evaluate_def s (.dec z sh e b)]
      dsimp only
      split
      · intro hn; cases hn
      · rename_i v _
        split
        · intro hn
          obtain ⟨w, hw, hw'⟩ := inc1_sound i b hb _ hn
          refine ⟨w, ?_, ?_⟩
          · simpa [setVarHOLFinite, FUPDATE, hzi] using hw
          · simp only [lookup_resVarEq_restore, if_neg (Ne.symm hzi)]; exact hw'
        · intro hn; cases hn
  | .decCall z sh f args k, h => by
      simp only [inc1, Bool.and_eq_true, bne_iff_ne, ne_eq] at h
      obtain ⟨hzi, hk⟩ := h
      intro s
      rw [evaluateHOLFiniteState_eq_evaluate_def s (.decCall z sh f args k)]
      dsimp only
      split
      · intro hn; cases hn
      · split
        · intro hn; cases hn
        · split
          · intro hn; cases hn
          · generalize evaluateHOLFiniteState (callEntryStateHOLFinite s _) _ = E
            obtain ⟨res, st⟩ := E
            rcases res with _ | (_ | _ | _ | _ | v | ⟨e, v⟩ | ev) <;> dsimp only
            all_goals (try (intro hn; cases hn))
            split
            · intro hn
              obtain ⟨w, hw, hw'⟩ := inc1_sound i k hk _ hn
              refine ⟨w, ?_, ?_⟩
              · simpa [setVarHOLFinite, FUPDATE, hzi] using hw
              · simp only [lookup_resVarEq_restore, if_neg (Ne.symm hzi)]; exact hw'
            · intro hn; cases hn
  | .skip, h | .break, h | .continue, h | .annot _ _, h | .tick, h | .assign .global _ _, h
  | .primitive _ _ _, h | .store _ _, h | .store32 _ _, h | .storeByte _ _, h
  | .extCall _ _ _ _ _, h | .raise _ _, h | .return _, h | .shMemLoad _ _ _ _, h
  | .shMemStore _ _ _, h | .while _ _, h | .call _ _ _, h => by simp [inc1] at h

theorem neg_toNat_succ {w : BitVec width} (hw : w ≠ 0) : (0 - (w + 1)).toNat < (0 - w).toNat := by
  have hlt := w.isLt
  have hpos : 0 < w.toNat := by
    rcases Nat.eq_zero_or_pos w.toNat with h | h
    · exact absurd (BitVec.eq_of_toNat_eq (by simpa using h)) hw
    · exact h
  have h1 : (0 - w).toNat = 2 ^ width - w.toNat := by
    rw [BitVec.toNat_sub]; simp
    rw [Nat.mod_eq_of_lt (by omega)]
  have hp1 : 1 % 2 ^ width = 1 := Nat.mod_eq_of_lt (Nat.one_lt_two_pow (NeZero.ne width))
  by_cases hmax : w.toNat + 1 = 2 ^ width
  · have : w + 1 = 0 := by
      apply BitVec.eq_of_toNat_eq
      rw [BitVec.toNat_add]; simp [hp1, hmax]
    rw [this, h1]; simp; omega
  · have h2 : (w + 1).toNat = w.toNat + 1 := by
      rw [BitVec.toNat_add]; simp [hp1]
      exact Nat.mod_eq_of_lt (by omega)
    have h3 : (0 - (w + 1)).toNat = 2 ^ width - (w.toNat + 1) := by
      rw [BitVec.toNat_sub, h2]; simp
    rw [h1, h3]; omega

/-- The counter-wrap rule. -/
theorem cost_while_wrap {zt : List (MlS × List Nat × Fact)} (hzt : ZTblSound σ X.code zt)
    {c : ExpHOL width} {b : ProgHOL width} {B : Nat} {i : MlS} {F' : List (MlS × Fact)} {r : RF}
    (hb : Cost σ X b B) (hnc : NoCont σ b) (hinc : Inc1 σ i b)
    (hz : zA zt [(i, .zero)] b = some (some F', r)) (hc : zE F' c = some .zero) :
    Cost σ X (.while c b) ((2 ^ width + 1) * (B + 1)) := by
  classical
  let wv : PanSemStateFiniteExact width σ → Nat := fun s =>
    match s.locals.lookup i with
    | some (.val (.word w)) => (0 - w).toNat
    | _ => 0
  have hwv : ∀ s, wv s < 2 ^ width := by
    intro s; simp only [wv]; split
    · exact BitVec.isLt _
    · exact Nat.two_pow_pos _
  refine cost_while (fun s => if CondTrue s c then wv s + 1 else 0) (2 ^ width) hb ?_ ?_
  · intro s _ _
    split <;> (have := hwv s; omega)
  · intro s hs hct _ hexit
    have hnone : (evaluateHOLFiniteState (decClockHOLFinite s) b).1 = none := by
      rcases hexit with h | h
      · exact h
      · exact absurd h (hnc _)
    obtain ⟨w, hw, hw'⟩ := hinc _ hnone
    rw [if_pos hct]
    have hws : wv s = (0 - w).toNat := by
      have : s.locals.lookup i = some (.val (.word w)) := hw
      simp only [wv, this]
    by_cases hw0 : w = 0
    · -- from `i = 0` the condition is false afterwards
      subst hw0
      have hF : FSat [(i, .zero)] (decClockHOLFinite s) := by
        intro z f hzf
        by_cases hzi : z = i
        · subst hzi
          simp only [List.lookup, beq_self_eq_true, Option.some.injEq] at hzf
          subst hzf
          exact ⟨_, hw, by simp [FactHolds, zeroV]⟩
        · have : (z == i) = false := by simpa using hzi
          simp [List.lookup, this] at hzf
      obtain ⟨h1, -⟩ := zA_sound hzt b [(i, .zero)] (some F') r hz (decClockHOLFinite s) hs.1 hF
      obtain ⟨F'', hF'', hsat⟩ := h1 hnone
      simp only [Option.some.injEq] at hF''
      rw [← hF''] at hsat
      rw [if_neg]
      · omega
      · rintro ⟨w', hw'', hne⟩
        have := @zE_sound width _ σ F' (evaluateHOLFiniteState (decClockHOLFinite s) b).2.toExact
          (fun a => Classical.propDecidable
            ((evaluateHOLFiniteState (decClockHOLFinite s) b).2.memaddrs a)) hsat c .zero _ hc hw''
        simp [FactHolds, zeroV] at this
        exact hne this
    · have hlt := neg_toNat_succ hw0
      split
      · have : wv (evaluateHOLFiniteState (decClockHOLFinite s) b).2 = (0 - (w + 1)).toNat := by
          simp only [wv, hw']
        omega
      · omega

/-- Names `y` with an assignment `y = y + 1`. -/
def wrapCands : ProgHOL width → List MlS
  | .assign .local y e => if isIncr y e then [y] else []
  | .seq a b => wrapCands a ++ wrapCands b
  | .ite _ a b => wrapCands a ++ wrapCands b
  | .dec _ _ _ b => wrapCands b
  | .decCall _ _ _ _ k => wrapCands k
  | _ => []

def wrapOk (zt : List (MlS × List Nat × Fact)) (c : ExpHOL width) (b : ProgHOL width) (i : MlS) :
    Bool :=
  inc1 i b &&
    match zA zt [(i, .zero)] b with
    | some (some F', _) => zE F' c == some .zero
    | _ => false

def loopWrapB (zt : List (MlS × List Nat × Fact)) (c : ExpHOL width) (b : ProgHOL width) : Bool :=
  noContB b && (wrapCands b).any (wrapOk zt c b)

theorem loopWrapB_sound {zt : List (MlS × List Nat × Fact)} (hzt : ZTblSound σ X.code zt)
    {c : ExpHOL width} {b : ProgHOL width} {B : Nat} (h : loopWrapB zt c b = true)
    (hb : Cost σ X b B) : Cost σ X (.while c b) ((2 ^ width + 1) * (B + 1)) := by
  simp only [loopWrapB, Bool.and_eq_true, List.any_eq_true] at h
  obtain ⟨hnc, i, -, hok⟩ := h
  simp only [wrapOk, Bool.and_eq_true] at hok
  obtain ⟨hinc, hz⟩ := hok
  split at hz
  · rename_i F' r hza
    exact cost_while_wrap hzt hb (noContB_sound b hnc) (inc1_sound i b hinc) hza
      (by simpa using hz)
  · cases hz

end InitECandidate.Solver.SourceCost.Arith
