import InitECandidate.Proofs.BackendStages.Alignment286
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_286 : List (Nat × Nat) :=
[(2, 229232), (1, 229220)]
theorem localLabelsFinal_286_eq : LabToTarget.sectionLabels 229220 Alignment286.lines [] = (229232, localLabelsFinal_286) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_286_eq
end InitECandidate.Proofs.BackendStages
