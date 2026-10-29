import InitECandidate.Proofs.BackendStages.Alignment786
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_786 : List (Nat × Nat) :=
[(40, 805832), (39, 805820), (19, 805808), (18, 805784), (38, 805728), (37, 805692), (17, 805684), (16, 805660),
  (36, 805604), (35, 805572), (15, 805560), (14, 805536), (34, 805480), (33, 805424), (13, 805416), (12, 805396),
  (32, 805340), (31, 805304), (11, 805292), (10, 805268), (30, 805212), (29, 805172), (9, 805160), (8, 805136),
  (28, 805080), (27, 805040), (7, 805020), (6, 804984), (26, 804928), (25, 804892), (5, 804888), (4, 804868),
  (24, 804812), (23, 804776), (3, 804772), (2, 804752), (22, 804696), (1, 804656), (21, 804656)]
theorem localLabelsFinal_786_eq : LabToTarget.sectionLabels 804640 Alignment786.lines [] = (805832, localLabelsFinal_786) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_786_eq
end InitECandidate.Proofs.BackendStages
