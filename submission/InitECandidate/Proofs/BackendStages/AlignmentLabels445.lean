import InitECandidate.Proofs.BackendStages.Alignment445
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_445 : List (Nat × Nat) :=
[(12, 328300), (11, 328272), (5, 328256), (4, 328224), (10, 328168), (9, 328136), (3, 328120), (2, 328088), (8, 328032),
  (1, 327992), (7, 327992)]
theorem localLabelsFinal_445_eq : LabToTarget.sectionLabels 327976 Alignment445.lines [] = (328300, localLabelsFinal_445) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_445_eq
end InitECandidate.Proofs.BackendStages
