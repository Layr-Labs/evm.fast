import InitECandidate.Proofs.BackendStages.Alignment374
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_374 : List (Nat × Nat) :=
[(2, 287192), (1, 287176)]
theorem localLabelsFinal_374_eq : LabToTarget.sectionLabels 287176 Alignment374.lines [] = (287192, localLabelsFinal_374) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_374_eq
end InitECandidate.Proofs.BackendStages
