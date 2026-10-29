import InitECandidate.Proofs.BackendStages.Alignment596
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_596 : List (Nat × Nat) :=
[(16, 469364), (15, 469292), (7, 469264), (6, 469224), (14, 469168), (13, 469128), (5, 469124), (4, 469104),
  (12, 469048), (11, 469012), (3, 469008), (2, 468988), (10, 468932), (1, 468872), (9, 468872)]
theorem localLabelsFinal_596_eq : LabToTarget.sectionLabels 468856 Alignment596.lines [] = (469364, localLabelsFinal_596) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_596_eq
end InitECandidate.Proofs.BackendStages
