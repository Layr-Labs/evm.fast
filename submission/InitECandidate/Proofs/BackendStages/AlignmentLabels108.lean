import InitECandidate.Proofs.BackendStages.Alignment108
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_108 : List (Nat × Nat) :=
[(9, 11304), (8, 11296), (7, 11284), (6, 11276), (5, 11260), (4, 11252), (3, 11236), (2, 11228), (1, 11208)]
theorem localLabelsFinal_108_eq : LabToTarget.sectionLabels 11208 Alignment108.lines [] = (11304, localLabelsFinal_108) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_108_eq
end InitECandidate.Proofs.BackendStages
