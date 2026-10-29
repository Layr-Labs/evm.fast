import InitECandidate.Proofs.BackendStages.Alignment584
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_584 : List (Nat × Nat) :=
[(55, 437912), (54, 437880), (25, 437872), (24, 437848), (53, 437792), (52, 437740), (23, 437736), (22, 437716),
  (51, 437660), (50, 437628), (21, 437624), (20, 437608), (49, 437552), (48, 437496), (19, 437492), (18, 437472),
  (47, 437416), (46, 437384), (17, 437380), (16, 437364), (45, 437308), (44, 437252), (15, 437248), (14, 437228),
  (43, 437172), (41, 437112), (42, 437104), (40, 437060), (39, 437036), (13, 437024), (12, 436996), (38, 436940),
  (37, 436908), (11, 436904), (10, 436888), (36, 436832), (35, 436768), (9, 436760), (8, 436736), (34, 436680),
  (33, 436648), (7, 436644), (6, 436628), (32, 436572), (31, 436140), (5, 436132), (4, 436108), (30, 436052),
  (29, 436016), (3, 436012), (2, 435992), (28, 435936), (1, 435904), (27, 435904)]
theorem localLabelsFinal_584_eq : LabToTarget.sectionLabels 435888 Alignment584.lines [] = (437912, localLabelsFinal_584) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_584_eq
end InitECandidate.Proofs.BackendStages
