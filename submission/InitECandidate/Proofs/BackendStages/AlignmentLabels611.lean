import InitECandidate.Proofs.BackendStages.Alignment611
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_611 : List (Nat × Nat) :=
[(12, 483512), (11, 483500), (5, 483492), (4, 483472), (10, 483416), (9, 483380), (3, 483372), (2, 483352), (8, 483296),
  (1, 483248), (7, 483248)]
theorem localLabelsFinal_611_eq : LabToTarget.sectionLabels 483232 Alignment611.lines [] = (483512, localLabelsFinal_611) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_611_eq
end InitECandidate.Proofs.BackendStages
