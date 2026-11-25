import InitECandidate.Solver.Improvements.CompactCostReplay
import InitECandidate.Solver.AuthorizationWork.FirstDiffAddress
import InitECandidate.Solver.Improvements.BoundedCopyCosts
import InitECandidate.Solver.SourceCost.Shard

set_option autoImplicit false
set_option maxRecDepth 100000

namespace CompactHtabPrices
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open AcceptedCostOverrideRules

private def base : TblState :=
  ([(nm "alloc", 2), (nm "memcpy", BoundedCopyCosts.copyPrice),
    (nm "htab_first_diff", FirstDiffAddress.price), (nm "htab_find_leaf", 18446744073709551617),
    (nm "memeq", 73786976294838206468)], [], [])

private theorem base_sound {σ : Type} : StateSound σ guestCtx base := by
  unfold base
  exact overrideCost_sound
    (overrideCost_sound
      (overrideCost_sound
        (overrideCost_sound
          (overrideCost_sound stateSound_empty (CompactCostReplay.accepted (f := nm "memeq") (B := 73786976294838206468) (by decide_cbv)))
          (CompactCostReplay.accepted (f := nm "htab_find_leaf") (B := 18446744073709551617) (by decide_cbv)))
        FirstDiffAddress.calleeCost)
      BoundedCopyCosts.memcpy_cost)
    (CompactCostReplay.accepted (f := nm "alloc") (B := 2) (by decide_cbv))

theorem grow_cost {σ : Type} : CalleeCost σ guestCtx (nm "htab_grow") 412316860536 :=
  CompactCostReplay.callee_cost (p := declPair Guest.Software.guestFn_htab_grow) base_sound
    (declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 137) (by decide)) ⟨_, rfl⟩)
    (by decide_cbv)

def growTable : TblState := overrideCost base (nm "htab_grow") 412316860536

theorem growTable_sound {σ : Type} : StateSound σ guestCtx growTable :=
  overrideCost_sound base_sound grow_cost

theorem node_cost {σ : Type} : CalleeCost σ guestCtx (nm "htab_new_node") 412316860537 :=
  CompactCostReplay.callee_cost (p := declPair Guest.Software.guestFn_htab_new_node) growTable_sound
    (declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 134) (by decide)) ⟨_, rfl⟩)
    (by decide_cbv)

def nodeTable : TblState := overrideCost growTable (nm "htab_new_node") 412316860537

theorem nodeTable_sound {σ : Type} : StateSound σ guestCtx nodeTable :=
  overrideCost_sound growTable_sound node_cost

theorem leaf_cost {σ : Type} : CalleeCost σ guestCtx (nm "htab_new_leaf") 549755814047 :=
  CompactCostReplay.callee_cost (p := declPair Guest.Software.guestFn_htab_new_leaf) nodeTable_sound
    (declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 135) (by decide)) ⟨_, rfl⟩)
    (by decide_cbv)

def leafTable : TblState := overrideCost nodeTable (nm "htab_new_leaf") 549755814047

theorem leafTable_sound {σ : Type} : StateSound σ guestCtx leafTable :=
  overrideCost_sound nodeTable_sound leaf_cost

theorem internal_cost {σ : Type} : CalleeCost σ guestCtx (nm "htab_new_internal") 412316860538 :=
  CompactCostReplay.callee_cost (p := declPair Guest.Software.guestFn_htab_new_internal) leafTable_sound
    (declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 136) (by decide)) ⟨_, rfl⟩)
    (by decide_cbv)

def internalTable : TblState := overrideCost leafTable (nm "htab_new_internal") 412316860538

theorem internalTable_sound {σ : Type} : StateSound σ guestCtx internalTable :=
  overrideCost_sound leafTable_sound internal_cost

theorem set_cost {σ : Type} : CalleeCost σ guestCtx (nm "htab_set") 110680466263323443733 :=
  CompactCostReplay.callee_cost (p := declPair Guest.Software.guestFn_htab_set) internalTable_sound
    (declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 138) (by decide)) ⟨_, rfl⟩)
    (by decide_cbv)

def setTable : TblState := overrideCost internalTable (nm "htab_set") 110680466263323443733

theorem setTable_sound {σ : Type} : StateSound σ guestCtx setTable :=
  overrideCost_sound internalTable_sound set_cost

#print axioms set_cost
#print axioms setTable_sound

end CompactHtabPrices
