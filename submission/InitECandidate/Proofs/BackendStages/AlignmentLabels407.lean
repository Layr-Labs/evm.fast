import InitECandidate.Proofs.BackendStages.Alignment407
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_407 : List (Nat × Nat) :=
[(14, 307508), (13, 307496), (11, 307496), (5, 307488), (4, 307464), (10, 307408), (12, 307384), (9, 307368),
  (3, 307364), (2, 307344), (8, 307288), (1, 307260), (7, 307260)]
theorem localLabelsFinal_407_eq : LabToTarget.sectionLabels 307244 Alignment407.lines [] = (307508, localLabelsFinal_407) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_407_eq
end InitECandidate.Proofs.BackendStages
