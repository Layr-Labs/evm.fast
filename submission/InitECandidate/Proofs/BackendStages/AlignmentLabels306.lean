import InitECandidate.Proofs.BackendStages.Alignment306
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_306 : List (Nat × Nat) :=
[(31, 241960), (11, 241936), (30, 241912), (29, 241892), (25, 241884), (24, 241856), (7, 241828), (6, 241784),
  (23, 241728), (22, 241668), (28, 241636), (27, 241604), (26, 241584), (21, 241516), (20, 241496), (18, 241496),
  (17, 241468), (5, 241456), (4, 241428), (16, 241372), (19, 241336), (15, 241308), (13, 241308), (3, 241284),
  (2, 241248), (12, 241192), (14, 241140), (10, 241104), (1, 241080), (9, 241080)]
theorem localLabelsFinal_306_eq : LabToTarget.sectionLabels 241064 Alignment306.lines [] = (241960, localLabelsFinal_306) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_306_eq
end InitECandidate.Proofs.BackendStages
