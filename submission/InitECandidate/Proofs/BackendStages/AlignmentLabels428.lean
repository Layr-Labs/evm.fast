import InitECandidate.Proofs.BackendStages.Alignment428
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_428 : List (Nat × Nat) :=
[(20, 319020), (19, 319008), (9, 319000), (8, 318980), (18, 318924), (17, 318876), (7, 318864), (6, 318832),
  (16, 318776), (15, 318732), (5, 318704), (4, 318660), (14, 318604), (13, 318576), (3, 318572), (2, 318552),
  (12, 318496), (1, 318448), (11, 318448)]
theorem localLabelsFinal_428_eq : LabToTarget.sectionLabels 318432 Alignment428.lines [] = (319020, localLabelsFinal_428) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_428_eq
end InitECandidate.Proofs.BackendStages
