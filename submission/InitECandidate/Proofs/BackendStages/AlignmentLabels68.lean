import InitECandidate.Proofs.BackendStages.Alignment68
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_68 : List (Nat × Nat) :=
[(16, 5392), (15, 5360), (13, 5360), (5, 5344), (4, 5316), (12, 5260), (14, 5224), (11, 5176), (9, 5176), (3, 5164),
  (2, 5140), (8, 5084), (10, 5044), (1, 4984), (7, 4984)]
theorem localLabelsFinal_68_eq : LabToTarget.sectionLabels 4968 Alignment68.lines [] = (5392, localLabelsFinal_68) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_68_eq
end InitECandidate.Proofs.BackendStages
