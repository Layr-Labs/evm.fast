import InitECandidate.Proofs.BackendStages.Alignment267
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_267 : List (Nat × Nat) :=
[(36, 207640), (35, 207628), (17, 207620), (16, 207600), (34, 207544), (33, 207516), (15, 207508), (14, 207488),
  (32, 207432), (31, 207396), (13, 207384), (12, 207360), (30, 207304), (29, 207268), (11, 207256), (10, 207232),
  (28, 207176), (27, 207132), (9, 207120), (8, 207096), (26, 207040), (25, 206992), (7, 206980), (6, 206956),
  (24, 206900), (23, 206864), (5, 206856), (4, 206832), (22, 206776), (21, 206744), (3, 206740), (2, 206720),
  (20, 206664), (1, 206628), (19, 206628)]
theorem localLabelsFinal_267_eq : LabToTarget.sectionLabels 206612 Alignment267.lines [] = (207640, localLabelsFinal_267) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_267_eq
end InitECandidate.Proofs.BackendStages
