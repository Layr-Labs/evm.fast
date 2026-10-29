import InitECandidate.Proofs.BackendStages.Alignment332
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_332 : List (Nat × Nat) :=
[(31, 261456), (30, 261444), (13, 261436), (12, 261416), (29, 261360), (28, 261332), (11, 261324), (10, 261304),
  (27, 261248), (21, 261200), (26, 261172), (25, 261152), (9, 261120), (8, 261076), (24, 261020), (23, 260948),
  (7, 260932), (6, 260900), (22, 260844), (20, 260768), (19, 260760), (5, 260752), (4, 260728), (18, 260672),
  (17, 260636), (3, 260632), (2, 260612), (16, 260556), (1, 260516), (15, 260516)]
theorem localLabelsFinal_332_eq : LabToTarget.sectionLabels 260500 Alignment332.lines [] = (261456, localLabelsFinal_332) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_332_eq
end InitECandidate.Proofs.BackendStages
