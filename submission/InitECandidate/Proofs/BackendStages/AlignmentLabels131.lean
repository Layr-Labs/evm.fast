import InitECandidate.Proofs.BackendStages.Alignment131
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_131 : List (Nat × Nat) :=
[(8, 23472), (7, 23448), (3, 23440), (2, 23420), (6, 23364), (1, 23336), (5, 23336)]
theorem localLabelsFinal_131_eq : LabToTarget.sectionLabels 23320 Alignment131.lines [] = (23472, localLabelsFinal_131) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_131_eq
end InitECandidate.Proofs.BackendStages
