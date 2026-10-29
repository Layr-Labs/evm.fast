import InitECandidate.Proofs.BackendStages.Alignment199
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_199 : List (Nat × Nat) :=
[(36, 106444), (35, 106424), (17, 106408), (16, 106380), (34, 106324), (33, 106280), (15, 106260), (14, 106224),
  (32, 106168), (31, 106120), (13, 106104), (12, 106076), (30, 106020), (29, 105968), (11, 105956), (10, 105928),
  (28, 105872), (27, 105824), (9, 105808), (8, 105780), (26, 105724), (25, 105664), (7, 105648), (6, 105616),
  (24, 105560), (23, 105512), (5, 105500), (4, 105476), (22, 105420), (21, 105380), (3, 105372), (2, 105348),
  (20, 105292), (1, 105236), (19, 105236)]
theorem localLabelsFinal_199_eq : LabToTarget.sectionLabels 105220 Alignment199.lines [] = (106444, localLabelsFinal_199) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_199_eq
end InitECandidate.Proofs.BackendStages
