import InitECandidate.Proofs.BackendStages.Alignment615
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_615 : List (Nat × Nat) :=
[(40, 487244), (39, 487232), (19, 487224), (18, 487204), (38, 487148), (37, 487116), (17, 487108), (16, 487088),
  (36, 487032), (35, 486992), (15, 486972), (14, 486940), (34, 486884), (33, 486844), (13, 486836), (12, 486812),
  (32, 486756), (31, 486724), (11, 486720), (10, 486704), (30, 486648), (29, 486608), (9, 486576), (8, 486532),
  (28, 486476), (27, 486436), (7, 486400), (6, 486352), (26, 486296), (25, 486248), (5, 486240), (4, 486216),
  (24, 486160), (23, 486124), (3, 486120), (2, 486100), (22, 486044), (1, 485992), (21, 485992)]
theorem localLabelsFinal_615_eq : LabToTarget.sectionLabels 485976 Alignment615.lines [] = (487244, localLabelsFinal_615) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_615_eq
end InitECandidate.Proofs.BackendStages
