import InitECandidate.Proofs.BackendStages.Alignment552
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_552 : List (Nat × Nat) :=
[(32, 413440), (31, 413428), (15, 413420), (14, 413400), (30, 413344), (29, 413316), (13, 413312), (12, 413296),
  (28, 413240), (27, 413192), (11, 413168), (10, 413132), (26, 413076), (25, 413028), (9, 412992), (8, 412944),
  (24, 412888), (23, 412844), (7, 412840), (6, 412820), (22, 412764), (21, 412724), (5, 412720), (4, 412700),
  (20, 412644), (19, 412620), (3, 412616), (2, 412600), (18, 412544), (1, 412516), (17, 412516)]
theorem localLabelsFinal_552_eq : LabToTarget.sectionLabels 412500 Alignment552.lines [] = (413440, localLabelsFinal_552) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_552_eq
end InitECandidate.Proofs.BackendStages
