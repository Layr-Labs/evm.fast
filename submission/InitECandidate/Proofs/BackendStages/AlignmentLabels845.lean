import InitECandidate.Proofs.BackendStages.Alignment845
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_845 : List (Nat × Nat) :=
[(28, 915516), (27, 915504), (13, 915492), (12, 915464), (26, 915408), (25, 915368), (11, 915356), (10, 915328),
  (24, 915272), (23, 915116), (9, 915096), (8, 915060), (22, 915004), (21, 914956), (7, 914944), (6, 914916),
  (20, 914860), (19, 914700), (5, 914688), (4, 914660), (18, 914604), (17, 914444), (3, 914436), (2, 914412),
  (16, 914356), (1, 914312), (15, 914312)]
theorem localLabelsFinal_845_eq : LabToTarget.sectionLabels 914296 Alignment845.lines [] = (915516, localLabelsFinal_845) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_845_eq
end InitECandidate.Proofs.BackendStages
