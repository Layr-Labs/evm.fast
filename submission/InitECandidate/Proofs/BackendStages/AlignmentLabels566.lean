import InitECandidate.Proofs.BackendStages.Alignment566
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_566 : List (Nat × Nat) :=
[(36, 422196), (35, 422184), (17, 422176), (16, 422156), (34, 422100), (33, 422072), (15, 422068), (14, 422052),
  (32, 421996), (31, 421968), (13, 421964), (12, 421948), (30, 421892), (29, 421864), (11, 421856), (10, 421836),
  (28, 421780), (27, 421748), (9, 421736), (8, 421712), (26, 421656), (25, 421624), (7, 421620), (6, 421600),
  (24, 421544), (23, 421512), (5, 421508), (4, 421488), (22, 421432), (21, 421404), (3, 421400), (2, 421380),
  (20, 421324), (1, 421296), (19, 421296)]
theorem localLabelsFinal_566_eq : LabToTarget.sectionLabels 421280 Alignment566.lines [] = (422196, localLabelsFinal_566) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_566_eq
end InitECandidate.Proofs.BackendStages
