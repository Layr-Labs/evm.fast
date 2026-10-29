import InitECandidate.Proofs.BackendStages.Alignment587
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_587 : List (Nat × Nat) :=
[(32, 442064), (31, 442004), (15, 441996), (14, 441972), (30, 441916), (29, 441880), (13, 441860), (12, 441824),
  (28, 441768), (27, 441736), (11, 441684), (10, 441620), (26, 441564), (25, 441532), (9, 441460), (8, 441376),
  (24, 441320), (23, 441284), (7, 441280), (6, 441260), (22, 441204), (21, 441140), (5, 441120), (4, 441072),
  (20, 441016), (19, 440972), (3, 440968), (2, 440948), (18, 440892), (1, 440860), (17, 440860)]
theorem localLabelsFinal_587_eq : LabToTarget.sectionLabels 440844 Alignment587.lines [] = (442064, localLabelsFinal_587) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_587_eq
end InitECandidate.Proofs.BackendStages
