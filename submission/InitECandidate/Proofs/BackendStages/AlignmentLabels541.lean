import InitECandidate.Proofs.BackendStages.Alignment541
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_541 : List (Nat × Nat) :=
[(7, 400320), (6, 400304), (5, 400280), (4, 400276), (3, 400260), (2, 400256), (1, 400240)]
theorem localLabelsFinal_541_eq : LabToTarget.sectionLabels 400240 Alignment541.lines [] = (400320, localLabelsFinal_541) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_541_eq
end InitECandidate.Proofs.BackendStages
