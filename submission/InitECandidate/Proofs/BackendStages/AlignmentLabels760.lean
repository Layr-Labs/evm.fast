import InitECandidate.Proofs.BackendStages.Alignment760
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_760 : List (Nat × Nat) :=
[(12, 758304), (11, 758292), (5, 758284), (4, 758264), (10, 758208), (9, 758172), (3, 758160), (2, 758136), (8, 758080),
  (1, 758040), (7, 758040)]
theorem localLabelsFinal_760_eq : LabToTarget.sectionLabels 758024 Alignment760.lines [] = (758304, localLabelsFinal_760) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_760_eq
end InitECandidate.Proofs.BackendStages
