import InitECandidate.Proofs.BackendStages.Alignment789
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_789 : List (Nat × Nat) :=
[(24, 808840), (23, 808828), (11, 808816), (10, 808792), (22, 808736), (21, 808700), (9, 808692), (8, 808668),
  (20, 808612), (19, 808580), (7, 808572), (6, 808552), (18, 808496), (17, 808436), (5, 808428), (4, 808404),
  (16, 808348), (15, 808312), (3, 808308), (2, 808288), (14, 808232), (1, 808196), (13, 808196)]
theorem localLabelsFinal_789_eq : LabToTarget.sectionLabels 808180 Alignment789.lines [] = (808840, localLabelsFinal_789) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_789_eq
end InitECandidate.Proofs.BackendStages
