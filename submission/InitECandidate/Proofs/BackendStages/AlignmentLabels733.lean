import InitECandidate.Proofs.BackendStages.Alignment733
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_733 : List (Nat × Nat) :=
[(9, 734100), (8, 734044), (7, 734024), (3, 734008), (2, 733976), (6, 733920), (1, 733824), (5, 733824)]
theorem localLabelsFinal_733_eq : LabToTarget.sectionLabels 733808 Alignment733.lines [] = (734100, localLabelsFinal_733) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_733_eq
end InitECandidate.Proofs.BackendStages
