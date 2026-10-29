import InitECandidate.Proofs.BackendStages.Alignment446
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_446 : List (Nat × Nat) :=
[(8, 328440), (7, 328428), (3, 328420), (2, 328400), (6, 328344), (1, 328316), (5, 328316)]
theorem localLabelsFinal_446_eq : LabToTarget.sectionLabels 328300 Alignment446.lines [] = (328440, localLabelsFinal_446) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_446_eq
end InitECandidate.Proofs.BackendStages
