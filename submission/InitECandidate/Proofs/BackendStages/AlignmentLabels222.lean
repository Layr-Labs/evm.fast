import InitECandidate.Proofs.BackendStages.Alignment222
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_222 : List (Nat × Nat) :=
[(2, 125460), (1, 125436)]
theorem localLabelsFinal_222_eq : LabToTarget.sectionLabels 125436 Alignment222.lines [] = (125460, localLabelsFinal_222) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_222_eq
end InitECandidate.Proofs.BackendStages
