import InitECandidate.Proofs.BackendStages.Alignment839
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_839 : List (Nat × Nat) :=
[(22, 910248), (13, 910232), (21, 910216), (17, 910188), (20, 910160), (19, 910132), (7, 910092), (6, 910040),
  (18, 909984), (16, 909892), (15, 909884), (5, 909848), (4, 909800), (14, 909744), (12, 909660), (11, 909644),
  (3, 909632), (2, 909608), (10, 909552), (1, 909500), (9, 909500)]
theorem localLabelsFinal_839_eq : LabToTarget.sectionLabels 909484 Alignment839.lines [] = (910248, localLabelsFinal_839) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_839_eq
end InitECandidate.Proofs.BackendStages
