import InitECandidate.Proofs.BackendStages.Alignment66
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_66 : List (Nat × Nat) :=
[(4, 4872), (3, 4856), (1, 4716), (2, 4716)]
theorem localLabelsFinal_66_eq : LabToTarget.sectionLabels 4700 Alignment66.lines [] = (4872, localLabelsFinal_66) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_66_eq
end InitECandidate.Proofs.BackendStages
