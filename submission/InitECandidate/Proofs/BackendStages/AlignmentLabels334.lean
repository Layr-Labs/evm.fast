import InitECandidate.Proofs.BackendStages.Alignment334
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_334 : List (Nat × Nat) :=
[(40, 265876), (39, 265844), (17, 265828), (16, 265796), (38, 265740), (37, 265696), (15, 265680), (14, 265648),
  (36, 265592), (35, 265548), (13, 265524), (12, 265484), (34, 265428), (31, 265364), (33, 265356), (32, 265348),
  (30, 265304), (29, 265300), (11, 265248), (10, 265184), (28, 265128), (27, 265080), (9, 265072), (8, 265052),
  (26, 264996), (25, 264948), (7, 264940), (6, 264920), (24, 264864), (23, 264816), (5, 264808), (4, 264788),
  (22, 264732), (21, 264676), (3, 264664), (2, 264636), (20, 264580), (1, 264500), (19, 264500)]
theorem localLabelsFinal_334_eq : LabToTarget.sectionLabels 264484 Alignment334.lines [] = (265876, localLabelsFinal_334) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_334_eq
end InitECandidate.Proofs.BackendStages
