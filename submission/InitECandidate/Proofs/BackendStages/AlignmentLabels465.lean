import InitECandidate.Proofs.BackendStages.Alignment465
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_465 : List (Nat × Nat) :=
[(8, 357236), (7, 357224), (3, 357216), (2, 357192), (6, 357136), (1, 357108), (5, 357108)]
theorem localLabelsFinal_465_eq : LabToTarget.sectionLabels 357092 Alignment465.lines [] = (357236, localLabelsFinal_465) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_465_eq
end InitECandidate.Proofs.BackendStages
