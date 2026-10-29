import InitECandidate.Proofs.BackendStages.Alignment600
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_600 : List (Nat × Nat) :=
[(10, 471256), (9, 471244), (7, 471244), (3, 471236), (2, 471216), (6, 471160), (8, 471120), (1, 471088), (5, 471088)]
theorem localLabelsFinal_600_eq : LabToTarget.sectionLabels 471072 Alignment600.lines [] = (471256, localLabelsFinal_600) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_600_eq
end InitECandidate.Proofs.BackendStages
