import InitECandidate.Proofs.BackendStages.Alignment177
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_177 : List (Nat × Nat) :=
[(14, 97356), (13, 97344), (5, 97332), (4, 97308), (12, 97252), (11, 97212), (3, 97200), (2, 97172), (10, 97116),
  (9, 97068), (8, 97036), (1, 97008), (7, 97008)]
theorem localLabelsFinal_177_eq : LabToTarget.sectionLabels 96992 Alignment177.lines [] = (97356, localLabelsFinal_177) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_177_eq
end InitECandidate.Proofs.BackendStages
