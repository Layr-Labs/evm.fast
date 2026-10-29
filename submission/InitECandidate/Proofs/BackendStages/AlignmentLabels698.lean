import InitECandidate.Proofs.BackendStages.Alignment698
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_698 : List (Nat × Nat) :=
[(46, 657180), (45, 657168), (21, 657160), (20, 657140), (44, 657084), (43, 657052), (19, 657044), (18, 657024),
  (42, 656968), (41, 656936), (17, 656916), (16, 656884), (40, 656828), (39, 656788), (38, 656776), (15, 656768),
  (14, 656748), (37, 656692), (36, 656644), (13, 656632), (12, 656604), (35, 656548), (34, 656512), (33, 656500),
  (11, 656492), (10, 656472), (32, 656416), (31, 656368), (9, 656356), (8, 656328), (30, 656272), (29, 656228),
  (7, 656216), (6, 656188), (28, 656132), (27, 656096), (5, 656092), (4, 656072), (26, 656016), (25, 655980),
  (3, 655976), (2, 655956), (24, 655900), (1, 655860), (23, 655860)]
theorem localLabelsFinal_698_eq : LabToTarget.sectionLabels 655844 Alignment698.lines [] = (657180, localLabelsFinal_698) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_698_eq
end InitECandidate.Proofs.BackendStages
