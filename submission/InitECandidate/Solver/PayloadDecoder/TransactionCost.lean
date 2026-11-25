import InitECandidate.Solver.PayloadDecoder.InstalledListCosts

/-! Propagate three certified list prices through the actual RLP transaction
decoder and its exception-handling caller. -/
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
namespace PayloadDecoder
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open AcceptedCostOverrideRules

def listTable : TblState :=
  overrideCost (overrideCost (overrideCost priceTable
    (nm "decode_access_list") 40916734652027601537704079678323622657)
    (nm "decode_authorizations") 19509452782756718245277578918046)
    (nm "decode_blob_hashes") 2601415185523254317924787177132

theorem listTable_sound {σ : Type} : StateSound σ guestCtx listTable :=
  overrideCost_sound (overrideCost_sound (overrideCost_sound prices_sound accessCost) authorizationCost) blobCost

def rlpPrice : Nat := 40916756762898298238700568878083590890

theorem rlpCost {σ : Type} : CalleeCost σ guestCtx (nm "decode_transaction_rlp") rlpPrice :=
  CompactCostReplay.callee_cost (p := declPair Guest.Software.guestFn_decode_transaction_rlp)
    listTable_sound (declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 306) (by decide)) ⟨_,rfl⟩)
    (by decide_cbv)

def transactionPrice : Nat := 40916756762898298238700568878083590891

theorem transactionCost {σ : Type} : CalleeCost σ guestCtx (nm "decode_transaction") transactionPrice :=
  CompactCostReplay.callee_cost (p := declPair Guest.Software.guestFn_decode_transaction)
    (overrideCost_sound listTable_sound rlpCost)
    (declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 307) (by decide)) ⟨_,rfl⟩)
    (by decide_cbv)

#print axioms transactionCost
end PayloadDecoder
