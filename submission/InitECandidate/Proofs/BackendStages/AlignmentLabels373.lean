import InitECandidate.Proofs.BackendStages.Alignment373
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_373 : List (Nat × Nat) :=
[(2, 287176), (1, 287160)]
theorem localLabelsFinal_373_eq : LabToTarget.sectionLabels 287160 Alignment373.lines [] = (287176, localLabelsFinal_373) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_373_eq
end InitECandidate.Proofs.BackendStages
