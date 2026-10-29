import InitECandidate.Proofs.BackendStages.Alignment451
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_451 : List (Nat × Nat) :=
[(14, 332952), (7, 332936), (13, 332920), (12, 332860), (11, 332836), (9, 332836), (3, 332820), (2, 332792),
  (8, 332736), (10, 332644), (6, 332588), (1, 332560), (5, 332560)]
theorem localLabelsFinal_451_eq : LabToTarget.sectionLabels 332544 Alignment451.lines [] = (332952, localLabelsFinal_451) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_451_eq
end InitECandidate.Proofs.BackendStages
