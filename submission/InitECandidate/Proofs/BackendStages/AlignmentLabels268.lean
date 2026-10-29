import InitECandidate.Proofs.BackendStages.Alignment268
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_268 : List (Nat × Nat) :=
[(12, 208000), (11, 207964), (5, 207948), (4, 207920), (10, 207864), (9, 207824), (3, 207800), (2, 207764), (8, 207708),
  (1, 207656), (7, 207656)]
theorem localLabelsFinal_268_eq : LabToTarget.sectionLabels 207640 Alignment268.lines [] = (208000, localLabelsFinal_268) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_268_eq
end InitECandidate.Proofs.BackendStages
