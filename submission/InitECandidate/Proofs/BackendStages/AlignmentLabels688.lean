import InitECandidate.Proofs.BackendStages.Alignment688
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_688 : List (Nat × Nat) :=
[(51, 630320), (27, 630304), (50, 630288), (49, 630220), (23, 630184), (22, 630132), (48, 630076), (47, 630044),
  (21, 629976), (20, 629880), (46, 629824), (45, 629772), (19, 629768), (18, 629748), (44, 629692), (43, 629632),
  (17, 629596), (16, 629544), (42, 629488), (41, 629428), (15, 629344), (14, 629244), (40, 629188), (39, 629128),
  (13, 629044), (12, 628944), (38, 628888), (37, 628828), (11, 628704), (10, 628564), (36, 628508), (35, 628416),
  (9, 628380), (8, 628328), (34, 628272), (33, 628100), (7, 628076), (6, 628036), (32, 627980), (31, 627920),
  (5, 627900), (4, 627864), (30, 627808), (29, 627776), (3, 627724), (2, 627644), (28, 627588), (26, 627440),
  (1, 627424), (25, 627424)]
theorem localLabelsFinal_688_eq : LabToTarget.sectionLabels 627408 Alignment688.lines [] = (630320, localLabelsFinal_688) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_688_eq
end InitECandidate.Proofs.BackendStages
