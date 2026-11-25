import InitECandidate.Solver.AuthorizationWork.CompactHtabPrices
import InitECandidate.Solver.Spec.StateRestore
import InitECandidate.Solver.Improvements.ThirdNamedCostReplay

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace CompactChildEffects
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open AcceptedCostOverrideRules

abbrev restorePrice : Nat := 2^64 * (110680466263323443733 + 92233720368547758087 + 2)

theorem restore_cost {σ : Type} : CalleeCost σ guestCtx (nm "state_restore") restorePrice :=
  state_restore_cost guestCtx_code CompactHtabPrices.set_cost
    (CompactCostReplay.accepted (by decide_cbv))

private def unionRows : TblState :=
  ([(nm "htab_item", 0), (nm "htab_set", 110680466263323443733)], [], [])

private theorem unionRows_sound {σ : Type} : StateSound σ guestCtx unionRows :=
  overrideCost_sound (overrideCost_sound stateSound_empty CompactHtabPrices.set_cost)
    (CompactCostReplay.accepted (f := nm "htab_item") (B := 0) (by decide_cbv))

abbrev unionPrice : Nat := 2041694235118371696826462074024887321112
private def unionEntry := declPair Guest.Software.guestFn_htab_union_into
#eval CompactCostReplay.price unionRows unionEntry.2.2

theorem union_cost {σ : Type} : CalleeCost σ guestCtx (nm "htab_union_into") unionPrice :=
  CompactCostReplay.callee_cost (p := unionEntry) unionRows_sound
    (declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 400) (by decide)) ⟨_, rfl⟩)
    (by decide_cbv)

abbrev successPrice : Nat := 6277101735386680783572166704622097300169369400258343207030 -
  6277101735386680782211037236938343446039169809425627086953 + unionPrice
private def successRows : TblState :=
  ([(nm "htab_union_into", unionPrice), (nm "log_append", 73786976294838206473),
    (nm "incorporate_child_on_error", 0)], [], [])

private theorem successRows_sound {σ : Type} : StateSound σ guestCtx successRows :=
  overrideCost_sound (overrideCost_sound (overrideCost_sound stateSound_empty
    (CompactCostReplay.accepted (f := nm "incorporate_child_on_error") (B := 0) (by decide_cbv)))
    (CompactCostReplay.accepted (f := nm "log_append") (B := 73786976294838206473) (by decide_cbv))) union_cost

private def successEntry := declPair Guest.Software.guestFn_incorporate_child_on_success
#eval CompactCostReplay.price successRows successEntry.2.2

theorem success_cost {σ : Type} : CalleeCost σ guestCtx (nm "incorporate_child_on_success") successPrice :=
  CompactCostReplay.callee_cost (p := successEntry) successRows_sound
    (declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 592) (by decide)) ⟨_, rfl⟩)
    (by decide_cbv)

#print axioms restore_cost
#print axioms union_cost
#print axioms success_cost
end CompactChildEffects
