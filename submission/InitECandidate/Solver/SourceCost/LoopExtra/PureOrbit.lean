import InitECandidate.Solver.SourceCost.LoopExtra.FlagLoop

/-!
# Orbit loops whose body may `return`

`memeq` scans with `while n >=+ i + 32 { if ld(a + i) != ld(b + i) { return 0; } ...;
i = i + 32; }`. The body changes nothing but the counter, and whether it returns
depends only on the counter value and on context it keeps (it does not read the
clock). So along the counter orbit `v, v + k, ...` the loop either leaves within
`2 ^ width` iterations or never leaves: after `2 ^ width` steps the orbit, and with
it the whole loop state up to the clock, repeats.

Bodies are recognised as a spine of guards (`skip`, `return`, `ite`, `seq`) ending in
`i = i + k`.
-/

namespace InitECandidate.Solver.SourceCost
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)

variable {width : Nat} [NeZero width] {σ : Type} {X : Ctx width}

/-! ## State facts -/

theorem hfm_ext {α β : Type} {m₁ m₂ : HolFiniteMapExact α β} (h : m₁.lookup = m₂.lookup) :
    m₁ = m₂ := by
  cases m₁; cases m₂; simp only at h; subst h; rfl

theorem setVar_idem {s : PanSemStateFiniteExact width σ} {i : MlS} {x : ValueHOL width}
    (h : s.locals.lookup i = some x) : setVarHOLFinite i x s = s := by
  have hl : s.locals.update (i, x) = s.locals := by
    apply hfm_ext
    funext j
    by_cases hj : i = j
    · subst hj; simp [FUPDATE, h]
    · simp [FUPDATE, hj]
  unfold setVarHOLFinite
  rw [hl]

theorem setVar_setVar (s : PanSemStateFiniteExact width σ) (i : MlS) (x y : ValueHOL width) :
    setVarHOLFinite i y (setVarHOLFinite i x s) = setVarHOLFinite i y s := by
  have hl : (s.locals.update (i, x)).update (i, y) = s.locals.update (i, y) := by
    apply hfm_ext
    funext j
    by_cases hj : i = j
    · subst hj; simp [FUPDATE]
    · simp [FUPDATE, hj]
  unfold setVarHOLFinite
  simp only [hl]

theorem setVar_decClock (s : PanSemStateFiniteExact width σ) (i : MlS) (x : ValueHOL width) :
    setVarHOLFinite i x (decClockHOLFinite s) =
      { setVarHOLFinite i x s with clock := s.clock - 1 } := rfl

theorem decClock_eq (s : PanSemStateFiniteExact width σ) :
    decClockHOLFinite s = { s with clock := s.clock - 1 } := rfl

theorem evalExact_clock (s : PanSemStateFiniteExact width σ) (c : Nat) (e : ExpHOL width) :
    @evalHOLExact width σ _ ({ s with clock := c } : PanSemStateFiniteExact width σ).toExact
        (fun a => Classical.propDecidable
          (({ s with clock := c } : PanSemStateFiniteExact width σ).memaddrs a)) e =
      @evalHOLExact width σ _ s.toExact (fun a => Classical.propDecidable (s.memaddrs a)) e :=
  @evalHOLFinite_upd_clock_eq width σ _ s (fun a => Classical.propDecidable (s.memaddrs a)) c e

/-! ## Guards -/

/-- Guard statements: they end normally without changing the state, or by `return`
(or an error), and their outcome does not depend on the clock. -/
def guardB : ProgHOL width → Bool
  | .skip | .return _ => true
  | .ite _ a b => guardB a && guardB b
  | .seq a b => guardB a && guardB b
  | _ => false

structure Guard (σ : Type) (p : ProgHOL width) : Prop where
  keep : ∀ s : PanSemStateFiniteExact width σ, (evaluateHOLFiniteState s p).1 = none →
    (evaluateHOLFiniteState s p).2 = s
  noCont : ∀ s : PanSemStateFiniteExact width σ,
    (evaluateHOLFiniteState s p).1 ≠ some .continue
  clock : ∀ (s : PanSemStateFiniteExact width σ) (c : Nat),
    (evaluateHOLFiniteState { s with clock := c } p).1 = (evaluateHOLFiniteState s p).1

theorem guard_skip : Guard σ (.skip : ProgHOL width) where
  keep s _ := by rw [evaluateHOLFiniteState_eq_evaluate_def]
  noCont s := by rw [evaluateHOLFiniteState_eq_evaluate_def]; simp
  clock s c := by
    rw [evaluateHOLFiniteState_eq_evaluate_def, evaluateHOLFiniteState_eq_evaluate_def]

theorem guard_return (e : ExpHOL width) : Guard σ (.return e) where
  keep s := by
    rw [evaluateHOLFiniteState_eq_evaluate_def]
    dsimp only
    split
    · intro h; simp at h
    · split <;> (intro h; simp at h)
  noCont s := by
    rw [evaluateHOLFiniteState_eq_evaluate_def]
    dsimp only
    split
    · simp
    · split <;> simp
  clock s c := by
    rw [evaluateHOLFiniteState_eq_evaluate_def, evaluateHOLFiniteState_eq_evaluate_def]
    dsimp only
    rw [evalExact_clock]
    generalize @evalHOLExact width σ _ s.toExact (fun a => Classical.propDecidable (s.memaddrs a)) e = X
    cases X with
    | none => rfl
    | some v =>
        simp only [apply_ite Prod.fst]
        try rfl

theorem seq_fst (s : PanSemStateFiniteExact width σ) (a b : ProgHOL width) :
    (evaluateHOLFiniteState s (.seq a b)).1 =
      match (evaluateHOLFiniteState s a).1 with
      | none => (evaluateHOLFiniteState (evaluateHOLFiniteState s a).2 b).1
      | some r => some r := by
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.seq a b)]
  dsimp only
  cases h : (evaluateHOLFiniteState s a).1 with
  | none => rfl
  | some r => exact h

theorem guard_seq {a b : ProgHOL width} (ha : Guard σ a) (hb : Guard σ b) :
    Guard σ (.seq a b) where
  keep s := by
    rw [evaluateHOLFiniteState_eq_evaluate_def s (.seq a b)]
    dsimp only
    cases h1 : (evaluateHOLFiniteState s a).1 with
    | none =>
        intro h2
        rw [hb.keep _ h2, ha.keep _ h1]
    | some r => intro h2; simp [h1] at h2
  noCont s := by
    rw [evaluateHOLFiniteState_eq_evaluate_def s (.seq a b)]
    dsimp only
    cases h1 : (evaluateHOLFiniteState s a).1 with
    | none => exact hb.noCont _
    | some r => dsimp only; first | exact ha.noCont s | (rw [← h1]; exact ha.noCont s)
  clock s c := by
    rw [seq_fst, seq_fst, ha.clock]
    cases h1 : (evaluateHOLFiniteState s a).1 with
    | none =>
        dsimp only
        rw [ha.keep _ (by rw [ha.clock, h1]), ha.keep _ h1, hb.clock]
    | some r => rfl

theorem guard_ite {e : ExpHOL width} {a b : ProgHOL width} (ha : Guard σ a) (hb : Guard σ b) :
    Guard σ (.ite e a b) where
  keep s := by
    rw [evaluateHOLFiniteState_eq_evaluate_def s (.ite e a b)]
    dsimp only
    split
    · split
      · exact hb.keep s
      · exact ha.keep s
    · intro h; cases h
  noCont s := by
    rw [evaluateHOLFiniteState_eq_evaluate_def s (.ite e a b)]
    dsimp only
    split
    · split
      · exact hb.noCont s
      · exact ha.noCont s
    · simp
  clock s c := by
    rw [evaluateHOLFiniteState_eq_evaluate_def { s with clock := c } (.ite e a b),
      evaluateHOLFiniteState_eq_evaluate_def s (.ite e a b)]
    dsimp only
    rw [evalExact_clock]
    split
    · split
      · exact hb.clock s c
      · exact ha.clock s c
    · rfl

theorem guardB_sound : ∀ p : ProgHOL width, guardB p = true → Guard σ p
  | .skip, _ => guard_skip
  | .return _, _ => guard_return _
  | .ite _ a b, h => by
      simp only [guardB, Bool.and_eq_true] at h
      exact guard_ite (guardB_sound a h.1) (guardB_sound b h.2)
  | .seq a b, h => by
      simp only [guardB, Bool.and_eq_true] at h
      exact guard_seq (guardB_sound a h.1) (guardB_sound b h.2)
  | .dec _ _ _ _, h | .assign _ _ _, h | .primitive _ _ _, h | .store _ _, h => by
      simp [guardB] at h
  | .store32 _ _, h | .storeByte _ _, h | .while _ _, h | .break, h | .continue, h => by
      simp [guardB] at h
  | .call _ _ _, h | .decCall _ _ _ _ _, h | .extCall _ _ _ _ _, h | .raise _ _, h => by
      simp [guardB] at h
  | .shMemLoad _ _ _ _, h | .shMemStore _ _ _, h | .tick, h | .annot _ _, h => by
      simp [guardB] at h

/-! ## Guarded counter steps -/

/-- The body: guards, then `i = i + k`. -/
structure GStep (σ : Type) (i : MlS) (k : BitVec width) (p : ProgHOL width) : Prop where
  step : ∀ (s : PanSemStateFiniteExact width σ) (v : BitVec width),
    s.locals.lookup i = some (.val (.word v)) → (evaluateHOLFiniteState s p).1 = none →
    (evaluateHOLFiniteState s p).2 = setVarHOLFinite i (.val (.word (v + k))) s
  noCont : ∀ s : PanSemStateFiniteExact width σ,
    (evaluateHOLFiniteState s p).1 ≠ some .continue
  clock : ∀ (s : PanSemStateFiniteExact width σ) (c : Nat),
    (evaluateHOLFiniteState { s with clock := c } p).1 = (evaluateHOLFiniteState s p).1

theorem gstep_add (i : MlS) (k : BitVec width) :
    GStep σ i k (.assign .local i (.op .add [.var .local i, .const k])) where
  step s v hv _ := by
    rw [evaluateHOLFiniteState_eq_evaluate_def]
    simp [evalHOLExact, evalListHOLExact, hv, wordOpHOL, wordOp, valueIsWord, valueWord,
      isValidValueHOLFinite, lookupKvarHOLFinite, setKvarHOLFinite, shapeOfHOLExact, shapeEqHOL]
  noCont s := by
    rw [evaluateHOLFiniteState_eq_evaluate_def]
    dsimp only
    split
    · simp
    · split <;> simp
  clock s c := by
    rw [evaluateHOLFiniteState_eq_evaluate_def, evaluateHOLFiniteState_eq_evaluate_def]
    dsimp only
    rw [evalExact_clock]
    split
    · rfl
    · simp only [apply_ite Prod.fst]
      try rfl

theorem gstep_seq {i : MlS} {k : BitVec width} {g b : ProgHOL width} (hg : Guard σ g)
    (hb : GStep σ i k b) : GStep σ i k (.seq g b) where
  step s v hv := by
    rw [evaluateHOLFiniteState_eq_evaluate_def s (.seq g b)]
    dsimp only
    cases h1 : (evaluateHOLFiniteState s g).1 with
    | none =>
        intro h2
        have hk := hg.keep s h1
        rw [hk] at h2 ⊢
        exact hb.step s v hv h2
    | some r => intro h2; simp [h1] at h2
  noCont s := by
    rw [evaluateHOLFiniteState_eq_evaluate_def s (.seq g b)]
    dsimp only
    cases h1 : (evaluateHOLFiniteState s g).1 with
    | none => exact hb.noCont _
    | some r => dsimp only; first | exact hg.noCont s | (rw [← h1]; exact hg.noCont s)
  clock s c := by
    rw [seq_fst, seq_fst, hg.clock]
    cases h1 : (evaluateHOLFiniteState s g).1 with
    | none =>
        dsimp only
        rw [hg.keep _ (by rw [hg.clock, h1]), hg.keep _ h1, hb.clock]
    | some r => rfl

def gstepB (i : MlS) (k : BitVec width) : ProgHOL width → Bool
  | .seq g b => guardB g && gstepB i k b
  | .assign .local j (.op .add [.var .local j', .const c]) =>
      decide (j = i) && decide (j' = i) && decide (c = k)
  | _ => false

theorem gstepB_sound (i : MlS) (k : BitVec width) :
    ∀ p : ProgHOL width, gstepB i k p = true → GStep σ i k p
  | .seq g b, h => by
      simp only [gstepB, Bool.and_eq_true] at h
      exact gstep_seq (guardB_sound g h.1) (gstepB_sound i k b h.2)
  | .assign .local j e, h => by
      unfold gstepB at h
      split at h
      · rename_i heq; cases heq
      · rename_i heq
        cases heq
        simp only [Bool.and_eq_true, decide_eq_true_eq] at h
        obtain ⟨⟨hj, hj'⟩, hc⟩ := h
        rw [hj, hj', hc]
        exact gstep_add i k
      · simp at h
  | .skip, h | .dec _ _ _ _, h | .assign .global _ _, h | .primitive _ _ _, h => by
      simp [gstepB] at h
  | .store _ _, h | .store32 _ _, h | .storeByte _ _, h | .ite _ _ _, h | .while _ _, h => by
      simp [gstepB] at h
  | .break, h | .continue, h | .call _ _ _, h | .decCall _ _ _ _ _, h => by
      simp [gstepB] at h
  | .extCall _ _ _ _ _, h | .raise _ _, h | .return _, h | .shMemLoad _ _ _ _, h => by
      simp [gstepB] at h
  | .shMemStore _ _ _, h | .tick, h | .annot _ _, h => by simp [gstepB] at h

/-! ## The loop rule -/

theorem cost_while_orbitPure {c : ExpHOL width} {body : ProgHOL width} {B : Nat} {i : MlS}
    {k : BitVec width} (P : PanSemStateFiniteExact width σ → BitVec width → Bool)
    (hcond : ∀ s : PanSemStateFiniteExact width σ,
      CondTrue s c ↔ ∃ v, s.locals.lookup i = some (.val (.word v)) ∧ P s v = true)
    (hP : ∀ (s : PanSemStateFiniteExact width σ) w, P (setVarHOLFinite i (.val (.word w)) s) = P s)
    (hdecP : ∀ s : PanSemStateFiniteExact width σ, P (decClockHOLFinite s) = P s)
    (hb : Cost σ X body B) (hg : GStep σ i k body) :
    Cost σ X (.while c body) ((2 ^ width + 1) * (B + 1)) := by
  have hN : 0 < 2 ^ width := Nat.two_pow_pos _
  obtain ⟨N', hN'⟩ : ∃ N', 2 ^ width = N' + 1 := ⟨2 ^ width - 1, by omega⟩
  -- the counter value `v` keeps the loop running and the body ends normally there
  let Q : PanSemStateFiniteExact width σ → BitVec width → Bool := fun s v =>
    P s v && (evaluateHOLFiniteState (setVarHOLFinite i (.val (.word v)) s) body).1.isNone
  have hQset : ∀ s w, Q (setVarHOLFinite i (.val (.word w)) s) = Q s := by
    intro s w
    funext u
    simp only [Q, hP, setVar_setVar]
  have hQdec : ∀ s, Q (decClockHOLFinite s) = Q s := by
    intro s
    funext u
    simp only [Q, hdecP, setVar_decClock, hg.clock]
  have hQrun : ∀ s v, s.locals.lookup i = some (.val (.word v)) →
      (evaluateHOLFiniteState (decClockHOLFinite s) body).1 = none → P s v = true →
      Q s v = true := by
    intro s v hv hnone hp
    simp only [Q, hp, Bool.true_and, setVar_idem hv]
    rw [decClock_eq, hg.clock] at hnone
    rw [hnone]; rfl
  let μ : PanSemStateFiniteExact width σ → Nat := fun s =>
    match s.locals.lookup i with
    | some (.val (.word v)) => runLen (Q s) k (2 ^ width) v
    | _ => 0
  let Doomed : PanSemStateFiniteExact width σ → Prop := fun s =>
    InCtx s X ∧
      ∃ v, s.locals.lookup i = some (.val (.word v)) ∧ runLen (Q s) k (2 ^ width) v = 2 ^ width
  -- one normal iteration from counter `v`
  have step : ∀ s : PanSemStateFiniteExact width σ, ∀ v,
      s.locals.lookup i = some (.val (.word v)) →
      (evaluateHOLFiniteState (decClockHOLFinite s) body).1 = none →
      (evaluateHOLFiniteState (decClockHOLFinite s) body).2.locals.lookup i =
          some (.val (.word (v + k))) ∧
        Q (evaluateHOLFiniteState (decClockHOLFinite s) body).2 = Q s ∧
        (evaluateHOLFiniteState (decClockHOLFinite s) body).2.code = s.code := by
    intro s v hv hnone
    rw [hg.step (decClockHOLFinite s) v hv hnone]
    refine ⟨?_, ?_, rfl⟩
    · simp [setVarHOLFinite, FUPDATE]
    · rw [hQset, hQdec]
  refine cost_while_doomed μ (2 ^ width) Doomed hb ?_ ?_ ?_
  · intro s _ _ _
    simp only [μ]
    split
    · exact runLen_le _ _ _ _
    · exact Nat.zero_le _
  · intro s hsc hct _ hnd hexit
    have hnone : (evaluateHOLFiniteState (decClockHOLFinite s) body).1 = none := by
      rcases hexit with h | h
      · exact h
      · exact absurd h (hg.noCont _)
    obtain ⟨v, hv, hpv⟩ := (hcond s).mp hct
    have hqv := hQrun s v hv hnone hpv
    obtain ⟨hv', hQ', -⟩ := step s v hv hnone
    have hlt : runLen (Q s) k (2 ^ width) v < 2 ^ width := by
      have := runLen_le (Q s) k (2 ^ width) v
      have hne : runLen (Q s) k (2 ^ width) v ≠ 2 ^ width := fun h => hnd ⟨hsc, v, hv, h⟩
      omega
    simp only [μ, hv', hv, hQ']
    rw [hN'] at hlt ⊢
    have h1 : runLen (Q s) k (N' + 1) v = runLen (Q s) k N' (v + k) + 1 := by
      simp [runLen, hqv]
    have h2 : runLen (Q s) k (N' + 1) (v + k) = runLen (Q s) k N' (v + k) :=
      runLen_succ_of_lt _ _ _ _ (by omega)
    rw [h1, h2]
    omega
  · intro s hd
    obtain ⟨hsc, v, hv, hfull⟩ := hd
    have hall := (runLen_eq_iff (Q s) k _ v).mp hfull
    have hqv : Q s v = true := by simpa [orbit_zero] using hall 0 hN
    have hpv : P s v = true := by
      simp only [Q, Bool.and_eq_true] at hqv
      exact hqv.1
    have hnone : (evaluateHOLFiniteState (decClockHOLFinite s) body).1 = none := by
      simp only [Q, Bool.and_eq_true, setVar_idem hv] at hqv
      rw [decClock_eq, hg.clock]
      exact Option.isNone_iff_eq_none.mp hqv.2
    refine ⟨(hcond s).mpr ⟨v, hv, hpv⟩, fun _ => ⟨Or.inl hnone, ?_⟩⟩
    obtain ⟨hv', hQ', -⟩ := step s v hv hnone
    refine ⟨inCtx_eval (s := decClockHOLFinite s) hsc body, v + k, hv', ?_⟩
    rw [hQ', runLen_eq_iff]
    intro m hm
    rw [orbit_succ]
    by_cases hlast : m + 1 < 2 ^ width
    · exact hall (m + 1) hlast
    · have : m + 1 = 2 ^ width := by omega
      rw [this, orbit_period]
      exact hqv

/-! ## Condition shapes -/

theorem wordLocal_setVar_ne {s : PanSemStateFiniteExact width σ} {i n : MlS} (w : ValueHOL width)
    (h : i ≠ n) : wordLocal (setVarHOLFinite i w s) n = wordLocal s n :=
  wordLocal_keep (lookup_setVar_ne w h)

def loopOkOrbitPure (c : ExpHOL width) (b : ProgHOL width) : Bool :=
  match c with
  | .cmp _ (.var .local n) (.op .add [.var .local i, .const _]) =>
      match findAddK i b with
      | some k => decide (i ≠ n) && gstepB i k b
      | none => false
  | .cmp _ (.var .local x) (.var .local y) =>
      (match findAddK x b with
        | some k => decide (x ≠ y) && gstepB x k b
        | none => false) ||
      (match findAddK y b with
        | some k => decide (y ≠ x) && gstepB y k b
        | none => false)
  | .cmp _ (.var .local i) (.const _) =>
      match findAddK i b with
      | some k => gstepB i k b
      | none => false
  | _ => false

theorem loopOkOrbitPure_sound {c : ExpHOL width} {b : ProgHOL width} {B : Nat}
    (h : loopOkOrbitPure c b = true) (hb : Cost σ X b B) :
    Cost σ X (.while c b) ((2 ^ width + 1) * (B + 1)) := by
  unfold loopOkOrbitPure at h
  split at h
  · rename_i op n i kc
    split at h
    · rename_i k _
      simp only [Bool.and_eq_true, decide_eq_true_eq] at h
      refine cost_while_orbitPure (i := i) (k := k)
        (fun s v => match wordLocal s n with
          | some nv => Compiler.Encoders.Asm.wordCmpHOL op nv (v + kc)
          | none => false)
        (fun s => condA_iff s op n i kc) ?_ (fun _ => rfl) hb (gstepB_sound i k b h.2)
      intro s w
      funext v
      rw [wordLocal_setVar_ne _ h.1]
    · simp at h
  · rename_i op x y
    rcases Bool.or_eq_true_iff.mp h with h | h
    · split at h
      · rename_i k _
        simp only [Bool.and_eq_true, decide_eq_true_eq] at h
        refine cost_while_orbitPure (i := x) (k := k)
          (fun s v => match wordLocal s y with
            | some nv => Compiler.Encoders.Asm.wordCmpHOL op v nv
            | none => false)
          (fun s => condB1_iff s op x y) ?_ (fun _ => rfl) hb (gstepB_sound x k b h.2)
        intro s w
        funext v
        rw [wordLocal_setVar_ne _ h.1]
      · simp at h
    · split at h
      · rename_i k _
        simp only [Bool.and_eq_true, decide_eq_true_eq] at h
        refine cost_while_orbitPure (i := y) (k := k)
          (fun s v => match wordLocal s x with
            | some nv => Compiler.Encoders.Asm.wordCmpHOL op nv v
            | none => false)
          (fun s => condB3_iff s op x y) ?_ (fun _ => rfl) hb (gstepB_sound y k b h.2)
        intro s w
        funext v
        rw [wordLocal_setVar_ne _ h.1]
      · simp at h
  · rename_i op i z
    split at h
    · rename_i k _
      exact cost_while_orbitPure (i := i) (k := k)
        (fun _ v => Compiler.Encoders.Asm.wordCmpHOL op v z)
        (fun s => condB2_iff s op i z) (fun _ _ => rfl) (fun _ => rfl) hb (gstepB_sound i k b h)
    · simp at h
  · simp at h

end InitECandidate.Solver.SourceCost
