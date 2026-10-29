import InitECandidate.Proofs.BackendStages.Alignment433
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_433 : List (Nat × Nat) :=
[(51, 322876), (35, 322860), (50, 322844), (49, 322828), (47, 322828), (21, 322804), (20, 322768), (46, 322712),
  (45, 322684), (43, 322684), (19, 322648), (18, 322600), (42, 322544), (41, 322508), (17, 322496), (16, 322468),
  (40, 322412), (44, 322356), (39, 322332), (15, 322328), (14, 322304), (38, 322248), (48, 322208), (37, 322180),
  (13, 322172), (12, 322148), (36, 322092), (34, 322040), (33, 322000), (11, 321996), (10, 321980), (32, 321924),
  (31, 321872), (9, 321868), (8, 321852), (30, 321796), (29, 321744), (7, 321740), (6, 321724), (28, 321668),
  (27, 321616), (5, 321612), (4, 321596), (26, 321540), (25, 321488), (3, 321484), (2, 321468), (24, 321412),
  (1, 321356), (23, 321356)]
theorem localLabelsFinal_433_eq : LabToTarget.sectionLabels 321340 Alignment433.lines [] = (322876, localLabelsFinal_433) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_433_eq
end InitECandidate.Proofs.BackendStages
