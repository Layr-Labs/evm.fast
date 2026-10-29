import InitECandidate.Proofs.BackendStages.Alignment871
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_871 : List (Nat × Nat) :=
[(9, 977856), (8, 977844), (7, 977792), (3, 977772), (2, 977752), (6, 977696), (1, 977660), (5, 977660)]
theorem localLabelsFinal_871_eq : LabToTarget.sectionLabels 977640 Alignment871.lines [] = (977856, localLabelsFinal_871) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_871_eq
end InitECandidate.Proofs.BackendStages
