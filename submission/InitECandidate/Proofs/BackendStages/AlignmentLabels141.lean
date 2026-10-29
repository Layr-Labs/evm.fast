import InitECandidate.Proofs.BackendStages.Alignment141
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_141 : List (Nat × Nat) :=
[(11, 28668), (10, 28648), (9, 28572), (8, 28560), (7, 28544), (6, 28532), (5, 28516), (4, 28504), (3, 28488),
  (2, 28468), (1, 28424)]
theorem localLabelsFinal_141_eq : LabToTarget.sectionLabels 28424 Alignment141.lines [] = (28668, localLabelsFinal_141) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_141_eq
end InitECandidate.Proofs.BackendStages
