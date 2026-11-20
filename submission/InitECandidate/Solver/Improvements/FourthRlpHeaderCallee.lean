import InitECandidate.Solver.Improvements.FourthRlpHeaderCore

/-! Closing the reader precondition inside the actual header function. No
accepted cost table or memory-success hypothesis is needed for this leaf. -/
set_option autoImplicit false
namespace FourthRlpHeaderCallee
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open FourthRlpHeaderCore
variable {σ : Type} {X : Ctx 64}

theorem fail_cost (hC : X.code.lookup = guestCode) : FailCost σ X := by
  intro vs actual callee rs lookup
  rw [hC] at lookup
  obtain ⟨rfl, -, -⟩ := lookupCode_one code_rlp_fail lookup
  exact cost_seq (cost_raise _ _) (cost_return _)

theorem reader_cost (hC : X.code.lookup = guestCode) : ReadCost σ X :=
  FourthRlpReadLengthCallee.callee_cost (fail_cost hC) hC

theorem callee_cost (hC : X.code.lookup = guestCode) :
    AcceptedIvvhCalleeCore.CalleeBound σ X (nm "rlp_item_header") 30 := by
  intro vs actual callee rs lookup
  rw [hC] at lookup
  obtain ⟨rfl, -, -⟩ := lookupCode_two code_rlp_item_header (by decide) lookup
  exact body_cost (fail_cost hC) (reader_cost hC)

#print axioms fail_cost
#print axioms reader_cost
#print axioms callee_cost
end FourthRlpHeaderCallee
