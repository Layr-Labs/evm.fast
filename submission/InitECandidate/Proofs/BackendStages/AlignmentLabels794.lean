import InitECandidate.Proofs.BackendStages.Alignment794
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_794 : List (Nat × Nat) :=
[(50, 827320), (49, 827308), (23, 827300), (22, 827280), (48, 827224), (47, 827192), (21, 827184), (20, 827164),
  (46, 827108), (45, 827076), (19, 827056), (18, 827024), (44, 826968), (43, 826884), (17, 826852), (16, 826808),
  (42, 826752), (41, 826716), (15, 826696), (14, 826664), (40, 826608), (39, 826568), (13, 826524), (12, 826464),
  (38, 826408), (37, 826372), (11, 826368), (10, 826348), (36, 826292), (35, 826256), (9, 826252), (8, 826232),
  (34, 826176), (33, 826140), (7, 826136), (6, 826116), (32, 826060), (31, 826028), (30, 826008), (5, 826000),
  (4, 825976), (29, 825920), (28, 825880), (27, 825860), (3, 825848), (2, 825820), (26, 825764), (1, 825716),
  (25, 825716)]
theorem localLabelsFinal_794_eq : LabToTarget.sectionLabels 825700 Alignment794.lines [] = (827320, localLabelsFinal_794) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_794_eq
end InitECandidate.Proofs.BackendStages
