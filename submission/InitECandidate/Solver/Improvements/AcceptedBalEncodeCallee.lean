import InitECandidate.Solver.Improvements.BoundedCopySortCost
import InitECandidate.Solver.SortAddr.Final
import InitECandidate.Solver.Improvements.AcceptedBalEncodeIdentity
import InitECandidate.Solver.SourceCost.Shards.All
import InitECandidate.Solver.Spec.Bridge
import InitECandidate.Solver.Spec.Code

/-! Concrete table/guest-entry binding for the checked encoder proof.
This bridge requires the complete accepted table closure and is not locally
replayed on the current host. No new callee assumptions are exported. -/
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace AcceptedBalEncodeCallee
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open AcceptedBalEncodeCore

theorem entry_encode : fnEntry Guest.Software.guestFn_bal_encode_account =
    (AcceptedIvvhCalleeCore.nm "bal_encode_account", balParams, balBody, .one) :=
  AcceptedBalEncodeIdentity.actual_entry

theorem code_encode : guestCode (AcceptedIvvhCalleeCore.nm "bal_encode_account") =
    some (balParams, balBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 432) (by decide))
    ⟨_, rfl⟩ entry_encode

theorem accepted_callees {σ : Type} : CalleeCosts σ guestCtx where
  htab_get := calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 (by rfl)
  sort_elems := fun _ _ _ _ _ h1 h2 => InitECandidate.Solver.SortAddr.sortCall_cost h1 h2
  u256_from_be := calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 (by rfl)
  rlp_put_u256 := calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 (by rfl)
  rlp_encode_word := calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 (by rfl)
  rlp_list_header_len := calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 (by rfl)
  memcpy := calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 (by rfl)
  rlp_encode_list_header := calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 (by rfl)
  rlp_encode_bytes := calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 (by rfl)
  sorted_keys32 := InitECandidate.Solver.SortAddr.keys_cost2
  htab_keys := calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 (by rfl)
  htab_has := calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 (by rfl)
  heap_mark := calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 (by rfl)
  heap_release := calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 (by rfl)

theorem callee_cost {σ : Type} :
    CalleeCost σ guestCtx (AcceptedIvvhCalleeCore.nm "bal_encode_account") tighterCost :=
  callee_cost_from_callees accepted_callees (by rw [guestCtx_code]; exact code_encode)

#print axioms callee_cost
end AcceptedBalEncodeCallee
