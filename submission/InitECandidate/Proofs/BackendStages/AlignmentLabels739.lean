import InitECandidate.Proofs.BackendStages.Alignment739
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_739 : List (Nat × Nat) :=
[(36, 739424), (35, 739360), (17, 739324), (16, 739272), (34, 739216), (33, 739184), (15, 739124), (14, 739048),
  (32, 738992), (31, 738916), (13, 738808), (12, 738684), (30, 738628), (29, 738504), (11, 738452), (10, 738384),
  (28, 738328), (27, 738296), (9, 738164), (8, 737996), (26, 737940), (25, 737864), (7, 737708), (6, 737536),
  (24, 737480), (23, 737404), (5, 737208), (4, 736996), (22, 736940), (21, 736816), (3, 736764), (2, 736696),
  (20, 736640), (1, 736392), (19, 736392)]
theorem localLabelsFinal_739_eq : LabToTarget.sectionLabels 736376 Alignment739.lines [] = (739424, localLabelsFinal_739) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_739_eq
end InitECandidate.Proofs.BackendStages
