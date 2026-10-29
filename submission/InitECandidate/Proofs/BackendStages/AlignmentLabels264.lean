import InitECandidate.Proofs.BackendStages.Alignment264
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_264 : List (Nat × Nat) :=
[(28, 203580), (27, 203568), (13, 203560), (12, 203540), (26, 203484), (25, 203456), (11, 203448), (10, 203428),
  (24, 203372), (23, 203336), (9, 203324), (8, 203300), (22, 203244), (21, 203204), (7, 203192), (6, 203168),
  (20, 203112), (19, 203072), (5, 203064), (4, 203040), (18, 202984), (17, 202952), (3, 202948), (2, 202928),
  (16, 202872), (1, 202836), (15, 202836)]
theorem localLabelsFinal_264_eq : LabToTarget.sectionLabels 202820 Alignment264.lines [] = (203580, localLabelsFinal_264) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_264_eq
end InitECandidate.Proofs.BackendStages
