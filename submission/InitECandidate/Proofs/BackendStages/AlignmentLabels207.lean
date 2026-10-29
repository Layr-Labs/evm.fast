import InitECandidate.Proofs.BackendStages.Alignment207
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_207 : List (Nat × Nat) :=
[(3, 118404), (2, 118396), (1, 114652)]
theorem localLabelsFinal_207_eq : LabToTarget.sectionLabels 114652 Alignment207.lines [] = (118404, localLabelsFinal_207) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_207_eq
end InitECandidate.Proofs.BackendStages
