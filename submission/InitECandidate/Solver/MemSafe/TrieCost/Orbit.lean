import InitECandidate.Solver.Spec.TrieWalk
import InitECandidate.Solver.Spec.Inv.CostI
set_option autoImplicit false
set_option maxHeartbeats 0
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
namespace InitECandidate.Solver.MemSafe.TrieCost
variable {width : Nat} [NeZero width] {σ : Type} {X : Ctx width}
theorem costP_while_doomed_start {c : ExpHOL width} {body : ProgHOL width} {Bb : Nat}
    (P : PanSemStateFiniteExact width σ → Prop)
    (μ : PanSemStateFiniteExact width σ → Nat) (M : Nat)
    (Doomed : PanSemStateFiniteExact width σ → Prop)
    (hbody : Cost σ X body Bb)
    (hM : ∀ s : PanSemStateFiniteExact width σ, InCtx s X → P s → CondTrue s c → ¬ Doomed s →
      μ s ≤ M)
    (hdec : ∀ s : PanSemStateFiniteExact width σ, InCtx s X → CondTrue s c → 0 < s.clock →
      ¬ Doomed s →
      ((evaluateHOLFiniteState (decClockHOLFinite s) body).1 = none ∨
        (evaluateHOLFiniteState (decClockHOLFinite s) body).1 = some .continue) →
      μ (evaluateHOLFiniteState (decClockHOLFinite s) body).2 < μ s)
    (hdoom : ∀ s : PanSemStateFiniteExact width σ, Doomed s → CondTrue s c ∧
      (Good (evaluateHOLFiniteState (decClockHOLFinite s) body).1 →
        ((evaluateHOLFiniteState (decClockHOLFinite s) body).1 = none ∨
          (evaluateHOLFiniteState (decClockHOLFinite s) body).1 = some .continue) ∧
        Doomed (evaluateHOLFiniteState (decClockHOLFinite s) body).2)) :
    Inv.CostP σ X P (.while c body) ((M + 1) * (Bb + 1)) := by
  -- Part 1: doomed states never give a good result.
  have never : ∀ k (s : PanSemStateFiniteExact width σ), s.clock = k → Doomed s →
      ¬ Good (evaluateHOLFiniteState s (.while c body)).1 := by
    intro k
    induction k using Nat.strongRecOn with
    | _ k ih =>
    intro s hk hd
    obtain ⟨⟨w, hw, hne⟩, hstep⟩ := hdoom s hd
    rw [evaluateHOLFiniteState_eq_evaluate_def s (.while c body)]
    dsimp only
    rw [hw]
    simp only [ne_eq, hne, not_false_eq_true, if_true]
    split
    · simp [Good]
    · have hlt : (evaluateHOLFiniteState (decClockHOLFinite s) body).2.clock < k := by
        have := evaluateHOLFiniteState_clock_le (decClockHOLFinite s) body
        simp only [decClockHOLFinite] at this ⊢
        omega
      by_cases hg : Good (evaluateHOLFiniteState (decClockHOLFinite s) body).1
      · obtain ⟨hex, hd'⟩ := hstep hg
        rcases hex with h | h
        · rw [h]; exact ih _ hlt _ rfl hd'
        · rw [h]; exact ih _ hlt _ rfl hd'
      · cases ho : (evaluateHOLFiniteState (decClockHOLFinite s) body).1 with
        | none => rw [ho] at hg; exact absurd good_none hg
        | some r =>
            rw [ho] at hg
            cases r with
            | «continue» => exact absurd (by simp [Good]) hg
            | «break» => exact absurd (by simp [Good]) hg
            | _ => simpa using hg
  -- Part 2: measure induction on non-doomed states.
  suffices H : ∀ n (s : PanSemStateFiniteExact width σ), InCtx s X →
      (CondTrue s c → ¬ Doomed s → μ s < n) →
      Good (evaluateHOLFiniteState s (.while c body)).1 →
      s.clock ≤ (evaluateHOLFiniteState s (.while c body)).2.clock + n * (Bb + 1) ∧
        InCtx (evaluateHOLFiniteState s (.while c body)).2 X by
    intro s hs hp hg
    exact (H (M + 1) s hs (fun h hd => by have := hM s hs hp h hd; omega) hg).1
  intro n
  induction n with
  | zero =>
      intro s hs hμ hg
      have hnd : ¬ Doomed s := fun hd => never _ s rfl hd hg
      revert hg
      rw [evaluateHOLFiniteState_eq_evaluate_def s (.while c body)]
      dsimp only
      split
      · rename_i w hw
        split
        · rename_i hne
          exact absurd (hμ ⟨w, hw, hne⟩ hnd) (Nat.not_lt_zero _)
        · intro _; exact ⟨by (try dsimp only); omega, hs⟩
      · intro _; exact ⟨by (try dsimp only); omega, hs⟩
  | succ n ih =>
      intro s hs hμ hg
      have hnd : ¬ Doomed s := fun hd => never _ s rfl hd hg
      revert hg
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
            have hpos : 0 < s.clock := Nat.pos_of_ne_zero hclock
            have hdecs : InCtx (decClockHOLFinite s) X := hs
            have hcl : (decClockHOLFinite s).clock + 1 = s.clock := by
              simp [decClockHOLFinite]; omega
            have hμs : μ s < n + 1 := hμ hcond hnd
            cases ho : (evaluateHOLFiniteState (decClockHOLFinite s) body).1 with
            | none =>
              simp only []
              intro hto
              obtain ⟨b1, b2⟩ := hbody _ hdecs (by rw [ho]; simp [Good])
              have hlt := hdec s hs hcond hpos hnd (Or.inl ho)
              obtain ⟨r1, r2⟩ := ih _ b2 (fun _ _ => by omega) hto
              exact ⟨by rw [Nat.succ_mul]; omega, r2⟩
            | some r =>
              cases r with
              | «continue» =>
                simp only []
                intro hto
                obtain ⟨b1, b2⟩ := hbody _ hdecs (by rw [ho]; simp [Good])
                have hlt := hdec s hs hcond hpos hnd (Or.inr ho)
                obtain ⟨r1, r2⟩ := ih _ b2 (fun _ _ => by omega) hto
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

#print axioms costP_while_doomed_start
end InitECandidate.Solver.MemSafe.TrieCost
