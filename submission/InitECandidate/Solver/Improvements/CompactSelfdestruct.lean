import InitECandidate.Solver.Improvements.CompactFrameAccounts
import InitECandidate.Solver.AuthorizationWork.CompactHtabPrices
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
namespace CompactSelfdestruct
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open AcceptedCostOverrideRules
private def rows : TblState := ([(nm "warm_address", 340282366920938464441052043338374447207),
    (nm "u256_is_zero", 0),
    (nm "to_address_masked", 9),
    (nm "stack_pop", 0),
    (nm "require_not_static", 0),
    (nm "move_ether", 359338179647249753931994164794516968711539),
    (nm "memeq", 73786976294838206468),
    (nm "is_warm_address", 92233720368547758088),
    (nm "is_account_alive", 1134841694253040196989108150891922996633160),
    (nm "htab_set", 110680466263323443733),
    (nm "htab_has", 92233720368547758087),
    (nm "get_account", 174905136653138997560283031839007590910893),
    (nm "emit_transfer_log", 442721857769029238850),
    (nm "charge_state_gas", 1),
    (nm "charge_gas", 0)], [], [])
private theorem sound {σ : Type} : StateSound σ guestCtx rows := by
  unfold rows
  exact (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound stateSound_empty (CompactCostReplay.accepted (f := nm "charge_gas") (B := 0) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "charge_state_gas") (B := 1) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "emit_transfer_log") (B := 442721857769029238850) (by decide_cbv))) CompactFrameAccounts.get_account_cost) (CompactCostReplay.accepted (f := nm "htab_has") (B := 92233720368547758087) (by decide_cbv))) CompactHtabPrices.set_cost) (CompactCostReplay.accepted (f := nm "is_account_alive") (B := 1134841694253040196989108150891922996633160) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "is_warm_address") (B := 92233720368547758088) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "memeq") (B := 73786976294838206468) (by decide_cbv))) CompactFrameAccounts.move_ether_cost) (CompactCostReplay.accepted (f := nm "require_not_static") (B := 0) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "stack_pop") (B := 0) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "to_address_masked") (B := 9) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "u256_is_zero") (B := 0) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "warm_address") (B := 340282366920938464441052043338374447207) (by decide_cbv)))
private def entry := declPair Guest.Software.guestFn_op_selfdestruct
#eval CompactCostReplay.price rows entry.2.2
theorem cost {σ : Type} : CalleeCost σ guestCtx (nm "op_selfdestruct") 1844330429573488884506921088148857808018945 :=
  CompactCostReplay.callee_cost (p := entry) sound
    (declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 570) (by decide)) ⟨_,rfl⟩)
    (by decide_cbv)
#print axioms cost
end CompactSelfdestruct
