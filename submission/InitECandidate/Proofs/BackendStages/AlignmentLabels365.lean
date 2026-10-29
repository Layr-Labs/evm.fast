import InitECandidate.Proofs.BackendStages.Alignment365
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_365 : List (Nat × Nat) :=
[(47, 282716), (29, 282692), (46, 282668), (45, 282640), (21, 282608), (20, 282560), (44, 282504), (43, 282456),
  (19, 282444), (18, 282416), (42, 282360), (41, 282308), (17, 282296), (16, 282268), (40, 282212), (39, 282172),
  (15, 282160), (14, 282132), (38, 282076), (37, 282036), (13, 282024), (12, 281996), (36, 281940), (35, 281896),
  (11, 281884), (10, 281856), (34, 281800), (33, 281748), (9, 281736), (8, 281708), (32, 281652), (31, 281620),
  (7, 281612), (6, 281588), (30, 281532), (28, 281452), (27, 281436), (5, 281420), (4, 281388), (26, 281332),
  (25, 281296), (3, 281288), (2, 281264), (24, 281208), (1, 281160), (23, 281160)]
theorem localLabelsFinal_365_eq : LabToTarget.sectionLabels 281144 Alignment365.lines [] = (282716, localLabelsFinal_365) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_365_eq
end InitECandidate.Proofs.BackendStages
