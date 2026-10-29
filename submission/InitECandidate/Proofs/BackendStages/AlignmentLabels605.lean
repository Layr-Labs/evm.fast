import InitECandidate.Proofs.BackendStages.Alignment605
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_605 : List (Nat × Nat) :=
[(18, 478316), (17, 478304), (7, 478296), (6, 478276), (16, 478220), (15, 478192), (13, 478136), (5, 478128),
  (4, 478104), (12, 478048), (11, 478004), (3, 478000), (2, 477984), (10, 477928), (14, 477892), (1, 477848),
  (9, 477848)]
theorem localLabelsFinal_605_eq : LabToTarget.sectionLabels 477832 Alignment605.lines [] = (478316, localLabelsFinal_605) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_605_eq
end InitECandidate.Proofs.BackendStages
