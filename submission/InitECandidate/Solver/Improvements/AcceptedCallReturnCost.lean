import InitECandidate.Solver.Improvements.AcceptedIvvhCalleeCore

/-! Return-aware conditional call cost, adapted from accepted
Spec/Fq12/JLoop.costP_decCallS (Apache-2.0). The new version asks only for the
pure return specification already supplied by Spec.Hoare, allowing a small
component replay. Full callee-cost and return facts remain explicit premises. -/
set_option autoImplicit false
set_option maxRecDepth 100000
namespace AcceptedCallReturnCost
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
variable {σ : Type} {X : Ctx 64}

theorem costP_decCallRet {P : PanSemStateFiniteExact 64 σ → Prop} {rn f : MlS} {sh : ShapeHOL}
    {args : List (ExpHOL 64)} {k : ProgHOL 64} {Bf Bk : Nat}
    {R : List (ValueHOL 64) → ValueHOL 64 → Prop}
    (hf : AcceptedIvvhCalleeCore.CalleeBound σ X f Bf) (hR : FunRet σ X f R)
    (hk : ∀ s, InCtx s X → P s → ∀ vs, evs s args = some vs →
      ∀ (callee : HolFiniteMapExact MlS (ValueHOL 64)) v st,
      R vs v → InCtx st X →
      shapeEqHOL (shapeOfHOLExact v) sh = true →
      AcceptedLoopRules.CostP σ X (fun t => t = setVarHOLFinite rn v { st with locals := s.locals }) k Bk) :
    AcceptedLoopRules.CostP σ X P (.decCall rn sh f args k) (1 + Bf + Bk) := by
  intro s hs hp hto
  revert hto
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.decCall rn sh f args k)]
  dsimp only
  split
  · intro _; (try dsimp only); omega
  · rename_i values hvals
    rw [hs.1]
    split
    · intro _; (try dsimp only); omega
    · rename_i body callee rs hlook
      split
      · intro h; exact absurd rfl h.1
      · rename_i hclock
        have hb : ∀ r st, evaluateHOLFiniteState (callEntryStateHOLFinite s callee) body = (r, st) →
            Good r → s.clock ≤ st.clock + 1 + Bf ∧ InCtx st X := by
          intro r st heq hr
          have := hf values body callee rs hlook (callEntryStateHOLFinite s callee)
            (by exact hs) (by rw [heq]; exact hr)
          rw [heq] at this
          simp only [callEntryStateHOLFinite] at this
          exact ⟨by omega, this.2⟩
        have hspec := hR values body callee rs hlook _ (entry_inCtx hs callee) rfl
        cases ho : evaluateHOLFiniteState (callEntryStateHOLFinite s callee) body with
        | mk r st =>
          rw [ho] at hspec
          dsimp only at hspec ⊢
          cases r with
          | none =>
            intro _
            obtain ⟨h1, h2⟩ := hb _ _ ho (by simp [Good])
            (try dsimp only); omega
          | some r =>
            cases r with
            | returned v =>
              dsimp only
              split
              · rename_i hsh
                simp only [Bool.and_eq_true] at hsh
                intro hto
                obtain ⟨h1, h2⟩ := hb _ _ ho (by simp [Good])
                have g1 := hk s hs hp values hvals callee v st (hspec (by simp) _ rfl) h2 hsh.1
                  (setVarHOLFinite rn v { st with locals := s.locals }) h2 rfl hto
                simp only [setVarHOLFinite] at g1 ⊢
                omega
              · intro _
                obtain ⟨h1, h2⟩ := hb _ _ ho (by simp [Good])
                (try dsimp only); omega
            | _ =>
              dsimp only
              intro hto
              obtain ⟨h1, h2⟩ := hb _ _ ho (by simp_all [Good])
              (try simp only [emptyLocalsHOLFinite]); omega


#print axioms costP_decCallRet
end AcceptedCallReturnCost
