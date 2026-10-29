import InitECandidate.Proofs.BackendStages.Alignment392
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_392 : List (Nat × Nat) :=
[(12, 301208), (11, 301184), (5, 301176), (4, 301156), (10, 301100), (9, 301052), (3, 301044), (2, 301024), (8, 300968),
  (1, 300908), (7, 300908)]
theorem localLabelsFinal_392_eq : LabToTarget.sectionLabels 300892 Alignment392.lines [] = (301208, localLabelsFinal_392) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_392_eq
end InitECandidate.Proofs.BackendStages
