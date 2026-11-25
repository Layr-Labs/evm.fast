import InitECandidate.Solver.AuthorizationWork.CompactNonce
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
namespace CompactFrameAccounts
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
theorem destroy_storage_cost {σ : Type} : CalleeCost σ guestCtx (nm "destroy_storage") 4763953170485879405160648232122596721253 :=
  calleeCost_of_tbl (CompactAccountPrices.writeTable_sound (σ := σ)).1 (by decide_cbv)
#print axioms destroy_storage_cost
theorem get_account_cost {σ : Type} : CalleeCost σ guestCtx (nm "get_account") 174905136653138997560283031839007590910893 :=
  calleeCost_of_tbl (CompactAccountPrices.writeTable_sound (σ := σ)).1 (by decide_cbv)
#print axioms get_account_cost
private def moveEntry := declPair Guest.Software.guestFn_move_ether
#eval CompactCostReplay.price CompactAccountPrices.writeTable moveEntry.2.2
theorem move_ether_cost {σ : Type} : CalleeCost σ guestCtx (nm "move_ether") 359338179647249753931994164794516968711539 :=
  CompactCostReplay.callee_cost (p := moveEntry) CompactAccountPrices.writeTable_sound
    (declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 395) (by decide)) ⟨_, rfl⟩)
    (by decide_cbv)
#print axioms move_ether_cost
end CompactFrameAccounts
