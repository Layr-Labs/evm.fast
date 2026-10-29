import InitECandidate.Proofs.BackendStages.Alignment570
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_570 : List (Nat × Nat) :=
[(50, 428636), (49, 428624), (23, 428616), (22, 428596), (48, 428540), (47, 428512), (41, 428512), (17, 428508),
  (16, 428492), (40, 428436), (46, 428396), (45, 428392), (21, 428388), (20, 428372), (44, 428316), (43, 428288),
  (19, 428284), (18, 428264), (42, 428208), (39, 428168), (15, 428160), (14, 428136), (38, 428080), (37, 428048),
  (13, 428044), (12, 428024), (36, 427968), (35, 427940), (11, 427932), (10, 427912), (34, 427856), (33, 427824),
  (9, 427812), (8, 427788), (32, 427732), (31, 427700), (7, 427696), (6, 427676), (30, 427620), (29, 427588),
  (5, 427584), (4, 427564), (28, 427508), (27, 427480), (3, 427476), (2, 427456), (26, 427400), (1, 427372),
  (25, 427372)]
theorem localLabelsFinal_570_eq : LabToTarget.sectionLabels 427356 Alignment570.lines [] = (428636, localLabelsFinal_570) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_570_eq
end InitECandidate.Proofs.BackendStages
