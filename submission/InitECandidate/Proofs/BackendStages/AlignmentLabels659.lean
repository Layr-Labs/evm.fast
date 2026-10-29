import InitECandidate.Proofs.BackendStages.Alignment659
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_659 : List (Nat × Nat) :=
[(18, 584456), (17, 584444), (15, 584444), (7, 584436), (6, 584412), (14, 584356), (16, 584228), (13, 584212),
  (5, 584204), (4, 584180), (12, 584124), (11, 584088), (3, 584052), (2, 584000), (10, 583944), (1, 583880),
  (9, 583880)]
theorem localLabelsFinal_659_eq : LabToTarget.sectionLabels 583864 Alignment659.lines [] = (584456, localLabelsFinal_659) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_659_eq
end InitECandidate.Proofs.BackendStages
