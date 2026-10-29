import InitECandidate.Proofs.BackendStages.Alignment699
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_699 : List (Nat × Nat) :=
[(37, 658264), (36, 658252), (17, 658244), (16, 658224), (35, 658168), (34, 658136), (15, 658128), (14, 658108),
  (33, 658052), (32, 658020), (13, 658000), (12, 657968), (31, 657912), (30, 657852), (11, 657844), (10, 657820),
  (29, 657764), (28, 657728), (27, 657716), (9, 657708), (8, 657688), (26, 657632), (25, 657584), (7, 657568),
  (6, 657536), (24, 657480), (23, 657440), (5, 657432), (4, 657408), (22, 657352), (21, 657316), (3, 657312),
  (2, 657292), (20, 657236), (1, 657196), (19, 657196)]
theorem localLabelsFinal_699_eq : LabToTarget.sectionLabels 657180 Alignment699.lines [] = (658264, localLabelsFinal_699) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_699_eq
end InitECandidate.Proofs.BackendStages
