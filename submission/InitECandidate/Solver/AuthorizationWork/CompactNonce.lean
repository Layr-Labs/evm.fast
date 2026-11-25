import InitECandidate.Solver.AuthorizationWork.CompactAccountPricesFast
import InitECandidate.Solver.Improvements.ThirdNamedCostReplay
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
namespace CompactNonce
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open AcceptedCostOverrideRules
private def entry : Entry := declPair Guest.Software.guestFn_increment_nonce
#eval CompactCostReplay.price CompactAccountPrices.writeTable entry.2.2
private theorem installed : Installed entry := by
  exact declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 398) (by decide)) ⟨_, rfl⟩

theorem nonce_cost {σ : Type} : CalleeCost σ guestCtx (nm "increment_nonce")
    179669089823624876965997082397258484355768 := by
  exact CompactCostReplay.callee_cost CompactAccountPrices.writeTable_sound installed (by decide_cbv)
#print axioms nonce_cost
end CompactNonce
