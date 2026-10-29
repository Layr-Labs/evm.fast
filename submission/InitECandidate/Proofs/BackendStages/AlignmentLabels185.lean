import InitECandidate.Proofs.BackendStages.Alignment185
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_185 : List (Nat × Nat) :=
[(8, 99484), (3, 99476), (7, 99468), (6, 99464), (5, 99452), (4, 99396), (2, 99368), (1, 99352)]
theorem localLabelsFinal_185_eq : LabToTarget.sectionLabels 99352 Alignment185.lines [] = (99484, localLabelsFinal_185) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_185_eq
end InitECandidate.Proofs.BackendStages
