import InitECandidate.Solver.Spec.Hoare

/-! Generic conditional cost and loop rules copied verbatim (namespace changed)
from Layr-Labs/evm.fast f2f17565 Solver/Spec/Inv/CostI.lean, Apache-2.0.
Modification: omit unrelated memory/code imports and later call rules so the
initialized-loop improvement can be checked in a small environment.
-/
namespace AcceptedLoopRules
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

section general
variable {width : Nat} [NeZero width] {σ : Type} {X : Ctx width}

/-! ## The judgments -/

/-- Conditional cost: a Good run of `p` from a state of `X` satisfying `P` uses at most `B`
ticks. -/
def CostP (σ : Type) (X : Ctx width) (P : PanSemStateFiniteExact width σ → Prop)
    (p : ProgHOL width) (B : Nat) : Prop :=
  ∀ s, InCtx s X → P s → Good (evaluateHOLFiniteState s p).1 →
    s.clock ≤ (evaluateHOLFiniteState s p).2.clock + B

/-- Conditional cost with an invariant: from `I`, at most `B` ticks, and every tracked result
ends in `I`. -/
def CostI (σ : Type) (X : Ctx width) (I : PanSemStateFiniteExact width σ → Prop)
    (p : ProgHOL width) (B : Nat) : Prop :=
  CostP σ X I p B ∧ Hoare σ X I p (fun _ t => I t)

theorem CostP.mono {P : PanSemStateFiniteExact width σ → Prop} {p : ProgHOL width} {B B' : Nat}
    (h : CostP σ X P p B) (hle : B ≤ B') : CostP σ X P p B' := by
  intro s hs hp hg
  have := h s hs hp hg
  omega

theorem CostP.pre {P P' : PanSemStateFiniteExact width σ → Prop} {p : ProgHOL width} {B : Nat}
    (h : CostP σ X P p B) (hP : ∀ s, InCtx s X → P' s → P s) : CostP σ X P' p B :=
  fun s hs hp hg => h s hs (hP s hs hp) hg

/-- Ghost values in the precondition. -/
theorem costP_exists {α : Type} {P : α → PanSemStateFiniteExact width σ → Prop}
    {p : ProgHOL width} {B : Nat} (h : ∀ a, CostP σ X (P a) p B) :
    CostP σ X (fun s => ∃ a, P a s) p B :=
  fun s hs ⟨a, ha⟩ hg => h a s hs ha hg

/-- An all-states cost is a conditional cost for every precondition. -/
theorem costP_of_cost {P : PanSemStateFiniteExact width σ → Prop} {p : ProgHOL width} {B : Nat}
    (h : Cost σ X p B) : CostP σ X P p B :=
  fun s hs _ hg => (h s hs hg).1

/-- With the trivial precondition the two judgments agree. -/
theorem cost_of_costP_true {p : ProgHOL width} {B : Nat}
    (h : CostP σ X (fun _ => True) p B) : Cost σ X p B :=
  fun s hs hg => ⟨h s hs trivial hg, inCtx_eval hs p⟩

/-- An all-states cost is a `CostI` for every invariant the program preserves. -/
theorem costI_of_cost {I : PanSemStateFiniteExact width σ → Prop} {p : ProgHOL width} {B : Nat}
    (h : Cost σ X p B) (hI : Hoare σ X I p (fun _ t => I t)) : CostI σ X I p B :=
  ⟨costP_of_cost h, hI⟩

/-- `CostI` unfolded: cost bound and final invariant, for Good runs. -/
theorem CostI.run {I : PanSemStateFiniteExact width σ → Prop} {p : ProgHOL width} {B : Nat}
    (h : CostI σ X I p B) {s : PanSemStateFiniteExact width σ} (hs : InCtx s X) (hi : I s)
    (hg : Good (evaluateHOLFiniteState s p).1) :
    s.clock ≤ (evaluateHOLFiniteState s p).2.clock + B ∧
      (Tracked (evaluateHOLFiniteState s p).1 → I (evaluateHOLFiniteState s p).2) :=
  ⟨h.1 s hs hi hg, fun ht => h.2 s hs hi ht⟩

/-! ## Structural rules -/

theorem costP_seq {P R : PanSemStateFiniteExact width σ → Prop} {a b : ProgHOL width}
    {Ba Bb : Nat} (ha : CostP σ X P a Ba)
    (hm : Hoare σ X P a (fun r t => r = none → R t)) (hb : CostP σ X R b Bb) :
    CostP σ X P (.seq a b) (Ba + Bb) := by
  intro s hs hp hg
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.seq a b)] at hg ⊢
  dsimp only at hg ⊢
  cases h1 : (evaluateHOLFiniteState s a).1 with
  | none =>
      simp only [h1] at hg ⊢
      have ha' := ha s hs hp (by rw [h1]; exact good_none)
      have hR := hm s hs hp (by rw [h1]; trivial)
      rw [h1] at hR
      have hb' := hb _ (inCtx_eval hs a) (hR rfl) hg
      omega
  | some r =>
      simp only [h1] at hg ⊢
      have ha' := ha s hs hp (by rw [h1]; exact hg)
      omega

theorem costI_seq {I : PanSemStateFiniteExact width σ → Prop} {a b : ProgHOL width}
    {Ba Bb : Nat} (ha : CostI σ X I a Ba) (hb : CostI σ X I b Bb) :
    CostI σ X I (.seq a b) (Ba + Bb) :=
  ⟨costP_seq ha.1 (hoare_post ha.2 fun _ _ _ _ h _ => h) hb.1,
    hoare_seq ha.2 (fun _ _ _ _ _ h => h) hb.2⟩

theorem costP_ite {P : PanSemStateFiniteExact width σ → Prop} {c : ExpHOL width}
    {a b : ProgHOL width} {Ba Bb : Nat}
    (ha : CostP σ X (fun s => P s ∧ ∃ w, ev s c = some (.val (.word w)) ∧ w ≠ 0) a Ba)
    (hb : CostP σ X (fun s => P s ∧ ev s c = some (.val (.word 0))) b Bb) :
    CostP σ X P (.ite c a b) (max Ba Bb) := by
  intro s hs hp
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.ite c a b)]
  dsimp only
  split
  · rename_i w hw
    split
    · rename_i h0
      subst h0
      intro hg
      have := hb s hs ⟨hp, hw⟩ hg
      omega
    · rename_i h0
      intro hg
      have := ha s hs ⟨hp, w, hw, h0⟩ hg
      omega
  · intro _
    (try dsimp only)
    omega

/-- `var n = e; body`: the body runs from the exact updated state (as in `hoare_dec`). -/
theorem costP_dec {P : PanSemStateFiniteExact width σ → Prop} {n : MlS} {sh : ShapeHOL}
    {e : ExpHOL width} {body : ProgHOL width} {B : Nat}
    (h : ∀ s, InCtx s X → P s → ∀ v, ev s e = some v → shapeEqHOL sh (shapeOfHOLExact v) = true →
      CostP σ X (fun t => t = setVarHOLFinite n v s) body B) :
    CostP σ X P (.dec n sh e body) B := by
  intro s hs hp
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.dec n sh e body)]
  dsimp only
  split
  · intro _; (try dsimp only); omega
  · rename_i v hv
    split
    · rename_i hsh
      intro hg
      have := h s hs hp v hv hsh (setVarHOLFinite n v s) hs rfl hg
      simpa [setVarHOLFinite] using this
    · intro _; (try dsimp only); omega

theorem condTrue_decClock {s : PanSemStateFiniteExact width σ} {c : ExpHOL width} :
    CondTrue (decClockHOLFinite s) c ↔ CondTrue s c := by
  unfold CondTrue decClockHOLFinite
  rw [evalHOLFinite_upd_clock_eq]

/-! ## Loops under an invariant -/

theorem costP_while_aux {I : PanSemStateFiniteExact width σ → Prop} {c : ExpHOL width}
    {body : ProgHOL width} {Bb : Nat} (μ : PanSemStateFiniteExact width σ → Nat)
    (hclk : ∀ s, I s → I (decClockHOLFinite s))
    (hμclk : ∀ s, μ (decClockHOLFinite s) = μ s)
    (hbody : CostP σ X (fun s => I s ∧ CondTrue s c) body Bb)
    (hinv : Hoare σ X (fun s => I s ∧ CondTrue s c) body
      (fun r t => r = none ∨ r = some .continue → I t))
    (hdec : ∀ k, Hoare σ X (fun s => I s ∧ CondTrue s c ∧ μ s = k) body
      (fun r t => r = none ∨ r = some .continue → μ t < k)) :
    ∀ n (s : PanSemStateFiniteExact width σ), InCtx s X → I s → (CondTrue s c → μ s < n) →
      Good (evaluateHOLFiniteState s (.while c body)).1 →
      s.clock ≤ (evaluateHOLFiniteState s (.while c body)).2.clock + n * (Bb + 1) := by
  intro n
  induction n with
  | zero =>
      intro s hs hi hμ hto
      revert hto
      rw [evaluateHOLFiniteState_eq_evaluate_def s (.while c body)]
      dsimp only
      split
      · rename_i w hw
        split
        · rename_i hne
          exact absurd (hμ ⟨w, hw, hne⟩) (Nat.not_lt_zero _)
        · intro _; (try dsimp only); omega
      · intro _; (try dsimp only); omega
  | succ n ih =>
      intro s hs hi hμ hto
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
            have hpre : I (decClockHOLFinite s) ∧ CondTrue (decClockHOLFinite s) c :=
              ⟨hclk s hi, condTrue_decClock.mpr hcond⟩
            have hpreμ : I (decClockHOLFinite s) ∧ CondTrue (decClockHOLFinite s) c ∧
                μ (decClockHOLFinite s) = μ s := ⟨hpre.1, hpre.2, hμclk s⟩
            have hctx := inCtx_eval hdecs body
            cases ho : (evaluateHOLFiniteState (decClockHOLFinite s) body).1 with
            | none =>
              simp only []
              intro hto
              have b1 := hbody _ hdecs hpre (by rw [ho]; simp [Good])
              have hI := hinv _ hdecs hpre (by rw [ho]; trivial)
              have hlt := hdec (μ s) _ hdecs hpreμ (by rw [ho]; trivial)
              rw [ho] at hI hlt
              have r1 := ih _ hctx (hI (Or.inl rfl)) (fun _ => by have := hlt (Or.inl rfl); omega) hto
              rw [Nat.succ_mul]; omega
            | some r =>
              cases r with
              | «continue» =>
                simp only []
                intro hto
                have b1 := hbody _ hdecs hpre (by rw [ho]; simp [Good])
                have hI := hinv _ hdecs hpre (by rw [ho]; trivial)
                have hlt := hdec (μ s) _ hdecs hpreμ (by rw [ho]; trivial)
                rw [ho] at hI hlt
                have r1 := ih _ hctx (hI (Or.inr rfl))
                  (fun _ => by have := hlt (Or.inr rfl); omega) hto
                rw [Nat.succ_mul]; omega
              | «break» =>
                simp only []
                intro _
                have b1 := hbody _ hdecs hpre (by rw [ho]; simp [Good])
                (try dsimp only); rw [Nat.succ_mul]; omega
              | _ =>
                simp only []
                intro hto
                have b1 := hbody _ hdecs hpre (by rw [ho]; exact hto)
                (try dsimp only); rw [Nat.succ_mul]; omega
        · intro _; (try dsimp only); omega
      · intro _; (try dsimp only); omega

/-- **Measure rule under an invariant.** `I` holds on entry, is kept by every completed
iteration (normal or `continue`), bounds the measure by `M` while the condition holds, and
every completed iteration lowers the measure. -/
theorem costP_while {I : PanSemStateFiniteExact width σ → Prop} {c : ExpHOL width}
    {body : ProgHOL width} {Bb : Nat} (μ : PanSemStateFiniteExact width σ → Nat) (M : Nat)
    (hclk : ∀ s, I s → I (decClockHOLFinite s))
    (hμclk : ∀ s, μ (decClockHOLFinite s) = μ s)
    (hbody : CostP σ X (fun s => I s ∧ CondTrue s c) body Bb)
    (hinv : Hoare σ X (fun s => I s ∧ CondTrue s c) body
      (fun r t => r = none ∨ r = some .continue → I t))
    (hM : ∀ s, InCtx s X → I s → CondTrue s c → μ s ≤ M)
    (hdec : ∀ k, Hoare σ X (fun s => I s ∧ CondTrue s c ∧ μ s = k) body
      (fun r t => r = none ∨ r = some .continue → μ t < k)) :
    CostP σ X I (.while c body) ((M + 1) * (Bb + 1)) := by
  intro s hs hi hg
  exact costP_while_aux μ hclk hμclk hbody hinv hdec (M + 1) s hs hi
    (fun h => by have := hM s hs hi h; omega) hg


end general
end AcceptedLoopRules
