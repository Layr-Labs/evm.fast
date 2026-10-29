import InitECandidate.Proofs.BackendStages.Alignment861
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_861 : List (Nat × Nat) :=
[(22, 943632), (21, 943620), (20, 943592), (9, 943584), (8, 943560), (19, 943504), (18, 943468), (7, 943460),
  (6, 943436), (17, 943380), (16, 943348), (15, 943324), (5, 943320), (4, 943304), (14, 943248), (13, 943212),
  (3, 943204), (2, 943184), (12, 943128), (1, 943092), (11, 943092)]
theorem localLabelsFinal_861_eq : LabToTarget.sectionLabels 943076 Alignment861.lines [] = (943632, localLabelsFinal_861) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_861_eq
end InitECandidate.Proofs.BackendStages
