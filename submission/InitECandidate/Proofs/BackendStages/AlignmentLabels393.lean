import InitECandidate.Proofs.BackendStages.Alignment393
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_393 : List (Nat × Nat) :=
[(8, 301488), (7, 301420), (3, 301388), (2, 301340), (6, 301284), (1, 301224), (5, 301224)]
theorem localLabelsFinal_393_eq : LabToTarget.sectionLabels 301208 Alignment393.lines [] = (301488, localLabelsFinal_393) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_393_eq
end InitECandidate.Proofs.BackendStages
