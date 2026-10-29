import InitECandidate.Proofs.BackendStages.Alignment210
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_210 : List (Nat × Nat) :=
[(53, 122984), (24, 122960), (52, 122860), (46, 122772), (13, 122700), (12, 122612), (45, 122556), (44, 122468),
  (11, 122408), (10, 122332), (43, 122276), (51, 122220), (50, 122184), (17, 122088), (16, 121968), (49, 121912),
  (48, 121824), (15, 121772), (14, 121704), (47, 121648), (42, 121488), (9, 121364), (8, 121224), (41, 121168),
  (37, 121112), (40, 121016), (39, 120980), (7, 120944), (6, 120892), (38, 120836), (36, 120712), (32, 120680),
  (35, 120576), (34, 120524), (5, 120472), (4, 120404), (33, 120348), (31, 120176), (30, 120048), (28, 119980),
  (29, 119944), (27, 119924), (25, 119908), (26, 119888), (23, 119840), (22, 119756), (21, 119724), (3, 119680),
  (2, 119620), (20, 119564), (1, 119504), (19, 119504)]
theorem localLabelsFinal_210_eq : LabToTarget.sectionLabels 119488 Alignment210.lines [] = (122984, localLabelsFinal_210) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_210_eq
end InitECandidate.Proofs.BackendStages
