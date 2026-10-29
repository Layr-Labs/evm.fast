import InitECandidate.Proofs.BackendStages.Alignment139
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_139 : List (Nat × Nat) :=
[(8, 27076), (7, 27060), (3, 27052), (2, 27028), (6, 26972), (1, 26944), (5, 26944)]
theorem localLabelsFinal_139_eq : LabToTarget.sectionLabels 26928 Alignment139.lines [] = (27076, localLabelsFinal_139) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_139_eq
end InitECandidate.Proofs.BackendStages
