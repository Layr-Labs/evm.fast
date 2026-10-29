import InitECandidate.Proofs.BackendStages.Alignment159
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_159 : List (Nat × Nat) :=
[(2, 87592), (1, 87580)]
theorem localLabelsFinal_159_eq : LabToTarget.sectionLabels 87580 Alignment159.lines [] = (87592, localLabelsFinal_159) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_159_eq
end InitECandidate.Proofs.BackendStages
