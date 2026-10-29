import InitECandidate.Proofs.BackendStages.Alignment500
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_500 : List (Nat × Nat) :=
[(28, 370476), (27, 370464), (13, 370456), (12, 370436), (26, 370380), (25, 370352), (11, 370348), (10, 370332),
  (24, 370276), (23, 370248), (9, 370244), (8, 370224), (22, 370168), (21, 370140), (7, 370104), (6, 370056),
  (20, 370000), (19, 369956), (5, 369952), (4, 369932), (18, 369876), (17, 369836), (3, 369832), (2, 369812),
  (16, 369756), (1, 369728), (15, 369728)]
theorem localLabelsFinal_500_eq : LabToTarget.sectionLabels 369712 Alignment500.lines [] = (370476, localLabelsFinal_500) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_500_eq
end InitECandidate.Proofs.BackendStages
