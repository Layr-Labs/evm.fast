import InitECandidate.Proofs.BackendStages.Alignment228
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_228 : List (Nat × Nat) :=
[(33, 152368), (32, 152356), (15, 152348), (14, 152328), (31, 152272), (30, 152244), (13, 152220), (12, 152168),
  (29, 152112), (28, 152056), (11, 152020), (10, 151968), (27, 151912), (26, 151820), (9, 151796), (8, 151744),
  (25, 151688), (24, 151644), (7, 151616), (6, 151572), (23, 151516), (22, 151472), (5, 151468), (4, 151448),
  (21, 151392), (20, 151360), (19, 151340), (3, 151316), (2, 151276), (18, 151220), (1, 151152), (17, 151152)]
theorem localLabelsFinal_228_eq : LabToTarget.sectionLabels 151136 Alignment228.lines [] = (152368, localLabelsFinal_228) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_228_eq
end InitECandidate.Proofs.BackendStages
