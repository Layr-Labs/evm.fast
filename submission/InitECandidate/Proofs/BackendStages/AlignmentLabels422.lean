import InitECandidate.Proofs.BackendStages.Alignment422
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_422 : List (Nat × Nat) :=
[(12, 315124), (11, 315112), (5, 315104), (4, 315084), (10, 315028), (9, 314996), (3, 314988), (2, 314968), (8, 314912),
  (1, 314880), (7, 314880)]
theorem localLabelsFinal_422_eq : LabToTarget.sectionLabels 314864 Alignment422.lines [] = (315124, localLabelsFinal_422) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_422_eq
end InitECandidate.Proofs.BackendStages
