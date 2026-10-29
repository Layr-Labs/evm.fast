import InitECandidate.Proofs.BackendStages.Alignment414
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_414 : List (Nat × Nat) :=
[(26, 311456), (25, 311444), (9, 311436), (8, 311412), (24, 311356), (23, 311328), (7, 311320), (6, 311300),
  (22, 311244), (21, 311208), (19, 311208), (20, 311184), (18, 311172), (5, 311160), (4, 311132), (17, 311076),
  (16, 311020), (14, 311020), (15, 310996), (13, 310984), (3, 310972), (2, 310944), (12, 310888), (1, 310832),
  (11, 310832)]
theorem localLabelsFinal_414_eq : LabToTarget.sectionLabels 310816 Alignment414.lines [] = (311456, localLabelsFinal_414) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_414_eq
end InitECandidate.Proofs.BackendStages
