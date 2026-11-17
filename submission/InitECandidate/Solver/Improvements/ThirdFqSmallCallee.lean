import InitECandidate.Solver.Improvements.ThirdFqSmallIdentity
import InitECandidate.Solver.SourceCost.Shards.All
import InitECandidate.Solver.Spec.Bridge
import InitECandidate.Solver.Spec.Code
import InitECandidate.Solver.Improvements.AcceptedBitLengthReturn

/-! Actual accepted-table and semantic return bindings, separate from the
small proof core. Requires the accepted dependency closure for replay. -/
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace ThirdFqSmallCallee
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open ThirdFqSmallCore
open AcceptedIvvhCalleeCore (nm)
theorem code_small : guestCode (nm "fq_mul_small") = some (params, body, sh4) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 656) (by decide))
    ⟨_, rfl⟩ ThirdFqSmallIdentity.actual_entry
theorem bit_length_returns {σ : Type} : BitLengthReturns σ guestCtx := by
  intro vs actual callee rs lookup s hs hlocals tracked value returned
  exact AcceptedBitLengthReturn.funSpec_bit_length64_le
    (σ := σ) (X := guestCtx) (by rfl) vs actual callee rs lookup s hs hlocals
    (.returned value) returned value rfl
theorem small_cost {σ : Type} : CalleeCost σ guestCtx (nm "fq_mul_small") 577 :=
  callee_cost
    (calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 (by rfl))
    (calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 (by rfl))
    bit_length_returns (by change guestCode _ = _; exact code_small)
#print axioms bit_length_returns
#print axioms small_cost
end ThirdFqSmallCallee
