import InitECandidate.Proofs.BackendStages.Alignment559
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_559 : List (Nat × Nat) :=
[(16, 417856), (15, 417844), (7, 417836), (6, 417816), (14, 417760), (13, 417732), (5, 417728), (4, 417712),
  (12, 417656), (11, 417608), (3, 417604), (2, 417588), (10, 417532), (1, 417500), (9, 417500)]
theorem localLabelsFinal_559_eq : LabToTarget.sectionLabels 417484 Alignment559.lines [] = (417856, localLabelsFinal_559) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_559_eq
end InitECandidate.Proofs.BackendStages
