import InitECandidate.Proofs.BackendStages.Alignment716
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_716 : List (Nat × Nat) :=
[(2, 722900), (1, 722752)]
theorem localLabelsFinal_716_eq : LabToTarget.sectionLabels 722752 Alignment716.lines [] = (722900, localLabelsFinal_716) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_716_eq
end InitECandidate.Proofs.BackendStages
