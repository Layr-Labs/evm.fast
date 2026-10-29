import InitECandidate.Proofs.BackendStages.Alignment127
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_127 : List (Nat × Nat) :=
[(52, 21264), (50, 21252), (51, 21244), (49, 21148), (47, 21144), (48, 21136), (46, 21108), (25, 21056), (45, 21008),
  (44, 20964), (41, 20880), (42, 20864), (40, 20772), (43, 20716), (38, 20632), (39, 20624), (37, 20480), (31, 20440),
  (36, 20432), (35, 20428), (33, 20420), (32, 20408), (34, 20360), (30, 20304), (29, 20296), (28, 20176), (27, 20172),
  (7, 20100), (6, 20008), (26, 19952), (24, 19760), (22, 19648), (23, 19632), (21, 19524), (19, 19432), (20, 19424),
  (18, 19324), (17, 19320), (5, 19280), (4, 19224), (16, 19168), (15, 19068), (11, 19044), (14, 19008), (13, 18964),
  (3, 18920), (2, 18856), (12, 18800), (10, 18724), (1, 18672), (9, 18672)]
theorem localLabelsFinal_127_eq : LabToTarget.sectionLabels 18656 Alignment127.lines [] = (21264, localLabelsFinal_127) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_127_eq
end InitECandidate.Proofs.BackendStages
