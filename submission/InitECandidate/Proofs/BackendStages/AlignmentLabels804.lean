import InitECandidate.Proofs.BackendStages.Alignment804
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_804 : List (Nat × Nat) :=
[(28, 861960), (27, 861948), (13, 861940), (12, 861920), (26, 861864), (25, 861832), (11, 861824), (10, 861804),
  (24, 861748), (23, 861692), (9, 861680), (8, 861656), (22, 861600), (21, 861564), (7, 861556), (6, 861536),
  (20, 861480), (19, 861444), (5, 861436), (4, 861412), (18, 861356), (17, 861320), (3, 861316), (2, 861296),
  (16, 861240), (1, 861200), (15, 861200)]
theorem localLabelsFinal_804_eq : LabToTarget.sectionLabels 861184 Alignment804.lines [] = (861960, localLabelsFinal_804) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_804_eq
end InitECandidate.Proofs.BackendStages
