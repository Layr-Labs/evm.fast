import InitECandidate.Proofs.BackendStages.Alignment702
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_702 : List (Nat × Nat) :=
[(33, 666040), (32, 665988), (31, 665964), (15, 665948), (14, 665920), (30, 665864), (29, 665828), (13, 665820),
  (12, 665796), (28, 665740), (27, 665704), (11, 665692), (10, 665668), (26, 665612), (25, 665564), (9, 665556),
  (8, 665532), (24, 665476), (23, 665440), (7, 665436), (6, 665416), (22, 665360), (21, 665328), (5, 665324),
  (4, 665304), (20, 665248), (19, 665216), (3, 665212), (2, 665196), (18, 665140), (1, 665076), (17, 665076)]
theorem localLabelsFinal_702_eq : LabToTarget.sectionLabels 665060 Alignment702.lines [] = (666040, localLabelsFinal_702) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_702_eq
end InitECandidate.Proofs.BackendStages
