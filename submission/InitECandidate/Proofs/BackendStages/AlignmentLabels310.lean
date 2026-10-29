import InitECandidate.Proofs.BackendStages.Alignment310
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_310 : List (Nat × Nat) :=
[(25, 243236), (24, 243220), (11, 243204), (10, 243176), (23, 243120), (22, 243084), (9, 243072), (8, 243044),
  (21, 242988), (20, 242948), (19, 242932), (7, 242920), (6, 242896), (18, 242840), (17, 242792), (5, 242788),
  (4, 242768), (16, 242712), (15, 242684), (3, 242680), (2, 242664), (14, 242608), (1, 242544), (13, 242544)]
theorem localLabelsFinal_310_eq : LabToTarget.sectionLabels 242528 Alignment310.lines [] = (243236, localLabelsFinal_310) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_310_eq
end InitECandidate.Proofs.BackendStages
