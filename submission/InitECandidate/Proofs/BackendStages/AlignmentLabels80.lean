import InitECandidate.Proofs.BackendStages.Alignment80
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_80 : List (Nat × Nat) :=
[(6, 8036), (3, 8028), (5, 8020), (4, 8012), (2, 7984), (1, 7976)]
theorem localLabelsFinal_80_eq : LabToTarget.sectionLabels 7976 Alignment80.lines [] = (8036, localLabelsFinal_80) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_80_eq
end InitECandidate.Proofs.BackendStages
