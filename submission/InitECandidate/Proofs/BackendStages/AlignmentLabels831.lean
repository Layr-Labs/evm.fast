import InitECandidate.Proofs.BackendStages.Alignment831
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_831 : List (Nat × Nat) :=
[(20, 897140), (19, 897088), (9, 897076), (8, 897052), (18, 896996), (17, 896960), (7, 896948), (6, 896920),
  (16, 896864), (15, 896832), (5, 896828), (4, 896812), (14, 896756), (13, 896712), (3, 896708), (2, 896688),
  (12, 896632), (1, 896568), (11, 896568)]
theorem localLabelsFinal_831_eq : LabToTarget.sectionLabels 896552 Alignment831.lines [] = (897140, localLabelsFinal_831) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_831_eq
end InitECandidate.Proofs.BackendStages
