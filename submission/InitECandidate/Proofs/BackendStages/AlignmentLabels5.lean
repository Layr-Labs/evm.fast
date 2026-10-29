import InitECandidate.Proofs.BackendStages.Alignment5
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_5 : List (Nat × Nat) :=
[(2, 848), (1, 816)]
theorem localLabelsFinal_5_eq : LabToTarget.sectionLabels 812 Alignment5.lines [] = (848, localLabelsFinal_5) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_5_eq
end InitECandidate.Proofs.BackendStages
