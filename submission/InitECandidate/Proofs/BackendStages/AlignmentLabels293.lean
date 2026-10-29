import InitECandidate.Proofs.BackendStages.Alignment293
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_293 : List (Nat × Nat) :=
[(22, 232432), (16, 232416), (21, 232396), (20, 232376), (7, 232348), (6, 232308), (19, 232252), (18, 232188),
  (5, 232172), (4, 232144), (17, 232088), (15, 232000), (14, 231992), (3, 231980), (2, 231952), (13, 231896),
  (11, 231864), (12, 231852), (10, 231824), (1, 231804), (9, 231804)]
theorem localLabelsFinal_293_eq : LabToTarget.sectionLabels 231788 Alignment293.lines [] = (232432, localLabelsFinal_293) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_293_eq
end InitECandidate.Proofs.BackendStages
