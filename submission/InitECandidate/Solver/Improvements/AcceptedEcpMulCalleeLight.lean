import InitECandidate.Solver.Improvements.AcceptedEcpMulIdentity
import InitECandidate.Solver.SourceCost.Shards.All
import InitECandidate.Solver.Spec.Bridge
import InitECandidate.Solver.Spec.Code
import InitECandidate.Solver.Improvements.AcceptedBitLengthReturn

/-! Concrete accepted-table and existing bit-length-return binding for the
bounded ECP proof. This bridge replaces the unrelated MPT closure by an
extracted direct-Hoare bit-length return proof;
the generic body proof and actual AST identity have separate local checks. -/
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace AcceptedEcpMulCalleeLight
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open AcceptedEcpMulCore

theorem code_ecp : guestCode (AcceptedIvvhCalleeCore.nm "ecp_mul") = some (params, body, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 675) (by decide))
    ⟨_, rfl⟩ AcceptedEcpMulIdentity.actual_entry

theorem accepted_callees {σ : Type} : CalleeCosts acceptedBudgets σ guestCtx where
  alloc := calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 (by rfl)
  heapMark := calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 (by rfl)
  heapRelease := calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 (by rfl)
  setInf := calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 (by rfl)
  copy := calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 (by rfl)
  bitLength := calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 (by rfl)
  bit := calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 (by rfl)
  add := calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 (by rfl)
  double := calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 (by rfl)

/-- The existing return theorem is unconditional on argument values and heap
state; successful code lookup already enforces the callee's parameter shapes. -/
theorem bit_length_returns {σ : Type} : BitLengthReturns σ guestCtx := by
  intro vs actual callee rs lookup s hs hlocals tracked value returned
  exact AcceptedBitLengthReturn.funSpec_u256_bit_length_le
    (σ := σ) (X := guestCtx) guestCtx_code vs actual callee rs lookup s hs hlocals
    (.returned value) returned value rfl

theorem callee_cost {σ : Type} :
    CalleeCost σ guestCtx (AcceptedIvvhCalleeCore.nm "ecp_mul") (tighterCost acceptedBudgets) :=
  callee_cost_from_callees accepted_callees bit_length_returns
    (by rw [guestCtx_code]; exact code_ecp)

/-- A second caller may provide already improved add/double costs: the generic
proof does not bake the old table values into its semantic argument. -/
theorem callee_cost_with {σ : Type} {b : Budgets}
    (hc : CalleeCosts b σ guestCtx) :
    CalleeCost σ guestCtx (AcceptedIvvhCalleeCore.nm "ecp_mul") (tighterCost b) :=
  callee_cost_from_callees hc bit_length_returns
    (by rw [guestCtx_code]; exact code_ecp)

#print axioms bit_length_returns
#print axioms callee_cost
end AcceptedEcpMulCalleeLight
