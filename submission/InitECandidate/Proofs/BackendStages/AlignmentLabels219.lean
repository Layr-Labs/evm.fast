import InitECandidate.Proofs.BackendStages.Alignment219
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_219 : List (Nat × Nat) :=
[(2, 125244), (1, 125184)]
theorem localLabelsFinal_219_eq : LabToTarget.sectionLabels 125184 Alignment219.lines [] = (125244, localLabelsFinal_219) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_219_eq
end InitECandidate.Proofs.BackendStages
