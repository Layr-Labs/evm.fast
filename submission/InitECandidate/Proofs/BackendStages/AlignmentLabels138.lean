import InitECandidate.Proofs.BackendStages.Alignment138
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_138 : List (Nat × Nat) :=
[(19, 26928), (18, 26912), (17, 26900), (7, 26892), (6, 26868), (16, 26812), (15, 26776), (14, 26764), (5, 26756),
  (4, 26732), (13, 26676), (12, 26628), (11, 26616), (3, 26608), (2, 26584), (10, 26528), (1, 26484), (9, 26484)]
theorem localLabelsFinal_138_eq : LabToTarget.sectionLabels 26468 Alignment138.lines [] = (26928, localLabelsFinal_138) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_138_eq
end InitECandidate.Proofs.BackendStages
