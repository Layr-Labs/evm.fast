import InitECandidate.Proofs.BackendStages.Alignment834
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_834 : List (Nat × Nat) :=
[(47, 902292), (46, 902240), (17, 902228), (16, 902204), (45, 902148), (41, 902100), (44, 902056), (43, 902020),
  (15, 901980), (14, 901928), (42, 901872), (40, 901772), (39, 901764), (13, 901744), (12, 901712), (38, 901656),
  (36, 901344), (37, 901336), (35, 901176), (33, 901164), (34, 901156), (32, 901004), (31, 901000), (11, 900964),
  (10, 900912), (30, 900856), (29, 900820), (9, 900816), (8, 900796), (28, 900740), (27, 900704), (7, 900700),
  (6, 900680), (26, 900624), (25, 900592), (5, 900588), (4, 900568), (24, 900512), (23, 900476), (22, 900452),
  (3, 900444), (2, 900424), (21, 900368), (20, 900252), (1, 900204), (19, 900204)]
theorem localLabelsFinal_834_eq : LabToTarget.sectionLabels 900188 Alignment834.lines [] = (902292, localLabelsFinal_834) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_834_eq
end InitECandidate.Proofs.BackendStages
