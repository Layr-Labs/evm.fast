import InitECandidate.Proofs.BackendStages.Alignment331
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_331 : List (Nat × Nat) :=
[(17, 260500), (16, 260488), (7, 260480), (6, 260460), (15, 260404), (14, 260372), (5, 260364), (4, 260340),
  (13, 260284), (12, 260248), (11, 260236), (3, 260228), (2, 260208), (10, 260152), (1, 260088), (9, 260088)]
theorem localLabelsFinal_331_eq : LabToTarget.sectionLabels 260072 Alignment331.lines [] = (260500, localLabelsFinal_331) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_331_eq
end InitECandidate.Proofs.BackendStages
