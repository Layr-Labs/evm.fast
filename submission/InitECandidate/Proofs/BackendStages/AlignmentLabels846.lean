import InitECandidate.Proofs.BackendStages.Alignment846
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_846 : List (Nat × Nat) :=
[(29, 916292), (13, 916272), (28, 916252), (27, 916232), (25, 916196), (7, 916160), (6, 916112), (24, 916056),
  (23, 915988), (5, 915968), (4, 915932), (22, 915876), (26, 915804), (21, 915776), (20, 915772), (19, 915760),
  (18, 915756), (17, 915744), (16, 915740), (15, 915728), (14, 915724), (12, 915680), (11, 915664), (3, 915656),
  (2, 915632), (10, 915576), (1, 915532), (9, 915532)]
theorem localLabelsFinal_846_eq : LabToTarget.sectionLabels 915516 Alignment846.lines [] = (916292, localLabelsFinal_846) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_846_eq
end InitECandidate.Proofs.BackendStages
