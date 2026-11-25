import InitECandidate.Solver.Improvements.PreModexpGuardedCost
import InitECandidate.Solver.Improvements.TopBitFunction

set_option autoImplicit false
namespace ModexpDispatchPrice
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

theorem cost {σ : Type} : CalleeCost σ guestCtx (nm "pre_modexp") ModexpGuardedCost.prePrice := by
  apply PreModexpGuardedCost.callee_cost
  intro vs body cl sh hl s hs loc r hr p n args cap v hret
  obtain ⟨w,hw,how⟩ := TopBitFunction.funSpec_bounded (σ := σ) guestCtx_code vs body cl sh hl s hs loc r hr p n args cap v hret
  exact ⟨w, congrArg some hw, how⟩

#print axioms cost
end ModexpDispatchPrice
