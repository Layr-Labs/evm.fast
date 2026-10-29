import InitECandidate.Proofs.BackendStages.Alignment766
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_766 : List (Nat × Nat) :=
[(2, 767376), (1, 766976)]
theorem localLabelsFinal_766_eq : LabToTarget.sectionLabels 766976 Alignment766.lines [] = (767376, localLabelsFinal_766) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_766_eq
end InitECandidate.Proofs.BackendStages
