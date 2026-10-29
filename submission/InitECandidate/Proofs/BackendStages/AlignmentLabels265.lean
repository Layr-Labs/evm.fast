import InitECandidate.Proofs.BackendStages.Alignment265
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_265 : List (Nat × Nat) :=
[(53, 205376), (52, 205364), (19, 205356), (18, 205336), (51, 205280), (50, 205252), (17, 205244), (16, 205224),
  (49, 205168), (27, 205112), (48, 205092), (47, 205080), (45, 205080), (15, 205040), (14, 204988), (44, 204932),
  (46, 204856), (43, 204836), (41, 204836), (13, 204804), (12, 204760), (40, 204704), (42, 204628), (39, 204616),
  (37, 204616), (11, 204584), (10, 204540), (36, 204484), (38, 204408), (35, 204396), (33, 204396), (9, 204364),
  (8, 204320), (32, 204264), (34, 204188), (31, 204176), (29, 204176), (7, 204144), (6, 204100), (28, 204044),
  (30, 203948), (26, 203920), (25, 203916), (5, 203880), (4, 203828), (24, 203772), (23, 203732), (3, 203724),
  (2, 203700), (22, 203644), (1, 203596), (21, 203596)]
theorem localLabelsFinal_265_eq : LabToTarget.sectionLabels 203580 Alignment265.lines [] = (205376, localLabelsFinal_265) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_265_eq
end InitECandidate.Proofs.BackendStages
