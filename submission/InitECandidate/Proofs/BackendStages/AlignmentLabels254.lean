import InitECandidate.Proofs.BackendStages.Alignment254
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_254 : List (Nat × Nat) :=
[(41, 189000), (40, 188892), (17, 188840), (16, 188772), (39, 188716), (38, 188652), (15, 188616), (14, 188564),
  (37, 188508), (36, 188440), (13, 188428), (12, 188400), (35, 188344), (34, 188276), (11, 188264), (10, 188236),
  (33, 188180), (32, 188112), (9, 188100), (8, 188072), (31, 188016), (30, 187900), (7, 187896), (6, 187876),
  (29, 187820), (28, 187792), (5, 187788), (4, 187772), (27, 187716), (25, 187664), (26, 187652), (24, 187540),
  (23, 187528), (21, 187528), (3, 187516), (2, 187492), (20, 187436), (22, 187396), (1, 187376), (19, 187376)]
theorem localLabelsFinal_254_eq : LabToTarget.sectionLabels 187360 Alignment254.lines [] = (189000, localLabelsFinal_254) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_254_eq
end InitECandidate.Proofs.BackendStages
