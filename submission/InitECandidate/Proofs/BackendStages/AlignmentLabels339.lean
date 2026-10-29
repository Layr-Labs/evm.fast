import InitECandidate.Proofs.BackendStages.Alignment339
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_339 : List (Nat × Nat) :=
[(10, 266988), (9, 266976), (8, 266956), (7, 266932), (3, 266920), (2, 266892), (6, 266836), (1, 266788), (5, 266788)]
theorem localLabelsFinal_339_eq : LabToTarget.sectionLabels 266772 Alignment339.lines [] = (266988, localLabelsFinal_339) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_339_eq
end InitECandidate.Proofs.BackendStages
