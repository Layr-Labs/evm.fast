import InitECandidate.Proofs.BackendStages.Alignment290
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_290 : List (Nat × Nat) :=
[(7, 231088), (5, 231080), (6, 231072), (4, 231024), (3, 231020), (2, 231012), (1, 230964)]
theorem localLabelsFinal_290_eq : LabToTarget.sectionLabels 230964 Alignment290.lines [] = (231088, localLabelsFinal_290) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_290_eq
end InitECandidate.Proofs.BackendStages
