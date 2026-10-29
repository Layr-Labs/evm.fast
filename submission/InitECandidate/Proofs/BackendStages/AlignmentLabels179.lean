import InitECandidate.Proofs.BackendStages.Alignment179
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_179 : List (Nat × Nat) :=
[(13, 97592), (12, 97580), (3, 97568), (2, 97540), (11, 97484), (10, 97448), (9, 97424), (8, 97420), (7, 97404),
  (6, 97400), (1, 97384), (5, 97384)]
theorem localLabelsFinal_179_eq : LabToTarget.sectionLabels 97368 Alignment179.lines [] = (97592, localLabelsFinal_179) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_179_eq
end InitECandidate.Proofs.BackendStages
