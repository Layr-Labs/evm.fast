import InitECandidate.Proofs.BackendStages.Alignment494
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_494 : List (Nat × Nat) :=
[(8, 367096), (7, 367084), (3, 367076), (2, 367056), (6, 367000), (1, 366944), (5, 366944)]
theorem localLabelsFinal_494_eq : LabToTarget.sectionLabels 366928 Alignment494.lines [] = (367096, localLabelsFinal_494) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_494_eq
end InitECandidate.Proofs.BackendStages
