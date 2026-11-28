import InitECandidate.Solver.Improvements.FixedTrieBranch
import InitECandidate.Solver.Improvements.BoundedEqual
import InitECandidate.Solver.Improvements.CommonPrefixAddress
import InitECandidate.Solver.Improvements.TightTrieInsert
import InitECandidate.Solver.Improvements.ThirdNamedCostReplay

/-! Propagate the memory-domain bounds through the actual trie constructors. -/
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false
namespace CompactTrieCalls
open Flapjack InitECandidate.Solver.Spec InitECandidate.Solver.SourceCost
open AcceptedCostOverrideRules
variable {σ : Type}

abbrev slots : Nat := 2^35 + alignSlack 64 + 1
abbrev branchPrice : Nat := 708
abbrev createPrice := branchPrice + 9
abbrev splitPrice := branchPrice + 10
abbrev leafPrice := BoundedEqual.price + CommonPrefixAddress.price + createPrice + 7

theorem branch_cost : CalleeCost σ guestCtx (nm "node_new_branch") branchPrice :=
  FixedTrieBranch.branchCost

private def createRows : TblState := ([(nm "node_new_leaf", 3), (nm "node_new_branch", branchPrice)], [], [])
private theorem createRows_sound : StateSound σ guestCtx createRows := (overrideCost_sound (overrideCost_sound stateSound_empty branch_cost) (CompactCostReplay.accepted (f := nm "node_new_leaf") (B := 3) (by decide_cbv)))
private def createEntry := declPair Guest.Software.guestFn__create_branch_from_two_leaves
#eval CompactCostReplay.price createRows createEntry.2.2
theorem create_cost : CalleeCost σ guestCtx (nm "_create_branch_from_two_leaves") createPrice :=
  CompactCostReplay.callee_cost (p := createEntry) createRows_sound
    (declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 272) (by decide)) ⟨_,rfl⟩)
    (by decide_cbv)

private def splitRows : TblState := ([(nm "node_new_leaf", 3), (nm "mpt_fail", 0), (nm "node_new_ext", 3), (nm "node_new_branch", branchPrice)], [], [])
private theorem splitRows_sound : StateSound σ guestCtx splitRows := (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound stateSound_empty branch_cost) (CompactCostReplay.accepted (f := nm "node_new_ext") (B := 3) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "mpt_fail") (B := 0) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "node_new_leaf") (B := 3) (by decide_cbv)))
private def splitEntry := declPair Guest.Software.guestFn__split_extension
#eval CompactCostReplay.price splitRows splitEntry.2.2
theorem split_cost : CalleeCost σ guestCtx (nm "_split_extension") splitPrice :=
  CompactCostReplay.callee_cost (p := splitEntry) splitRows_sound
    (declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 274) (by decide)) ⟨_,rfl⟩)
    (by decide_cbv)

private def leafRows : TblState := ([(nm "_create_branch_from_two_leaves", createPrice), (nm "common_prefix_length", CommonPrefixAddress.price), (nm "memeq", BoundedEqual.price), (nm "node_new_ext", 3)], [], [])
private theorem leafRows_sound : StateSound σ guestCtx leafRows := (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound stateSound_empty (CompactCostReplay.accepted (f := nm "node_new_ext") (B := 3) (by decide_cbv))) BoundedEqual.callee_cost) CommonPrefixAddress.calleeCost) create_cost)
private def leafEntry := declPair Guest.Software.guestFn__insert_into_leaf
#eval CompactCostReplay.price leafRows leafEntry.2.2
theorem leaf_cost : CalleeCost σ guestCtx (nm "_insert_into_leaf") leafPrice :=
  CompactCostReplay.callee_cost (p := leafEntry) leafRows_sound
    (declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 273) (by decide)) ⟨_,rfl⟩)
    (by decide_cbv)

abbrev price := (Mpt.insMb + 1) * (TightTrieInsert.stepPrice 3 0 0 leafPrice CommonPrefixAddress.price splitPrice 3 + 1)
theorem callee_cost : CalleeCost σ guestCtx (nm "_mpt_insert_node") price := by
  apply TightTrieInsert.from_callees guestCtx_code
    (CompactCostReplay.accepted (by decide_cbv)) (CompactCostReplay.accepted (by decide_cbv))
    (CompactCostReplay.accepted (by decide_cbv)) leaf_cost CommonPrefixAddress.calleeCost split_cost
    (CompactCostReplay.accepted (by decide_cbv))
  all_goals exact calleeEscFree_of_ef (Shards.finalState_sound_guest (σ := σ)).2.1 (by decide_cbv)
#print axioms callee_cost
end CompactTrieCalls
