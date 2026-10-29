import InitECandidate.Proofs.BackendStages.Alignment158
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_158 : List (Nat × Nat) :=
[(33, 87580), (32, 87568), (31, 87520), (30, 87516), (13, 87508), (12, 87488), (29, 87432), (28, 87388), (11, 87376),
  (10, 87352), (27, 87296), (26, 87212), (9, 87200), (8, 87176), (25, 87120), (24, 87072), (7, 87040), (6, 86996),
  (23, 86940), (19, 86884), (22, 86860), (21, 86852), (5, 86816), (4, 86768), (20, 86712), (18, 86644), (17, 86632),
  (3, 86616), (2, 86588), (16, 86532), (1, 86460), (15, 86460)]
theorem localLabelsFinal_158_eq : LabToTarget.sectionLabels 86444 Alignment158.lines [] = (87580, localLabelsFinal_158) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_158_eq
end InitECandidate.Proofs.BackendStages
