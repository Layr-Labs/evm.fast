import InitECandidate.Proofs.BackendStages.Alignment809
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_809 : List (Nat × Nat) :=
[(8, 871140), (7, 871128), (3, 871120), (2, 871100), (6, 871044), (1, 871012), (5, 871012)]
theorem localLabelsFinal_809_eq : LabToTarget.sectionLabels 870996 Alignment809.lines [] = (871140, localLabelsFinal_809) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_809_eq
end InitECandidate.Proofs.BackendStages
