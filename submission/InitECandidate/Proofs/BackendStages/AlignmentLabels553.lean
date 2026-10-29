import InitECandidate.Proofs.BackendStages.Alignment553
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_553 : List (Nat × Nat) :=
[(20, 413920), (19, 413908), (9, 413900), (8, 413880), (18, 413824), (17, 413796), (7, 413792), (6, 413776),
  (16, 413720), (15, 413692), (5, 413688), (4, 413668), (14, 413612), (13, 413564), (3, 413560), (2, 413544),
  (12, 413488), (1, 413456), (11, 413456)]
theorem localLabelsFinal_553_eq : LabToTarget.sectionLabels 413440 Alignment553.lines [] = (413920, localLabelsFinal_553) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_553_eq
end InitECandidate.Proofs.BackendStages
