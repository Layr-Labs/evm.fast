import InitECandidate.Proofs.BackendStages.Alignment767
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_767 : List (Nat × Nat) :=
[(2, 767408), (1, 767376)]
theorem localLabelsFinal_767_eq : LabToTarget.sectionLabels 767376 Alignment767.lines [] = (767408, localLabelsFinal_767) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_767_eq
end InitECandidate.Proofs.BackendStages
