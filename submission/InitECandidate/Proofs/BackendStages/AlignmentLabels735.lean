import InitECandidate.Proofs.BackendStages.Alignment735
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_735 : List (Nat × Nat) :=
[(12, 735484), (11, 735420), (5, 735384), (4, 735332), (10, 735276), (9, 735200), (3, 735148), (2, 735080), (8, 735024),
  (1, 734808), (7, 734808)]
theorem localLabelsFinal_735_eq : LabToTarget.sectionLabels 734792 Alignment735.lines [] = (735484, localLabelsFinal_735) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_735_eq
end InitECandidate.Proofs.BackendStages
