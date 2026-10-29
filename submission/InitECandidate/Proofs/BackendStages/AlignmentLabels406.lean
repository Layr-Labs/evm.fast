import InitECandidate.Proofs.BackendStages.Alignment406
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_406 : List (Nat × Nat) :=
[(17, 307244), (16, 307232), (7, 307224), (6, 307200), (15, 307144), (14, 307112), (13, 307092), (5, 307080),
  (4, 307052), (12, 306996), (11, 306948), (3, 306940), (2, 306920), (10, 306864), (1, 306804), (9, 306804)]
theorem localLabelsFinal_406_eq : LabToTarget.sectionLabels 306788 Alignment406.lines [] = (307244, localLabelsFinal_406) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_406_eq
end InitECandidate.Proofs.BackendStages
