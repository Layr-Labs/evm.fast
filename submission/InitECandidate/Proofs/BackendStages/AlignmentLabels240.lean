import InitECandidate.Proofs.BackendStages.Alignment240
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_240 : List (Nat × Nat) :=
[(31, 176916), (30, 176904), (13, 176896), (12, 176876), (29, 176820), (28, 176792), (11, 176784), (10, 176764),
  (27, 176708), (25, 176684), (26, 176676), (24, 176632), (23, 176624), (9, 176592), (8, 176548), (22, 176492),
  (21, 176452), (7, 176444), (6, 176424), (20, 176368), (19, 176328), (5, 176316), (4, 176288), (18, 176232),
  (17, 176200), (3, 176196), (2, 176176), (16, 176120), (1, 176080), (15, 176080)]
theorem localLabelsFinal_240_eq : LabToTarget.sectionLabels 176064 Alignment240.lines [] = (176916, localLabelsFinal_240) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_240_eq
end InitECandidate.Proofs.BackendStages
