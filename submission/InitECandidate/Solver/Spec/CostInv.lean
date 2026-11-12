import InitECandidate.Solver.Spec.MemFree
import InitECandidate.Solver.SourceCost.LoopExtra.AddrLoop

/-!
# Tick bounds from a precondition; an invariant-carrying `while` rule

`CostP σ X P p B` is `Cost σ X p B` restricted to start states satisfying `P`.
`Cost` (all states of the context) is the case `P = True` (`cost_of_costP`); the
rules `costP_dec`, `costP_seq_cost`, `costP_exists` thread a precondition through a
function prologue.

`costP_while_inv`: a loop whose body keeps an invariant `I` and, from `I`, strictly
decreases a measure `μ ≤ M` on every completed iteration (a Hoare triple of
`Spec/Hoare.lean`, so only normal completion and `continue` matter), runs at most `M + 1`
iterations from any `I`-state. Unlike `cost_while`, `μ` need only decrease on
`I`-states, so the measure may rely on facts (e.g. a record chain in memory) that only
hold for states reached from the function entry.

Helpers: `ev_op2_inv` (inversion of a binary word operation), `stores_one` (a one-word
store updates one address), `ev_loadByte_hit` (a byte load passed the domain check),
`hoare_shMemStore_none` / `hoare_extCall_none` (these statements complete normally when
their result is tracked), `funSpec_of_hoare`.
-/

namespace InitECandidate.Solver.Spec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost

variable {σ : Type} {X : Ctx 64}

/-! ## Cost from a precondition -/

/-- Good evaluation of `p` from a state in context `X` satisfying `P` uses at most `B`
ticks and stays in context. -/
def CostP (σ : Type) (X : Ctx 64) (P : PanSemStateFiniteExact 64 σ → Prop) (p : ProgHOL 64)
    (B : Nat) : Prop :=
  ∀ s : PanSemStateFiniteExact 64 σ, InCtx s X → P s →
    Good (evaluateHOLFiniteState s p).1 →
    s.clock ≤ (evaluateHOLFiniteState s p).2.clock + B ∧
      InCtx (evaluateHOLFiniteState s p).2 X

theorem costP_of_cost {P : PanSemStateFiniteExact 64 σ → Prop} {p : ProgHOL 64} {B : Nat}
    (h : Cost σ X p B) : CostP σ X P p B :=
  fun s hs _ hg => h s hs hg

theorem cost_of_costP {p : ProgHOL 64} {B : Nat} (h : CostP σ X (fun _ => True) p B) :
    Cost σ X p B :=
  fun s hs hg => h s hs trivial hg

theorem CostP.mono {P : PanSemStateFiniteExact 64 σ → Prop} {p : ProgHOL 64} {B B' : Nat}
    (h : CostP σ X P p B) (hle : B ≤ B') : CostP σ X P p B' := by
  intro s hs hp hg
  obtain ⟨h1, h2⟩ := h s hs hp hg
  exact ⟨by omega, h2⟩

theorem costP_pre {P P' : PanSemStateFiniteExact 64 σ → Prop} {p : ProgHOL 64} {B : Nat}
    (h : CostP σ X P p B) (hP : ∀ s, InCtx s X → P' s → P s) : CostP σ X P' p B :=
  fun s hs hp hg => h s hs (hP s hs hp) hg

theorem costP_exists {α : Type} {P : α → PanSemStateFiniteExact 64 σ → Prop} {p : ProgHOL 64}
    {B : Nat} (h : ∀ a, CostP σ X (P a) p B) : CostP σ X (fun s => ∃ a, P a s) p B := by
  intro s hs ⟨a, ha⟩ hg
  exact h a s hs ha hg

theorem costP_dec {P P' : PanSemStateFiniteExact 64 σ → Prop} {n : MlS} {sh : ShapeHOL}
    {e : ExpHOL 64} {body : ProgHOL 64} {B : Nat} (hb : CostP σ X P' body B)
    (h : ∀ s, InCtx s X → P s → ∀ v, ev s e = some v → shapeEqHOL sh (shapeOfHOLExact v) = true →
      P' (setVarHOLFinite n v s)) :
    CostP σ X P (.dec n sh e body) B := by
  intro s hs hp hto
  revert hto
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.dec n sh e body)]
  dsimp only
  split
  · intro _; exact ⟨by (try dsimp only); omega, hs⟩
  · rename_i v hv
    split
    · rename_i hsh
      intro hto
      obtain ⟨h1, h2⟩ := hb (setVarHOLFinite n _ s) hs (h s hs hp v hv hsh) hto
      exact ⟨by simpa [setVarHOLFinite] using h1, h2⟩
    · intro _; exact ⟨by (try dsimp only); omega, hs⟩

theorem costP_seq_cost {P : PanSemStateFiniteExact 64 σ → Prop} {a b : ProgHOL 64} {Ba Bb : Nat}
    (ha : CostP σ X P a Ba) (hb : Cost σ X b Bb) : CostP σ X P (.seq a b) (Ba + Bb) := by
  intro s hs hp hto
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.seq a b)] at hto ⊢
  dsimp only at hto ⊢
  cases h1 : (evaluateHOLFiniteState s a).1 with
  | none =>
      simp only [h1] at hto ⊢
      have ha' := ha s hs hp (by rw [h1]; exact good_none)
      have hb' := hb _ ha'.2 hto
      exact ⟨by omega, hb'.2⟩
  | some r =>
      simp only [h1] at hto ⊢
      have ha' := ha s hs hp (by rw [h1]; exact hto)
      exact ⟨by omega, ha'.2⟩

theorem condTrue_decClock {s : PanSemStateFiniteExact 64 σ} {c : ExpHOL 64} :
    CondTrue (decClockHOLFinite s) c ↔ CondTrue s c := by
  unfold CondTrue decClockHOLFinite
  rw [evalHOLFinite_upd_clock_eq]

/-- **Invariant-carrying measure rule.** From an `I`-state, a loop whose body keeps `I`
and decreases `μ ≤ M` on every completed iteration runs at most `M + 1` iterations. -/
theorem costP_while_inv {c : ExpHOL 64} {body : ProgHOL 64} {Bb : Nat}
    (I : PanSemStateFiniteExact 64 σ → Prop) (μ : PanSemStateFiniteExact 64 σ → Nat) (M : Nat)
    (hbody : Cost σ X body Bb)
    (hclk : ∀ s, I s → I (decClockHOLFinite s) ∧ μ (decClockHOLFinite s) = μ s)
    (hM : ∀ s, InCtx s X → I s → CondTrue s c → μ s ≤ M)
    (hstep : ∀ k, Hoare σ X (fun s => I s ∧ CondTrue s c ∧ μ s = k) body
      (fun r t => r = none ∨ r = some .continue → I t ∧ μ t < k)) :
    CostP σ X I (.while c body) ((M + 1) * (Bb + 1)) := by
  suffices H : ∀ n (s : PanSemStateFiniteExact 64 σ), InCtx s X → I s →
      (CondTrue s c → μ s < n) → Good (evaluateHOLFiniteState s (.while c body)).1 →
      s.clock ≤ (evaluateHOLFiniteState s (.while c body)).2.clock + n * (Bb + 1) ∧
        InCtx (evaluateHOLFiniteState s (.while c body)).2 X by
    intro s hs hI hg
    exact H (M + 1) s hs hI (fun h => by have := hM s hs hI h; omega) hg
  intro n
  induction n with
  | zero =>
      intro s hs _ hμ hto
      revert hto
      rw [evaluateHOLFiniteState_eq_evaluate_def s (.while c body)]
      dsimp only
      split
      · rename_i w hw
        split
        · rename_i hne
          exact absurd (hμ ⟨w, hw, hne⟩) (Nat.not_lt_zero _)
        · intro _; exact ⟨by (try dsimp only); omega, hs⟩
      · intro _; exact ⟨by (try dsimp only); omega, hs⟩
  | succ n ih =>
      intro s hs hI hμ hto
      revert hto
      rw [evaluateHOLFiniteState_eq_evaluate_def s (.while c body)]
      dsimp only
      split
      · rename_i w hw
        split
        · rename_i hne
          have hcond : CondTrue s c := ⟨w, hw, hne⟩
          split
          · intro hto; exact absurd rfl hto.1
          · rename_i hclock
            have hdecs : InCtx (decClockHOLFinite s) X := hs
            have hcl : (decClockHOLFinite s).clock + 1 = s.clock := by
              simp [decClockHOLFinite]; omega
            have hμs : μ s < n + 1 := hμ hcond
            obtain ⟨hId, hμd⟩ := hclk s hI
            have hst := hstep (μ s) (decClockHOLFinite s) hdecs
              ⟨hId, condTrue_decClock.mpr hcond, hμd⟩
            cases ho : (evaluateHOLFiniteState (decClockHOLFinite s) body).1 with
            | none =>
              simp only []
              intro hto
              obtain ⟨b1, b2⟩ := hbody _ hdecs (by rw [ho]; simp [Good])
              have := hst (by rw [ho]; trivial)
              rw [ho] at this
              obtain ⟨hIt, hlt⟩ := this (Or.inl rfl)
              obtain ⟨r1, r2⟩ := ih _ b2 hIt (fun _ => by omega) hto
              exact ⟨by rw [Nat.succ_mul]; omega, r2⟩
            | some r =>
              cases r with
              | «continue» =>
                simp only []
                intro hto
                obtain ⟨b1, b2⟩ := hbody _ hdecs (by rw [ho]; simp [Good])
                have := hst (by rw [ho]; trivial)
                rw [ho] at this
                obtain ⟨hIt, hlt⟩ := this (Or.inr rfl)
                obtain ⟨r1, r2⟩ := ih _ b2 hIt (fun _ => by omega) hto
                exact ⟨by rw [Nat.succ_mul]; omega, r2⟩
              | «break» =>
                simp only []
                intro _
                obtain ⟨b1, b2⟩ := hbody _ hdecs (by rw [ho]; simp [Good])
                exact ⟨by (try dsimp only); rw [Nat.succ_mul]; omega, b2⟩
              | _ =>
                simp only []
                intro hto
                obtain ⟨b1, b2⟩ := hbody _ hdecs (by rw [ho]; exact hto)
                exact ⟨by (try dsimp only); rw [Nat.succ_mul]; omega, b2⟩
        · intro _; exact ⟨by (try dsimp only); omega, hs⟩
      · intro _; exact ⟨by (try dsimp only); omega, hs⟩

/-! ## Expression and statement helpers -/

section helpers
variable {s : PanSemStateFiniteExact 64 σ}

/-- Inversion of a binary word operation. -/
theorem ev_op2_inv {o : BinOp} {a b : ExpHOL 64} {x : BitVec 64}
    (h : ev s (.op o [a, b]) = some (.val (.word x))) :
    ∃ y z, ev s a = some (.val (.word y)) ∧ ev s b = some (.val (.word z)) ∧
      wordOpHOL o [y, z] = some x := by
  have hl : ∃ vs, evs s [a, b] = some vs ∧ vs.all valueIsWord = true ∧
      (wordOpHOL o (vs.map valueWord)).map (fun w => (ValueHOL.val (.word w) : ValueHOL 64)) =
        some (.val (.word x)) := by
    simp only [ev, evs, evalHOLExact] at h ⊢
    split at h
    · rename_i vs hvs
      split at h
      · rename_i hall
        exact ⟨vs, hvs, hall, h⟩
      · simp at h
    · simp at h
  obtain ⟨vs, hvs, hall, hmap⟩ := hl
  obtain ⟨va, vs1, rfl, ha, hvs1⟩ := evs_cons_inv hvs
  obtain ⟨vb, vs2, rfl, hb, hvs2⟩ := evs_cons_inv hvs1
  have : vs2 = [] := by
    simp only [evs, evalListHOLExact, Option.some.injEq] at hvs2
    exact hvs2.symm
  subst this
  simp only [List.all_cons, List.all_nil, Bool.and_true, Bool.and_eq_true] at hall
  obtain ⟨hwa, hwb⟩ := hall
  cases va with
  | val wa => cases wa with
    | word y => cases vb with
      | val wb => cases wb with
        | word z =>
          refine ⟨y, z, ha, hb, ?_⟩
          obtain ⟨w, hw, hwx⟩ := Option.map_eq_some_iff.mp hmap
          simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hwx
          subst hwx
          simpa [valueWord] using hw
      | rStruct _ => simp [valueIsWord] at hwb
      | nStruct _ _ => simp [valueIsWord] at hwb
  | rStruct _ => simp [valueIsWord] at hwa
  | nStruct _ _ => simp [valueIsWord] at hwa

theorem ev_sub2_inv {a b : ExpHOL 64} {x : BitVec 64}
    (h : ev s (.op .sub [a, b]) = some (.val (.word x))) :
    ∃ y z, ev s a = some (.val (.word y)) ∧ ev s b = some (.val (.word z)) ∧ x = y - z := by
  obtain ⟨y, z, ha, hb, hx⟩ := ev_op2_inv h
  refine ⟨y, z, ha, hb, ?_⟩
  have := ev_sub2 ha hb
  rw [this] at h
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at h
  exact h.symm

theorem ev_add2_inv {a b : ExpHOL 64} {x : BitVec 64}
    (h : ev s (.op .add [a, b]) = some (.val (.word x))) :
    ∃ y z, ev s a = some (.val (.word y)) ∧ ev s b = some (.val (.word z)) ∧ x = y + z := by
  obtain ⟨y, z, ha, hb, hx⟩ := ev_op2_inv h
  refine ⟨y, z, ha, hb, ?_⟩
  have := ev_add2 ha hb
  rw [this] at h
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at h
  exact h.symm

/-- A byte load passed the domain check at its address. -/
theorem ev_loadByte_hit {a : ExpHOL 64} {v : ValueHOL 64} (h : ev s (.loadByte a) = some v) :
    ∃ w, ev s a = some (.val (.word w)) ∧ Hit s.memaddrs w := by
  simp only [ev, evalHOLExact] at h ⊢
  split at h
  · rename_i w hw
    refine ⟨w, hw, Or.inr ?_⟩
    obtain ⟨b, hb, -⟩ := Option.map_eq_some_iff.mp h
    unfold panMemLoadByteHOL at hb
    dsimp only at hb
    split at hb
    · assumption
    · simp at hb
  · simp at h

/-- A one-word store writes exactly one address. -/
theorem stores_one {w : BitVec 64} {x : HolWordLab 64} {D : BitVec 64 → Prop}
    {inst : DecidablePred D} {M mem : BitVec 64 → HolWordLab 64}
    (h : @panMemStoresHOL 64 _ w [x] D inst M = some mem) :
    D w ∧ mem = fun a => if a = w then x else M a := by
  unfold panMemStoresHOL at h
  unfold panMemStoreHOL at h
  split at h
  · rename_i u hu
    split at hu
    · rename_i hd
      simp only [Option.some.injEq] at hu
      unfold panMemStoresHOL at h
      simp only [Option.some.injEq] at h
      exact ⟨hd, by rw [← h, ← hu]⟩
    · simp at hu
  · simp at h

theorem hoare_shMemStore_none {P : PanSemStateFiniteExact 64 σ → Prop} {o : OpSize}
    {a v : ExpHOL 64} : Hoare σ X P (.shMemStore o a v) (fun r _ => r = none) := by
  intro s _ _
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.shMemStore o a v)]
  dsimp only
  split
  · unfold shMemStoreHOLExact
    dsimp only
    repeat' split
    all_goals first | (intro _; rfl) | (intro ht; exact absurd ht (by simp))
  · intro ht; exact absurd ht (by simp)

theorem hoare_extCall_none {P : PanSemStateFiniteExact 64 σ → Prop} {f : MlS}
    {a b c d : ExpHOL 64} : Hoare σ X P (.extCall f a b c d) (fun r _ => r = none) := by
  intro s _ _
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.extCall f a b c d)]
  dsimp only
  repeat' split
  all_goals first | (intro _; rfl) | (intro ht; exact absurd ht (by simp))

end helpers

/-- A state-relational spec about returned values from a Hoare triple per entry state. -/
theorem funSpec_of_hoare {f : MlS}
    {R : List (ValueHOL 64) → PanSemStateFiniteExact 64 σ → ValueHOL 64 →
      PanSemStateFiniteExact 64 σ → Prop}
    (h : ∀ vs body callee rs, lookupCodeHOLFinite X.code.lookup f vs = some (body, callee, rs) →
      ∀ s0 : PanSemStateFiniteExact 64 σ, InCtx s0 X → s0.locals = callee →
        Hoare σ X (fun t => t = s0) body
          (fun r t => ∀ v, r = some (.returned v) → R vs s0 v t)) :
    FunSpec σ X f (fun vs s r t => ∀ v, r = .returned v → R vs s v t) := by
  intro vs body callee rs hl s hs hloc r hr v hv
  subst hv
  have := h vs body callee rs hl s hs hloc s hs rfl (by rw [hr]; trivial)
  rw [hr] at this
  exact this v rfl

end InitECandidate.Solver.Spec
