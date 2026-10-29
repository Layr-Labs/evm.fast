import InitECandidate.Proofs.BackendStages.Alignment578
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_578 : List (Nat × Nat) :=
[(20, 433496), (19, 433484), (9, 433476), (8, 433456), (18, 433400), (17, 433372), (7, 433368), (6, 433352),
  (16, 433296), (15, 433268), (5, 433264), (4, 433244), (14, 433188), (13, 433164), (3, 433160), (2, 433144),
  (12, 433088), (1, 433056), (11, 433056)]
theorem localLabelsFinal_578_eq : LabToTarget.sectionLabels 433040 Alignment578.lines [] = (433496, localLabelsFinal_578) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_578_eq
end InitECandidate.Proofs.BackendStages
