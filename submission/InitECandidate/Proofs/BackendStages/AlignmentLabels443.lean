import InitECandidate.Proofs.BackendStages.Alignment443
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_443 : List (Nat × Nat) :=
[(12, 327504), (11, 327472), (5, 327448), (4, 327408), (10, 327352), (9, 327320), (3, 327288), (2, 327240), (8, 327184),
  (1, 327136), (7, 327136)]
theorem localLabelsFinal_443_eq : LabToTarget.sectionLabels 327120 Alignment443.lines [] = (327504, localLabelsFinal_443) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_443_eq
end InitECandidate.Proofs.BackendStages
