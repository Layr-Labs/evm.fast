import InitECandidate.Proofs.BackendStages.Alignment64
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_64 : List (Nat × Nat) :=
[(2, 1820), (1, 1000)]
theorem localLabelsFinal_64_eq : LabToTarget.sectionLabels 1000 Alignment64.lines [] = (1820, localLabelsFinal_64) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_64_eq
end InitECandidate.Proofs.BackendStages
