import InitECandidate.Proofs.BackendStages.Alignment133
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_133 : List (Nat × Nat) :=
[(18, 24100), (17, 24088), (16, 24060), (7, 24044), (6, 24012), (15, 23956), (14, 23928), (5, 23908), (4, 23860),
  (13, 23804), (12, 23744), (3, 23724), (2, 23688), (11, 23632), (10, 23568), (1, 23508), (9, 23508)]
theorem localLabelsFinal_133_eq : LabToTarget.sectionLabels 23492 Alignment133.lines [] = (24100, localLabelsFinal_133) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_133_eq
end InitECandidate.Proofs.BackendStages
