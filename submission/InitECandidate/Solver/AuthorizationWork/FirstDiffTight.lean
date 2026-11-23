import InitECandidate.Solver.AuthorizationWork.InitializedSignedCounter
import InitECandidate.Solver.Spec.Inv.FirstDiff
import InitECandidate.Solver.Improvements.AcceptedExactWhileCost
import InitECandidate.Solver.SourceCost.CounterLoops
import InitECandidate.Solver.SourceCost.Checkers
import InitECandidate.Solver.SourceCost.Table

set_option autoImplicit false
set_option maxRecDepth 100000

namespace FirstDiffTight
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.Spec.Inv

abbrev price : Nat := (2 ^ 64 + 1) * 9

private theorem initializedInner {σ : Type} {X : Ctx 64} :
    Cost σ X (.dec (nm "j") .one (cw 0) fdJLoop) 8 := by
  have hb : Cost σ X fdInner 0 := by
    unfold fdInner
    exact cost_seq (cost_ite (cost_return _) cost_skip) (cost_assign _ _ _)
  exact InitializedSignedCounter.initialized_cost (by decide) hb
    (stepsB_sound _ true fdInner (by decide))

theorem outerIteration {σ : Type} {X : Ctx 64} : Cost σ X fdOuter 8 := by
  unfold fdOuter incI
  exact cost_dec (cost_seq (cost_ite initializedInner cost_skip) (cost_assign _ _ _))

theorem bodyCost {σ : Type} {X : Ctx 64} : Cost σ X fdBody price := by
  have hStep : Steps σ (nm "i") (· + 1) fdOuter := stepsB_sound _ true fdOuter (by decide)
  have hLoop := cost_while_inc_lower (E := lv (nm "key_len")) (outerIteration (σ := σ) (X := X)) hStep
  unfold fdBody
  exact cost_dec ((cost_seq hLoop (cost_return _)).mono (by simp [price]))

theorem calleeCost {σ : Type} : CalleeCost σ guestCtx (nm "htab_first_diff") price := by
  intro values body callee shape hLookup
  obtain ⟨params, hCode⟩ := lookupCode_some hLookup
  rw [guestCtx_code, code_first_diff] at hCode
  have hBody : body = fdBody := (congrArg (fun row => row.2.1) (Option.some.inj hCode)).symm
  rw [hBody]
  exact bodyCost

#print axioms calleeCost

end FirstDiffTight
