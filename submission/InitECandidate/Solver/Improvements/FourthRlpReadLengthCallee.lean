import InitECandidate.Solver.Improvements.FourthRlpReadLengthIdentity
import InitECandidate.Solver.Improvements.FourthConditionalCallCost

/-! Actual-code conditional interface for the eight-byte reader. The cost of
`rlp_fail` is an explicit premise, discharged by an eventual sound-table bridge. -/
set_option autoImplicit false
namespace FourthRlpReadLengthCallee
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open AcceptedIvvhCalleeCore (CalleeBound)
open FourthRlpReadLengthCore
variable {σ : Type} {X : Ctx 64}

def Pre (vs : List (ValueHOL 64)) (_ : PanSemStateFiniteExact 64 σ) : Prop :=
  ∃ (p : ValueHOL 64) (n : BitVec 64), vs = [p, .val (.word n)] ∧ n.toNat ≤ 8

theorem callee_cost {Bf : Nat} (hf : CalleeBound σ X (nm "rlp_fail") Bf)
    (hC : X.code.lookup = guestCode) :
    FourthConditionalCallCost.CalleeCostP σ X (nm "rlp_read_length") Pre (9 + Bf) := by
  intro vs actual callee rs lookup
  rw [hC] at lookup
  obtain ⟨rfl, -, A, B, rfl, _, _, hA, hB⟩ :=
    lookupCode_two FourthRlpReadLengthIdentity.code_read_length (by decide) lookup
  intro s hs ⟨hlocals, p, n, hvs, hnb⟩ hg
  simp only [List.cons.injEq, and_true] at hvs
  obtain ⟨rfl, rfl⟩ := hvs
  refine body_cost hf s hs ⟨n, ?_, hnb⟩ hg
  rw [hlocals]
  exact hB

#print axioms callee_cost
end FourthRlpReadLengthCallee
