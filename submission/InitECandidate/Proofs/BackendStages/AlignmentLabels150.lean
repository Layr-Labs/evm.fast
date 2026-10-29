import InitECandidate.Proofs.BackendStages.Alignment150
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_150 : List (Nat × Nat) :=
[(2, 33272), (1, 33092)]
theorem localLabelsFinal_150_eq : LabToTarget.sectionLabels 33092 Alignment150.lines [] = (33272, localLabelsFinal_150) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_150_eq
end InitECandidate.Proofs.BackendStages
