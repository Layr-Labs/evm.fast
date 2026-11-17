import InitECandidate.Solver.Improvements.FourthRlpReadLengthCore
import InitECandidate.Solver.Improvements.AcceptedEcpMulIdentity
import InitECandidate.Solver.Spec.Exec

/-! Literal identity of the bounded read-length body against unchanged accepted
6151c797 Guest.SoftwareAst. No unconditional eight-byte bound is asserted. -/
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.warning false
namespace FourthRlpReadLengthIdentity
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open FourthRlpReadLengthCore

theorem actual_entry : AcceptedEcpMulIdentity.entry Guest.Software.guestFn_rlp_read_length =
    (nm "rlp_read_length", params, body, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_read_length : guestCode (nm "rlp_read_length") = some (params, body, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 106) (by decide))
    ⟨_, rfl⟩ actual_entry

#print axioms actual_entry
#print axioms code_read_length
end FourthRlpReadLengthIdentity
