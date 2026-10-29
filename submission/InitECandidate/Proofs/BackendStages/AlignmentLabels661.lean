import InitECandidate.Proofs.BackendStages.Alignment661
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_661 : List (Nat × Nat) :=
[(9, 594860), (8, 594848), (7, 594732), (3, 594708), (2, 594668), (6, 594612), (1, 584792), (5, 584792)]
theorem localLabelsFinal_661_eq : LabToTarget.sectionLabels 584776 Alignment661.lines [] = (594860, localLabelsFinal_661) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_661_eq
end InitECandidate.Proofs.BackendStages
