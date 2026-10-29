import InitECandidate.Proofs.BackendStages.Alignment865
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_865 : List (Nat × Nat) :=
[(23, 964896), (22, 964884), (9, 964872), (8, 964852), (21, 964796), (15, 964764), (20, 964748), (19, 964712),
  (7, 964688), (6, 964656), (18, 964600), (17, 964564), (5, 964520), (4, 964452), (16, 964396), (14, 964164),
  (13, 964148), (3, 964136), (2, 964116), (12, 964060), (1, 964020), (11, 964020)]
theorem localLabelsFinal_865_eq : LabToTarget.sectionLabels 964000 Alignment865.lines [] = (964896, localLabelsFinal_865) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_865_eq
end InitECandidate.Proofs.BackendStages
