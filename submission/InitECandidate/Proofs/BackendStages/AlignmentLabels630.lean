import InitECandidate.Proofs.BackendStages.Alignment630
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_630 : List (Nat × Nat) :=
[(26, 526516), (16, 526232), (25, 526180), (24, 525848), (9, 525784), (8, 525704), (23, 525648), (22, 525608),
  (7, 525600), (6, 525576), (21, 525520), (20, 525192), (5, 525140), (4, 525072), (19, 525016), (18, 524976),
  (3, 524968), (2, 524944), (17, 524888), (15, 524756), (13, 524684), (14, 524664), (12, 524544), (1, 524528),
  (11, 524528)]
theorem localLabelsFinal_630_eq : LabToTarget.sectionLabels 524512 Alignment630.lines [] = (526516, localLabelsFinal_630) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_630_eq
end InitECandidate.Proofs.BackendStages
