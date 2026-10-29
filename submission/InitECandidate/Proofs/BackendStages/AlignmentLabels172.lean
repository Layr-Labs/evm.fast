import InitECandidate.Proofs.BackendStages.Alignment172
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_172 : List (Nat × Nat) :=
[(5, 96060), (3, 96052), (4, 96044), (2, 96024), (1, 96020)]
theorem localLabelsFinal_172_eq : LabToTarget.sectionLabels 96020 Alignment172.lines [] = (96060, localLabelsFinal_172) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_172_eq
end InitECandidate.Proofs.BackendStages
