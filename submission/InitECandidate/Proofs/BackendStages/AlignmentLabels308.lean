import InitECandidate.Proofs.BackendStages.Alignment308
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_308 : List (Nat × Nat) :=
[(8, 242360), (7, 242336), (3, 242320), (2, 242288), (6, 242232), (1, 242188), (5, 242188)]
theorem localLabelsFinal_308_eq : LabToTarget.sectionLabels 242172 Alignment308.lines [] = (242360, localLabelsFinal_308) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_308_eq
end InitECandidate.Proofs.BackendStages
