import InitECandidate.Proofs.BackendStages.Alignment342
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_342 : List (Nat × Nat) :=
[(52, 269352), (29, 269332), (51, 269308), (45, 269232), (50, 269156), (49, 269080), (21, 268996), (20, 268900),
  (48, 268844), (47, 268800), (19, 268788), (18, 268760), (46, 268704), (44, 268528), (43, 268520), (17, 268508),
  (16, 268480), (42, 268424), (41, 268388), (15, 268384), (14, 268364), (40, 268308), (39, 268272), (13, 268268),
  (12, 268248), (38, 268192), (37, 268152), (11, 268144), (10, 268120), (36, 268064), (35, 268020), (34, 267992),
  (9, 267988), (8, 267968), (33, 267912), (32, 267864), (31, 267840), (7, 267836), (6, 267816), (30, 267760),
  (28, 267696), (27, 267688), (5, 267676), (4, 267648), (26, 267592), (25, 267536), (3, 267532), (2, 267512),
  (24, 267456), (1, 267420), (23, 267420)]
theorem localLabelsFinal_342_eq : LabToTarget.sectionLabels 267404 Alignment342.lines [] = (269352, localLabelsFinal_342) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_342_eq
end InitECandidate.Proofs.BackendStages
