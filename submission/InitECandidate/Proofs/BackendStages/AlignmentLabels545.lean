import InitECandidate.Proofs.BackendStages.Alignment545
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_545 : List (Nat × Nat) :=
[(8, 402472), (7, 402456), (3, 402444), (2, 402416), (6, 402360), (1, 402316), (5, 402316)]
theorem localLabelsFinal_545_eq : LabToTarget.sectionLabels 402300 Alignment545.lines [] = (402472, localLabelsFinal_545) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_545_eq
end InitECandidate.Proofs.BackendStages
