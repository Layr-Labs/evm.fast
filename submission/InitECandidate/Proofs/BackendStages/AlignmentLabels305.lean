import InitECandidate.Proofs.BackendStages.Alignment305
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_305 : List (Nat × Nat) :=
[(33, 241064), (32, 241052), (30, 241044), (13, 241028), (12, 241000), (29, 240944), (28, 240908), (11, 240900),
  (10, 240876), (27, 240820), (31, 240788), (26, 240772), (9, 240768), (8, 240748), (25, 240692), (24, 240664),
  (22, 240664), (7, 240648), (6, 240620), (21, 240564), (23, 240528), (20, 240512), (5, 240508), (4, 240488),
  (19, 240432), (18, 240392), (17, 240372), (3, 240356), (2, 240324), (16, 240268), (1, 240204), (15, 240204)]
theorem localLabelsFinal_305_eq : LabToTarget.sectionLabels 240188 Alignment305.lines [] = (241064, localLabelsFinal_305) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_305_eq
end InitECandidate.Proofs.BackendStages
