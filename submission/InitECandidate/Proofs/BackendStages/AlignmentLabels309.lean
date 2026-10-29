import InitECandidate.Proofs.BackendStages.Alignment309
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_309 : List (Nat × Nat) :=
[(9, 242528), (8, 242524), (7, 242504), (3, 242492), (2, 242464), (6, 242408), (1, 242376), (5, 242376)]
theorem localLabelsFinal_309_eq : LabToTarget.sectionLabels 242360 Alignment309.lines [] = (242528, localLabelsFinal_309) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_309_eq
end InitECandidate.Proofs.BackendStages
