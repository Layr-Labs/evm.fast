import InitECandidate.Proofs.BackendStages.Alignment437
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_437 : List (Nat × Nat) :=
[(14, 324092), (13, 324052), (11, 324036), (5, 324008), (4, 323968), (10, 323912), (9, 323852), (3, 323836),
  (2, 323804), (8, 323748), (12, 323680), (1, 323656), (7, 323656)]
theorem localLabelsFinal_437_eq : LabToTarget.sectionLabels 323640 Alignment437.lines [] = (324092, localLabelsFinal_437) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_437_eq
end InitECandidate.Proofs.BackendStages
