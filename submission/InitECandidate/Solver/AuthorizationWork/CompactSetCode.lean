import InitECandidate.Solver.AuthorizationWork.CompactAccountPricesFast
import InitECandidate.Solver.Improvements.ThirdNamedCostReplay
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
namespace CompactSetCode
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open AcceptedCostOverrideRules
private def entry : Entry := declPair Guest.Software.guestFn_set_code
#eval CompactCostReplay.price CompactAccountPrices.writeTable entry.2.2
private theorem installed : Installed entry := by
  exact declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 399) (by decide)) ⟨_, rfl⟩

theorem set_code_cost {σ : Type} : CalleeCost σ guestCtx (nm "set_code")
    179669089823624876969428176797201843951269 := by
  exact CompactCostReplay.callee_cost CompactAccountPrices.writeTable_sound installed (by decide_cbv)
#print axioms set_code_cost
end CompactSetCode
