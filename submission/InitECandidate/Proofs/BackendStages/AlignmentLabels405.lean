import InitECandidate.Proofs.BackendStages.Alignment405
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_405 : List (Nat × Nat) :=
[(14, 306788), (13, 306776), (11, 306776), (5, 306768), (4, 306744), (10, 306688), (12, 306664), (9, 306648),
  (3, 306644), (2, 306624), (8, 306568), (1, 306540), (7, 306540)]
theorem localLabelsFinal_405_eq : LabToTarget.sectionLabels 306524 Alignment405.lines [] = (306788, localLabelsFinal_405) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_405_eq
end InitECandidate.Proofs.BackendStages
