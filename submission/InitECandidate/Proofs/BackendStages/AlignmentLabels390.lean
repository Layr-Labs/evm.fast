import InitECandidate.Proofs.BackendStages.Alignment390
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_390 : List (Nat × Nat) :=
[(2, 300516), (1, 300496)]
theorem localLabelsFinal_390_eq : LabToTarget.sectionLabels 300496 Alignment390.lines [] = (300516, localLabelsFinal_390) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_390_eq
end InitECandidate.Proofs.BackendStages
