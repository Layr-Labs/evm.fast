import InitECandidate.Proofs.BackendStages.Alignment576
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_576 : List (Nat × Nat) :=
[(52, 432476), (51, 432464), (21, 432456), (20, 432436), (50, 432380), (49, 432352), (19, 432348), (18, 432332),
  (48, 432276), (47, 432248), (17, 432228), (16, 432196), (46, 432140), (45, 432096), (15, 432088), (14, 432064),
  (44, 432008), (43, 431960), (42, 431932), (41, 431920), (13, 431912), (12, 431892), (40, 431836), (39, 431808),
  (11, 431804), (10, 431788), (38, 431732), (37, 431668), (36, 431664), (35, 431648), (34, 431644), (33, 431628),
  (32, 431624), (31, 431612), (9, 431600), (8, 431572), (30, 431516), (29, 431476), (7, 431456), (6, 431420),
  (28, 431364), (27, 431340), (5, 431336), (4, 431320), (26, 431264), (25, 431220), (3, 431216), (2, 431196),
  (24, 431140), (1, 431112), (23, 431112)]
theorem localLabelsFinal_576_eq : LabToTarget.sectionLabels 431096 Alignment576.lines [] = (432476, localLabelsFinal_576) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_576_eq
end InitECandidate.Proofs.BackendStages
