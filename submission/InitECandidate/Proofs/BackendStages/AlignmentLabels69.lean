import InitECandidate.Proofs.BackendStages.Alignment69
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_69 : List (Nat × Nat) :=
[(2, 5412), (1, 5392)]
theorem localLabelsFinal_69_eq : LabToTarget.sectionLabels 5392 Alignment69.lines [] = (5412, localLabelsFinal_69) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_69_eq
end InitECandidate.Proofs.BackendStages
