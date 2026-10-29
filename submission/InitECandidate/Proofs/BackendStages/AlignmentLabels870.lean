import InitECandidate.Proofs.BackendStages.Alignment870
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_870 : List (Nat × Nat) :=
[(9, 977640), (8, 977628), (7, 977576), (3, 977556), (2, 977536), (6, 977480), (1, 977444), (5, 977444)]
theorem localLabelsFinal_870_eq : LabToTarget.sectionLabels 977424 Alignment870.lines [] = (977640, localLabelsFinal_870) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_870_eq
end InitECandidate.Proofs.BackendStages
