import InitECandidate.Proofs.BackendStages.Alignment74
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_74 : List (Nat × Nat) :=
[(16, 6264), (15, 6232), (13, 6232), (5, 6220), (4, 6196), (12, 6140), (14, 6108), (11, 6072), (9, 6072), (3, 6060),
  (2, 6036), (8, 5980), (10, 5940), (1, 5900), (7, 5900)]
theorem localLabelsFinal_74_eq : LabToTarget.sectionLabels 5884 Alignment74.lines [] = (6264, localLabelsFinal_74) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_74_eq
end InitECandidate.Proofs.BackendStages
