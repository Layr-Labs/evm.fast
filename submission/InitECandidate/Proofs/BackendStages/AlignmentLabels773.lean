import InitECandidate.Proofs.BackendStages.Alignment773
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_773 : List (Nat × Nat) :=
[(20, 787192), (19, 787176), (9, 787168), (8, 787144), (18, 787088), (17, 786992), (7, 786936), (6, 786856),
  (16, 786800), (15, 786724), (5, 786624), (4, 786508), (14, 786452), (13, 786328), (3, 786320), (2, 786276),
  (12, 786220), (1, 786124), (11, 786124)]
theorem localLabelsFinal_773_eq : LabToTarget.sectionLabels 786108 Alignment773.lines [] = (787192, localLabelsFinal_773) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_773_eq
end InitECandidate.Proofs.BackendStages
