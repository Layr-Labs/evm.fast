import InitECandidate.Proofs.BackendStages.Alignment842
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_842 : List (Nat × Nat) :=
[(34, 912180), (33, 912168), (13, 912160), (12, 912136), (32, 912080), (17, 912040), (31, 912020), (30, 912000),
  (11, 911972), (10, 911928), (29, 911872), (28, 911832), (9, 911788), (8, 911728), (27, 911672), (26, 911628),
  (7, 911608), (6, 911572), (25, 911516), (21, 911484), (24, 911436), (23, 911416), (5, 911368), (4, 911304),
  (22, 911248), (20, 911144), (19, 911116), (3, 911064), (2, 910996), (18, 910940), (16, 910840), (1, 910808),
  (15, 910808)]
theorem localLabelsFinal_842_eq : LabToTarget.sectionLabels 910792 Alignment842.lines [] = (912180, localLabelsFinal_842) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_842_eq
end InitECandidate.Proofs.BackendStages
