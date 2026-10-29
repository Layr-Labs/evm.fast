import InitECandidate.Proofs.BackendStages.Alignment400
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_400 : List (Nat × Nat) :=
[(17, 303880), (16, 303868), (7, 303856), (6, 303832), (15, 303776), (14, 303740), (5, 303728), (4, 303700),
  (13, 303644), (12, 303588), (11, 303568), (3, 303556), (2, 303528), (10, 303472), (1, 303412), (9, 303412)]
theorem localLabelsFinal_400_eq : LabToTarget.sectionLabels 303396 Alignment400.lines [] = (303880, localLabelsFinal_400) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_400_eq
end InitECandidate.Proofs.BackendStages
