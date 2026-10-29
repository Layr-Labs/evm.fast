import InitECandidate.Proofs.BackendStages.Alignment606
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_606 : List (Nat × Nat) :=
[(53, 480112), (52, 480100), (23, 480088), (22, 480064), (51, 480008), (50, 479980), (21, 479976), (20, 479960),
  (49, 479904), (48, 479852), (19, 479848), (18, 479828), (47, 479772), (46, 479744), (44, 479744), (42, 479684),
  (16, 479664), (15, 479632), (41, 479576), (40, 479544), (14, 479512), (13, 479468), (39, 479412), (38, 479348),
  (12, 479320), (11, 479280), (37, 479224), (36, 479188), (35, 479136), (10, 479120), (9, 479092), (34, 479036),
  (33, 479004), (8, 478996), (7, 478976), (32, 478920), (43, 478848), (17, 478800), (6, 478784), (31, 478728),
  (30, 478684), (5, 478668), (4, 478636), (29, 478580), (45, 478544), (28, 478524), (3, 478516), (2, 478492),
  (27, 478436), (26, 478364), (1, 478332), (25, 478332)]
theorem localLabelsFinal_606_eq : LabToTarget.sectionLabels 478316 Alignment606.lines [] = (480112, localLabelsFinal_606) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_606_eq
end InitECandidate.Proofs.BackendStages
