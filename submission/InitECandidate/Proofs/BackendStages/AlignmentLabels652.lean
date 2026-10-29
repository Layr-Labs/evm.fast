import InitECandidate.Proofs.BackendStages.Alignment652
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_652 : List (Nat × Nat) :=
[(47, 569676), (31, 569660), (46, 569568), (45, 569476), (43, 569424), (19, 569272), (18, 569108), (42, 569052),
  (44, 568944), (41, 568832), (17, 568768), (16, 568688), (40, 568632), (39, 568580), (37, 568580), (15, 568500),
  (14, 568408), (36, 568352), (38, 568232), (35, 568168), (13, 568164), (12, 568144), (34, 568088), (33, 568036),
  (11, 567988), (10, 567928), (32, 567872), (30, 567664), (29, 567660), (9, 567644), (8, 567612), (28, 567556),
  (27, 567516), (7, 567508), (6, 567484), (26, 567428), (25, 567376), (5, 567308), (4, 567224), (24, 567168),
  (23, 567120), (3, 567028), (2, 566924), (22, 566868), (1, 566720), (21, 566720)]
theorem localLabelsFinal_652_eq : LabToTarget.sectionLabels 566704 Alignment652.lines [] = (569676, localLabelsFinal_652) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_652_eq
end InitECandidate.Proofs.BackendStages
