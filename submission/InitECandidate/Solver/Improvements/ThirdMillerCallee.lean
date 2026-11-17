import InitECandidate.Solver.Improvements.AcceptedMillerIdentity
import InitECandidate.Solver.SourceCost.Shards.All
import InitECandidate.Solver.Spec.Bridge
import InitECandidate.Solver.Spec.Code

/-!
Concrete accepted-table instantiation of the checked fixed-64 Miller proof.
The actual table/entry bridge requires the accepted import closure and has not
been replayed locally. No new callee assumptions are exported.
-/
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace ThirdMillerCallee
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open AcceptedMillerCore

theorem entry_miller : fnEntry Guest.Software.guestFn_bn254_miller_raw =
    (AcceptedIvvhCalleeCore.nm "bn254_miller_raw", params, millerBody, .one) :=
  AcceptedMillerIdentity.actual_entry

theorem code_miller : guestCode (AcceptedIvvhCalleeCore.nm "bn254_miller_raw") =
    some (params, millerBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 684) (by decide))
    ⟨_, rfl⟩ entry_miller

theorem accepted_callees {σ : Type} : CalleeCosts σ guestCtx where
  alloc := calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 (by rfl)
  heap_mark := calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 (by rfl)
  heap_release := calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 (by rfl)
  memcpy := calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 (by rfl)
  fe_neg := calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 (by rfl)
  fe_set_one := calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 (by rfl)
  ecp_linefunc := calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 (by rfl)
  fq12_sqr := calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 (by rfl)
  fq12_mul := calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 (by rfl)
  ecp_double := calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 (by rfl)
  ecp_add := calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 (by rfl)
  fq12_frob := calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 (by rfl)

theorem callee_cost {σ : Type} :
    CalleeCost σ guestCtx (AcceptedIvvhCalleeCore.nm "bn254_miller_raw") tighterCost :=
  callee_cost_from_callees accepted_callees
    (by rw [guestCtx_code]; exact code_miller)

#print axioms callee_cost
end ThirdMillerCallee
