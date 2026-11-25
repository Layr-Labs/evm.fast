import InitECandidate.Solver.Improvements.BoundedCountdown
import InitECandidate.Solver.Improvements.CompactCostReplay

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace Div64Bound
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open AcceptedCostOverrideRules

private def installed : ProgHOL 64 := (declPair Guest.Software.guestFn_div64by32).2.2

theorem body {σ : Type} : Cost σ guestCtx installed 32 := by
  conv => arg 3; cbv
  refine cost_dec (cost_dec ?_)
  refine BoundedCountdown.initialized_cost (i := nm "i") (B := 0) (Bt := 0) 32
    (nonzeroVar_sound (by decide_cbv)) (stepsB_sound (nm "i") false _ (by decide_cbv)) ?_ (cost_return _)
  exact CompactCostReplay.program_cost (st := ([],[],[])) stateSound_empty (by decide_cbv)

theorem callee {σ : Type} : CalleeCost σ guestCtx (nm "div64by32") 32 := by
  intro vs actual store result lookup
  rw [guestCtx_code] at lookup
  obtain ⟨ret,hc⟩ := declPair_valid (d := Guest.Software.guestFn_div64by32)
    (List.getElem_mem (l := Guest.Software.guestAst) (n := 63) (by decide)) ⟨_,rfl⟩
  have hname : (declPair Guest.Software.guestFn_div64by32).1 = nm "div64by32" := rfl
  rw [hname] at hc
  obtain ⟨params,hCode⟩ := lookupCode_some lookup
  rw [hc] at hCode
  have hbody : actual = installed := (congrArg (fun row => row.2.1) (Option.some.inj hCode)).symm
  rw [hbody]
  exact body

#print axioms callee
end Div64Bound
