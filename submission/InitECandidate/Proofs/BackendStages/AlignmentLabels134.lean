import InitECandidate.Proofs.BackendStages.Alignment134
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_134 : List (Nat × Nat) :=
[(18, 24708), (17, 24696), (16, 24672), (7, 24660), (6, 24632), (15, 24576), (14, 24548), (5, 24528), (4, 24480),
  (13, 24424), (12, 24368), (3, 24340), (2, 24296), (11, 24240), (10, 24176), (1, 24116), (9, 24116)]
theorem localLabelsFinal_134_eq : LabToTarget.sectionLabels 24100 Alignment134.lines [] = (24708, localLabelsFinal_134) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_134_eq
end InitECandidate.Proofs.BackendStages
