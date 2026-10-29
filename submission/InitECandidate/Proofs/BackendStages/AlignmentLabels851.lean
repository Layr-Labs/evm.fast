import InitECandidate.Proofs.BackendStages.Alignment851
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_851 : List (Nat × Nat) :=
[(16, 930508), (15, 930496), (7, 930488), (6, 930468), (14, 930412), (13, 930380), (5, 930368), (4, 930344),
  (12, 930288), (11, 930252), (3, 930240), (2, 930216), (10, 930160), (1, 930116), (9, 930116)]
theorem localLabelsFinal_851_eq : LabToTarget.sectionLabels 930100 Alignment851.lines [] = (930508, localLabelsFinal_851) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_851_eq
end InitECandidate.Proofs.BackendStages
