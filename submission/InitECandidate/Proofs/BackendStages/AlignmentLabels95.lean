import InitECandidate.Proofs.BackendStages.Alignment95
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_95 : List (Nat × Nat) :=
[(8, 10272), (7, 10260), (3, 10252), (2, 10228), (6, 10172), (1, 10144), (5, 10144)]
theorem localLabelsFinal_95_eq : LabToTarget.sectionLabels 10128 Alignment95.lines [] = (10272, localLabelsFinal_95) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_95_eq
end InitECandidate.Proofs.BackendStages
