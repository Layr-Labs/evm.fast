import InitECandidate.Proofs.BackendStages.Alignment498
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_498 : List (Nat × Nat) :=
[(28, 368948), (27, 368936), (13, 368928), (12, 368908), (26, 368852), (25, 368824), (11, 368820), (10, 368804),
  (24, 368748), (23, 368720), (9, 368716), (8, 368696), (22, 368640), (21, 368612), (7, 368576), (6, 368528),
  (20, 368472), (19, 368428), (5, 368424), (4, 368404), (18, 368348), (17, 368308), (3, 368304), (2, 368284),
  (16, 368228), (1, 368200), (15, 368200)]
theorem localLabelsFinal_498_eq : LabToTarget.sectionLabels 368184 Alignment498.lines [] = (368948, localLabelsFinal_498) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_498_eq
end InitECandidate.Proofs.BackendStages
