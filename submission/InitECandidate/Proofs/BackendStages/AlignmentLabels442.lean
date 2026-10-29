import InitECandidate.Proofs.BackendStages.Alignment442
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_442 : List (Nat × Nat) :=
[(12, 327120), (11, 327108), (5, 327100), (4, 327080), (10, 327024), (9, 326992), (3, 326984), (2, 326960), (8, 326904),
  (1, 326872), (7, 326872)]
theorem localLabelsFinal_442_eq : LabToTarget.sectionLabels 326856 Alignment442.lines [] = (327120, localLabelsFinal_442) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_442_eq
end InitECandidate.Proofs.BackendStages
