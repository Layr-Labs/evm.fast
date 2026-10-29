import InitECandidate.Proofs.BackendStages.Alignment152
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_152 : List (Nat × Nat) :=
[(11, 51844), (7, 51828), (10, 51816), (9, 51804), (3, 51784), (2, 51752), (8, 51696), (6, 51632), (1, 51616),
  (5, 51616)]
theorem localLabelsFinal_152_eq : LabToTarget.sectionLabels 51600 Alignment152.lines [] = (51844, localLabelsFinal_152) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_152_eq
end InitECandidate.Proofs.BackendStages
