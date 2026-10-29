import InitECandidate.Proofs.BackendStages.Alignment549
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_549 : List (Nat × Nat) :=
[(42, 407624), (41, 407612), (19, 407604), (18, 407584), (40, 407528), (39, 407500), (17, 407496), (16, 407480),
  (38, 407424), (37, 407396), (15, 407392), (14, 407372), (36, 407316), (35, 407288), (29, 407288), (9, 407276),
  (8, 407252), (28, 407196), (34, 407168), (33, 407164), (13, 407152), (12, 407128), (32, 407072), (31, 407036),
  (11, 407024), (10, 407000), (30, 406944), (27, 406904), (7, 406900), (6, 406880), (26, 406824), (25, 406768),
  (5, 406760), (4, 406740), (24, 406684), (23, 406636), (3, 406632), (2, 406612), (22, 406556), (1, 406528),
  (21, 406528)]
theorem localLabelsFinal_549_eq : LabToTarget.sectionLabels 406512 Alignment549.lines [] = (407624, localLabelsFinal_549) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_549_eq
end InitECandidate.Proofs.BackendStages
