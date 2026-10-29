import InitECandidate.Proofs.BackendStages.Alignment270
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_270 : List (Nat × Nat) :=
[(12, 208508), (10, 208500), (11, 208492), (9, 208464), (8, 208456), (7, 208432), (3, 208416), (2, 208384), (6, 208328),
  (1, 208288), (5, 208288)]
theorem localLabelsFinal_270_eq : LabToTarget.sectionLabels 208272 Alignment270.lines [] = (208508, localLabelsFinal_270) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_270_eq
end InitECandidate.Proofs.BackendStages
