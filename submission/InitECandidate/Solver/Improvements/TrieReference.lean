import InitECandidate.Solver.AuthorizationWork.CompactAccountPricesFast
import InitECandidate.Solver.Improvements.CompactCostReplay

/-! Reuse the compact Keccak bound for the two reference helpers used by the RLP finisher. -/
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace TrieReference
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open AcceptedCostOverrideRules

abbrev hashPrice := 3154393236879211233689
theorem hashCost {σ : Type} : CalleeCost σ guestCtx (nm "keccak256") hashPrice :=
  calleeCost_of_tbl (CompactAccountPrices.hashAndReadTable_sound (σ := σ)).1 (by decide_cbv)

private def hashTable : TblState :=
  ([(nm "keccak256", hashPrice), (nm "alloc", 2), (nm "mpt_fail", 0)], [], [])
private theorem hashTable_sound {σ : Type} : StateSound σ guestCtx hashTable :=
  overrideCost_sound (overrideCost_sound (overrideCost_sound stateSound_empty
    (CompactCostReplay.accepted (f := nm "mpt_fail") (B := 0) (by decide_cbv)))
    (CompactCostReplay.accepted (f := nm "alloc") (B := 2) (by decide_cbv))) hashCost

abbrev cachedPrice := 3154393236879211233694
theorem cachedCost {σ : Type} : CalleeCost σ guestCtx (nm "node_hash_cached") cachedPrice :=
  CompactCostReplay.callee_cost (p := declPair Guest.Software.guestFn_node_hash_cached) hashTable_sound
    (declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 288) (by decide)) ⟨_,rfl⟩)
    (by decide_cbv)

private def writeTable : TblState :=
  ([(nm "node_hash_cached", cachedPrice), (nm "memcpy", 73786976294838206468),
    (nm "mpt_fail", 0)], [], [])
private theorem writeTable_sound {σ : Type} : StateSound σ guestCtx writeTable :=
  overrideCost_sound (overrideCost_sound (overrideCost_sound stateSound_empty
    (CompactCostReplay.accepted (f := nm "mpt_fail") (B := 0) (by decide_cbv)))
    (CompactCostReplay.accepted (f := nm "memcpy") (B := 73786976294838206468) (by decide_cbv))) cachedCost

abbrev writePrice := 3375754165763725853103
theorem writeCost {σ : Type} : CalleeCost σ guestCtx (nm "node_write_ref") writePrice :=
  CompactCostReplay.callee_cost (p := declPair Guest.Software.guestFn_node_write_ref) writeTable_sound
    (declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 289) (by decide)) ⟨_,rfl⟩)
    (by decide_cbv)

#print axioms hashCost
#print axioms writeCost
end TrieReference
