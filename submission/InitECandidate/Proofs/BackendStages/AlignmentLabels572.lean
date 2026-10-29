import InitECandidate.Proofs.BackendStages.Alignment572
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_572 : List (Nat × Nat) :=
[(2, 429156), (1, 429128)]
theorem localLabelsFinal_572_eq : LabToTarget.sectionLabels 429128 Alignment572.lines [] = (429156, localLabelsFinal_572) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_572_eq
end InitECandidate.Proofs.BackendStages
