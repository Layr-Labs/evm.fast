import InitECandidate.Solver.Improvements.AcceptedLoopRules

/-!
# An exact-slot conditional while rule

Adapted from the accepted f2f17565 `Solver/Spec/Inv/CostI.lean` rule, via
`AcceptedLoopRules`, Apache-2.0. Modification: a positive measure whenever the
condition is true allows a measure bounded by `M` to charge `M` slots, rather
than `M+1`. Every continuing body execution must still strictly lower the
measure. This is a generic conditional rule, not a payload-bound assumption.
The existing accepted rule and its proofs are preserved unchanged.
-/
set_option autoImplicit false

namespace AcceptedExactWhileCost
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open AcceptedLoopRules

variable {width : Nat} [NeZero width] {σ : Type} {X : Ctx width}

/-- Induction on the number of slots. At zero, guard positivity rules out
entering the body; at a successor, every continuing body run leaves a measure
bounded by the predecessor. Terminal results use the body bound directly. -/
theorem costP_while_aux_exact {I : PanSemStateFiniteExact width σ → Prop} {c : ExpHOL width}
    {body : ProgHOL width} {Bb : Nat} (μ : PanSemStateFiniteExact width σ → Nat)
    (hclk : ∀ s, I s → I (decClockHOLFinite s))
    (hμclk : ∀ s, μ (decClockHOLFinite s) = μ s)
    (hpos : ∀ s, InCtx s X → I s → CondTrue s c → 0 < μ s)
    (hbody : CostP σ X (fun s => I s ∧ CondTrue s c) body Bb)
    (hinv : Hoare σ X (fun s => I s ∧ CondTrue s c) body
      (fun r t => r = none ∨ r = some .continue → I t))
    (hdec : ∀ k, Hoare σ X (fun s => I s ∧ CondTrue s c ∧ μ s = k) body
      (fun r t => r = none ∨ r = some .continue → μ t < k)) :
    ∀ n (s : PanSemStateFiniteExact width σ), InCtx s X → I s → (CondTrue s c → μ s ≤ n) →
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
          have hle := hμ ⟨w, hw, hne⟩
          have hpositive := hpos s hs hi ⟨w, hw, hne⟩
          omega
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
            have hμs : μ s ≤ n + 1 := hμ hcond
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

/-- Exact-slot measure rule. The extra positivity premise is essential:
`μ≤M` and strict decrease alone do not exclude a terminal body execution from
measure zero. The caller must prove positivity from its actual true guard. -/
theorem costP_while_exact {I : PanSemStateFiniteExact width σ → Prop} {c : ExpHOL width}
    {body : ProgHOL width} {Bb : Nat} (μ : PanSemStateFiniteExact width σ → Nat) (M : Nat)
    (hclk : ∀ s, I s → I (decClockHOLFinite s))
    (hμclk : ∀ s, μ (decClockHOLFinite s) = μ s)
    (hbody : CostP σ X (fun s => I s ∧ CondTrue s c) body Bb)
    (hinv : Hoare σ X (fun s => I s ∧ CondTrue s c) body
      (fun r t => r = none ∨ r = some .continue → I t))
    (hM : ∀ s, InCtx s X → I s → CondTrue s c → μ s ≤ M)
    (hpos : ∀ s, InCtx s X → I s → CondTrue s c → 0 < μ s)
    (hdec : ∀ k, Hoare σ X (fun s => I s ∧ CondTrue s c ∧ μ s = k) body
      (fun r t => r = none ∨ r = some .continue → μ t < k)) :
    CostP σ X I (.while c body) (M * (Bb + 1)) := by
  intro s hs hi hg
  exact costP_while_aux_exact μ hclk hμclk hpos hbody hinv hdec M s hs hi
    (fun hc => hM s hs hi hc) hg

#print axioms costP_while_exact
end AcceptedExactWhileCost
