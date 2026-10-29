import InitECandidate.Proofs.BackendStages.Alignment718
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_718 : List (Nat × Nat) :=
[(2, 722996), (1, 722928)]
theorem localLabelsFinal_718_eq : LabToTarget.sectionLabels 722928 Alignment718.lines [] = (722996, localLabelsFinal_718) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_718_eq
end InitECandidate.Proofs.BackendStages
