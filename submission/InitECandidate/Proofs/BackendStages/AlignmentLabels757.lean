import InitECandidate.Proofs.BackendStages.Alignment757
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_757 : List (Nat × Nat) :=
[(24, 756220), (23, 756208), (11, 756196), (10, 756172), (22, 756116), (21, 756080), (9, 756072), (8, 756048),
  (20, 755992), (19, 755956), (7, 755936), (6, 755904), (18, 755848), (17, 755812), (5, 755808), (4, 755788),
  (16, 755732), (15, 755696), (3, 755692), (2, 755672), (14, 755616), (1, 755580), (13, 755580)]
theorem localLabelsFinal_757_eq : LabToTarget.sectionLabels 755564 Alignment757.lines [] = (756220, localLabelsFinal_757) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_757_eq
end InitECandidate.Proofs.BackendStages
