import InitECandidate.Proofs.BackendStages.Alignment802
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_802 : List (Nat × Nat) :=
[(43, 858696), (42, 858684), (19, 858676), (18, 858656), (41, 858600), (40, 858568), (17, 858560), (16, 858540),
  (39, 858484), (31, 858436), (38, 858404), (37, 858380), (15, 858336), (14, 858280), (36, 858224), (35, 858184),
  (13, 858172), (12, 858148), (34, 858092), (33, 857992), (11, 857968), (10, 857932), (32, 857876), (30, 857788),
  (29, 857784), (9, 857744), (8, 857692), (28, 857636), (27, 857568), (7, 857544), (6, 857504), (26, 857448),
  (25, 857412), (5, 857408), (4, 857388), (24, 857332), (23, 857296), (3, 857292), (2, 857272), (22, 857216),
  (1, 857164), (21, 857164)]
theorem localLabelsFinal_802_eq : LabToTarget.sectionLabels 857148 Alignment802.lines [] = (858696, localLabelsFinal_802) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_802_eq
end InitECandidate.Proofs.BackendStages
