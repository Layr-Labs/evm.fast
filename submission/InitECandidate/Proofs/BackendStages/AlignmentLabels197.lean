import InitECandidate.Proofs.BackendStages.Alignment197
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_197 : List (Nat × Nat) :=
[(3, 104704), (2, 104640), (1, 104604)]
theorem localLabelsFinal_197_eq : LabToTarget.sectionLabels 104604 Alignment197.lines [] = (104704, localLabelsFinal_197) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_197_eq
end InitECandidate.Proofs.BackendStages
