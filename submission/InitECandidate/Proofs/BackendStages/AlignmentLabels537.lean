import InitECandidate.Proofs.BackendStages.Alignment537
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_537 : List (Nat × Nat) :=
[(17, 399648), (16, 399636), (7, 399628), (6, 399608), (15, 399552), (14, 399524), (5, 399520), (4, 399504),
  (13, 399448), (12, 399384), (11, 399344), (3, 399336), (2, 399316), (10, 399260), (1, 399220), (9, 399220)]
theorem localLabelsFinal_537_eq : LabToTarget.sectionLabels 399204 Alignment537.lines [] = (399648, localLabelsFinal_537) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_537_eq
end InitECandidate.Proofs.BackendStages
