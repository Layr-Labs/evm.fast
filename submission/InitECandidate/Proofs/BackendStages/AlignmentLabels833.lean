import InitECandidate.Proofs.BackendStages.Alignment833
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_833 : List (Nat × Nat) :=
[(24, 900188), (23, 900136), (11, 900124), (10, 900100), (22, 900044), (21, 900004), (9, 899988), (8, 899960),
  (20, 899904), (19, 899864), (7, 899860), (6, 899840), (18, 899784), (17, 899752), (5, 899748), (4, 899732),
  (16, 899676), (15, 899632), (3, 899628), (2, 899608), (14, 899552), (1, 899488), (13, 899488)]
theorem localLabelsFinal_833_eq : LabToTarget.sectionLabels 899472 Alignment833.lines [] = (900188, localLabelsFinal_833) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_833_eq
end InitECandidate.Proofs.BackendStages
