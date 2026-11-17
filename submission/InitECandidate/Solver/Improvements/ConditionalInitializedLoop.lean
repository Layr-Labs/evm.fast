import InitECandidate.Solver.Improvements.AcceptedInitializedLoopCost

/-! The accepted initialized signed-loop improvement with a conditional body
cost and an independently preserved source-state invariant. -/
set_option autoImplicit false

namespace ConditionalInitializedLoop
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open AcceptedInitializedLoopCost

variable {σ : Type} {X : Ctx 64}

theorem costP_while_inc_less_nonnegative
    {I : PanSemStateFiniteExact 64 σ → Prop} {i : MlS} {E : ExpHOL 64}
    {body : ProgHOL 64} {B : Nat}
    (hclk : ∀ s, I s → I (decClockHOLFinite s))
    (hbody : AcceptedLoopRules.CostP σ X
      (fun s => I s ∧ CondTrue s (.cmp .less (.var .local i) E)) body B)
    (hinv : Hoare σ X (fun s => I s ∧ CondTrue s (.cmp .less (.var .local i) E)) body
      (fun r t => r = none → I t))
    (hnc : NoCont σ body) (hs : Steps σ i (· + 1) body) :
    AcceptedLoopRules.CostP σ X (fun s => I s ∧ Nonneg i s)
      (.while (.cmp .less (.var .local i) E) body) (2 ^ 63 * (B + 1)) := by
  let μ : PanSemStateFiniteExact 64 σ → Nat := fun s => 2 ^ 63 - 1 - wordOf s i
  have bound : AcceptedLoopRules.CostP σ X (fun s => I s ∧ Nonneg i s)
      (.while (.cmp .less (.var .local i) E) body)
      ((2 ^ 63 - 1 + 1) * (B + 1)) := by
    refine AcceptedLoopRules.costP_while μ (2 ^ 63 - 1) ?_ (fun _ => rfl)
      (hbody.pre (fun _ _ hp => ⟨hp.1.1, hp.2⟩)) ?_ ?_ ?_
    · rintro s ⟨hi, v, hv, hn⟩
      exact ⟨hclk s hi, v, hv, hn⟩
    · rintro s hctx ⟨⟨hi, hn⟩, hc⟩ tracked exit
      have hnormal : (evaluateHOLFiniteState s body).1 = none :=
        exit.elim id (fun h => False.elim (hnc s h))
      obtain ⟨v, hv, inc, small, lt⟩ := guard_successor hn hc
      exact ⟨hinv s hctx ⟨hi, hc⟩ tracked hnormal,
        v + 1, hs s v hv exit, small⟩
    · intro s hctx hp hc
      exact Nat.sub_le _ _
    · rintro k s hctx ⟨⟨hi, hn⟩, hc, rank⟩ tracked exit
      obtain ⟨v, hv, inc, small, lt⟩ := guard_successor hn hc
      have after := hs s v hv exit
      change 2 ^ 63 - 1 - wordOf (evaluateHOLFiniteState s body).2 i < k
      simp only [wordOf, after, inc]
      change 2 ^ 63 - 1 - wordOf s i = k at rank
      simp only [wordOf, hv] at rank
      omega
  simpa only [show (2 : Nat) ^ 63 - 1 + 1 = 2 ^ 63 by decide] using bound

#print axioms costP_while_inc_less_nonnegative
end ConditionalInitializedLoop
