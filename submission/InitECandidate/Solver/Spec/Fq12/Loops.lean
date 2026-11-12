import InitECandidate.Solver.Spec.Inv.CostI
import InitECandidate.Solver.Spec.CostInv
import InitECandidate.Solver.Spec.Fq12.MemView

/-!
# Loop rules with doomed states

* `while_never`: from a *doomed* state `D` — the condition holds, the body (escape-free)
  completes normally and leads to a doomed state again — a `while` loop never yields a
  Good result.
* `costP_while_doom`: the measure rule under an invariant `I` where a completed iteration
  either lowers the measure or reaches a doomed state.
-/

namespace InitECandidate.Solver.Spec.Fq12
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

theorem while_never {c : ExpHOL 64} {body : ProgHOL 64} (D : PanSemStateFiniteExact 64 σ → Prop)
    (hc : ∀ s, InCtx s X → D s → CondTrue s c) (hclk : ∀ s, D s → D (decClockHOLFinite s))
    (hb : Hoare σ X (fun s => D s ∧ CondTrue s c) body (fun r t => r = none ∧ D t))
    (hesc : EscFree σ X.code body) :
    ∀ s, InCtx s X → D s → ¬ Good (evaluateHOLFiniteState s (.while c body)).1 := by
  suffices H : ∀ k (s : PanSemStateFiniteExact 64 σ), s.clock = k → InCtx s X → D s →
      ¬ Good (evaluateHOLFiniteState s (.while c body)).1 from
    fun s hs hd => H _ s rfl hs hd
  intro k
  induction k using Nat.strongRecOn with
  | _ k ih =>
  intro s hk hs hd
  obtain ⟨w, hw, hne⟩ := hc s hs hd
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.while c body)]
  dsimp only
  rw [hw]
  simp only [ne_eq, hne, not_false_eq_true, if_true]
  split
  · simp [Good]
  · rename_i hclock
    have hdecs : InCtx (decClockHOLFinite s) X := hs
    have hcond : CondTrue (decClockHOLFinite s) c := Inv.condTrue_decClock.mpr ⟨w, hw, hne⟩
    have hlt : (evaluateHOLFiniteState (decClockHOLFinite s) body).2.clock < k := by
      have := evaluateHOLFiniteState_clock_le (decClockHOLFinite s) body
      simp only [decClockHOLFinite] at this ⊢
      omega
    have hctx := inCtx_eval hdecs body
    have hpost := hb (decClockHOLFinite s) hdecs ⟨hclk s hd, hcond⟩
    have hnoesc := hesc (decClockHOLFinite s) hs.1
    cases ho : (evaluateHOLFiniteState (decClockHOLFinite s) body).1 with
    | none =>
        simp only []
        have := (hpost (by rw [ho]; trivial)).2
        exact ih _ hlt _ rfl hctx this
    | some r =>
        rw [ho] at hpost hnoesc
        cases r with
        | «continue» => exact absurd (hpost trivial).1 (by simp)
        | «break» => exact absurd (hpost trivial).1 (by simp)
        | returned v => exact absurd (hpost trivial).1 (by simp)
        | error => simp [Good]
        | timeOut => simp [Good]
        | exception e v => exact absurd rfl (hnoesc.1 e v)
        | finalFfi e => exact absurd rfl (hnoesc.2 e)

/-- **Measure rule with doomed states.** From an `I`-state, a loop whose body (of cost
`Bb` from every state) keeps `I` and either lowers `μ ≤ M` or reaches a doomed state on
every completed iteration runs at most `M + 1` iterations in a Good run. -/
theorem costP_while_doom {c : ExpHOL 64} {body : ProgHOL 64} {Bb : Nat}
    (I D : PanSemStateFiniteExact 64 σ → Prop) (μ : PanSemStateFiniteExact 64 σ → Nat) (M : Nat)
    (hbody : Cost σ X body Bb)
    (hclk : ∀ s, I s → I (decClockHOLFinite s) ∧ μ (decClockHOLFinite s) = μ s)
    (hM : ∀ s, InCtx s X → I s → CondTrue s c → μ s ≤ M)
    (hstep : ∀ k, Hoare σ X (fun s => I s ∧ CondTrue s c ∧ μ s = k) body
      (fun r t => r = none ∨ r = some .continue → I t ∧ (μ t < k ∨ D t)))
    (hdoom : ∀ s, InCtx s X → D s → ¬ Good (evaluateHOLFiniteState s (.while c body)).1) :
    Inv.CostP σ X I (.while c body) ((M + 1) * (Bb + 1)) := by
  suffices H : ∀ n (s : PanSemStateFiniteExact 64 σ), InCtx s X → I s →
      (CondTrue s c → μ s < n) → Good (evaluateHOLFiniteState s (.while c body)).1 →
      s.clock ≤ (evaluateHOLFiniteState s (.while c body)).2.clock + n * (Bb + 1) by
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
        · intro _; (try dsimp only); omega
      · intro _; (try dsimp only); omega
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
              ⟨hId, Inv.condTrue_decClock.mpr hcond, hμd⟩
            have hctx := inCtx_eval hdecs body
            cases ho : (evaluateHOLFiniteState (decClockHOLFinite s) body).1 with
            | none =>
              simp only []
              intro hto
              obtain ⟨b1, -⟩ := hbody _ hdecs (by rw [ho]; simp [Good])
              have := hst (by rw [ho]; trivial)
              rw [ho] at this
              obtain ⟨hIt, hlt⟩ := this (Or.inl rfl)
              rcases hlt with hlt | hD
              · have r1 := ih _ hctx hIt (fun _ => by omega) hto
                rw [Nat.succ_mul]; omega
              · exact absurd hto (hdoom _ hctx hD)
            | some r =>
              cases r with
              | «continue» =>
                simp only []
                intro hto
                obtain ⟨b1, -⟩ := hbody _ hdecs (by rw [ho]; simp [Good])
                have := hst (by rw [ho]; trivial)
                rw [ho] at this
                obtain ⟨hIt, hlt⟩ := this (Or.inr rfl)
                rcases hlt with hlt | hD
                · have r1 := ih _ hctx hIt (fun _ => by omega) hto
                  rw [Nat.succ_mul]; omega
                · exact absurd hto (hdoom _ hctx hD)
              | «break» =>
                simp only []
                intro _
                obtain ⟨b1, -⟩ := hbody _ hdecs (by rw [ho]; simp [Good])
                (try dsimp only); rw [Nat.succ_mul]; omega
              | _ =>
                simp only []
                intro hto
                obtain ⟨b1, -⟩ := hbody _ hdecs (by rw [ho]; exact hto)
                (try dsimp only); rw [Nat.succ_mul]; omega
        · intro _; (try dsimp only); omega
      · intro _; (try dsimp only); omega

end InitECandidate.Solver.Spec.Fq12
