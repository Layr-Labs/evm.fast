import InitECandidate.Proofs.BackendStages.Alignment666
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_666 : List (Nat × Nat) :=
[(28, 597784), (27, 597736), (13, 597708), (12, 597664), (26, 597608), (25, 597548), (11, 597504), (10, 597444),
  (24, 597388), (23, 597328), (9, 597260), (8, 597176), (22, 597120), (21, 597060), (7, 597000), (6, 596924),
  (20, 596868), (19, 596808), (5, 596700), (4, 596576), (18, 596520), (17, 596428), (3, 596392), (2, 596340),
  (16, 596284), (1, 596108), (15, 596108)]
theorem localLabelsFinal_666_eq : LabToTarget.sectionLabels 596092 Alignment666.lines [] = (597784, localLabelsFinal_666) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_666_eq
end InitECandidate.Proofs.BackendStages
