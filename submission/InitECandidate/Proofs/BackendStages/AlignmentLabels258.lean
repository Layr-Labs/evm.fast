import InitECandidate.Proofs.BackendStages.Alignment258
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_258 : List (Nat × Nat) :=
[(12, 194140), (11, 194128), (5, 194120), (4, 194100), (10, 194044), (9, 194016), (3, 194004), (2, 193980), (8, 193924),
  (1, 193888), (7, 193888)]
theorem localLabelsFinal_258_eq : LabToTarget.sectionLabels 193872 Alignment258.lines [] = (194140, localLabelsFinal_258) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_258_eq
end InitECandidate.Proofs.BackendStages
