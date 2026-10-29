import InitECandidate.Proofs.BackendStages.Alignment485
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_485 : List (Nat × Nat) :=
[(45, 364372), (13, 364360), (44, 364352), (43, 364344), (42, 364308), (41, 364304), (40, 364300), (39, 364296),
  (37, 364296), (35, 364296), (34, 364280), (33, 364276), (32, 364260), (31, 364256), (36, 364232), (38, 364216),
  (30, 364204), (28, 364204), (26, 364204), (25, 364188), (24, 364184), (23, 364168), (22, 364164), (27, 364136),
  (29, 364120), (21, 364104), (20, 364100), (19, 364084), (18, 364080), (17, 364052), (16, 364048), (15, 364032),
  (14, 364028), (12, 363988), (11, 363984), (5, 363964), (4, 363932), (10, 363876), (9, 363824), (3, 363816),
  (2, 363792), (8, 363736), (1, 363680), (7, 363680)]
theorem localLabelsFinal_485_eq : LabToTarget.sectionLabels 363664 Alignment485.lines [] = (364372, localLabelsFinal_485) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_485_eq
end InitECandidate.Proofs.BackendStages
