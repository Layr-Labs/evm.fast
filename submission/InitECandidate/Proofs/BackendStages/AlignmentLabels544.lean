import InitECandidate.Proofs.BackendStages.Alignment544
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_544 : List (Nat × Nat) :=
[(32, 402300), (31, 402288), (11, 402280), (10, 402260), (30, 402204), (29, 402176), (9, 402172), (8, 402156),
  (28, 402100), (27, 402072), (26, 402028), (7, 402016), (6, 401988), (25, 401932), (24, 401900), (23, 401892),
  (22, 401860), (21, 401832), (20, 401828), (19, 401812), (18, 401808), (17, 401792), (5, 401788), (4, 401768),
  (16, 401712), (15, 401688), (3, 401684), (2, 401668), (14, 401612), (1, 401580), (13, 401580)]
theorem localLabelsFinal_544_eq : LabToTarget.sectionLabels 401564 Alignment544.lines [] = (402300, localLabelsFinal_544) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_544_eq
end InitECandidate.Proofs.BackendStages
