import InitECandidate.Proofs.BackendStages.Alignment467
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_467 : List (Nat × Nat) :=
[(8, 357836), (7, 357824), (3, 357816), (2, 357792), (6, 357736), (1, 357704), (5, 357704)]
theorem localLabelsFinal_467_eq : LabToTarget.sectionLabels 357688 Alignment467.lines [] = (357836, localLabelsFinal_467) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_467_eq
end InitECandidate.Proofs.BackendStages
