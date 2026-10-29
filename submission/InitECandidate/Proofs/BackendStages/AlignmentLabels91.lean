import InitECandidate.Proofs.BackendStages.Alignment91
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_91 : List (Nat × Nat) :=
[(5, 9804), (3, 9796), (4, 9788), (2, 9736), (1, 9732)]
theorem localLabelsFinal_91_eq : LabToTarget.sectionLabels 9732 Alignment91.lines [] = (9804, localLabelsFinal_91) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_91_eq
end InitECandidate.Proofs.BackendStages
