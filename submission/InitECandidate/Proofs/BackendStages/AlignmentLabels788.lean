import InitECandidate.Proofs.BackendStages.Alignment788
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_788 : List (Nat × Nat) :=
[(36, 808180), (35, 808168), (17, 808160), (16, 808140), (34, 808084), (33, 808052), (15, 808044), (14, 808024),
  (32, 807968), (31, 807932), (13, 807912), (12, 807880), (30, 807824), (29, 807780), (11, 807768), (10, 807744),
  (28, 807688), (27, 807644), (9, 807632), (8, 807608), (26, 807552), (25, 807512), (7, 807500), (6, 807476),
  (24, 807420), (23, 807384), (5, 807376), (4, 807352), (22, 807296), (21, 807260), (3, 807256), (2, 807236),
  (20, 807180), (1, 807140), (19, 807140)]
theorem localLabelsFinal_788_eq : LabToTarget.sectionLabels 807124 Alignment788.lines [] = (808180, localLabelsFinal_788) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_788_eq
end InitECandidate.Proofs.BackendStages
