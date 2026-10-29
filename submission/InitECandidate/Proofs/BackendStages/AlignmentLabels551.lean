import InitECandidate.Proofs.BackendStages.Alignment551
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_551 : List (Nat × Nat) :=
[(28, 412500), (27, 412488), (13, 412480), (12, 412460), (26, 412404), (25, 412376), (11, 412372), (10, 412356),
  (24, 412300), (23, 412272), (9, 412268), (8, 412248), (22, 412192), (21, 412144), (7, 412136), (6, 412116),
  (20, 412060), (19, 412012), (5, 411992), (4, 411960), (18, 411904), (17, 411860), (3, 411856), (2, 411836),
  (16, 411780), (1, 411752), (15, 411752)]
theorem localLabelsFinal_551_eq : LabToTarget.sectionLabels 411736 Alignment551.lines [] = (412500, localLabelsFinal_551) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_551_eq
end InitECandidate.Proofs.BackendStages
