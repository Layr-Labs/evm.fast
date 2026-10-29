import InitECandidate.Proofs.BackendStages.Alignment81
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_81 : List (Nat × Nat) :=
[(2, 8092), (1, 8036)]
theorem localLabelsFinal_81_eq : LabToTarget.sectionLabels 8036 Alignment81.lines [] = (8092, localLabelsFinal_81) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_81_eq
end InitECandidate.Proofs.BackendStages
