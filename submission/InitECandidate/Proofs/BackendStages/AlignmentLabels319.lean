import InitECandidate.Proofs.BackendStages.Alignment319
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_319 : List (Nat × Nat) :=
[(21, 252648), (20, 252636), (9, 252624), (8, 252600), (19, 252544), (18, 252512), (16, 252492), (6, 252484),
  (5, 252464), (15, 252408), (17, 252372), (7, 252348), (4, 252328), (14, 252272), (13, 252240), (3, 252220),
  (2, 252184), (12, 252128), (1, 252084), (11, 252084)]
theorem localLabelsFinal_319_eq : LabToTarget.sectionLabels 252068 Alignment319.lines [] = (252648, localLabelsFinal_319) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_319_eq
end InitECandidate.Proofs.BackendStages
