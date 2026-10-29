import InitECandidate.Proofs.BackendStages.Alignment411
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_411 : List (Nat × Nat) :=
[(22, 310336), (21, 310324), (9, 310316), (8, 310292), (20, 310236), (19, 310208), (7, 310196), (6, 310172),
  (18, 310116), (17, 310080), (16, 310044), (5, 310032), (4, 310004), (15, 309948), (14, 309884), (13, 309852),
  (3, 309836), (2, 309804), (12, 309748), (1, 309684), (11, 309684)]
theorem localLabelsFinal_411_eq : LabToTarget.sectionLabels 309668 Alignment411.lines [] = (310336, localLabelsFinal_411) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_411_eq
end InitECandidate.Proofs.BackendStages
