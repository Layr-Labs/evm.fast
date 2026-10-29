import InitECandidate.Proofs.BackendStages.Alignment486
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_486 : List (Nat × Nat) :=
[(4, 364468), (3, 364432), (2, 364400), (1, 364372)]
theorem localLabelsFinal_486_eq : LabToTarget.sectionLabels 364372 Alignment486.lines [] = (364468, localLabelsFinal_486) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_486_eq
end InitECandidate.Proofs.BackendStages
