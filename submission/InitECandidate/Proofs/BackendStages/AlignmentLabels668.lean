import InitECandidate.Proofs.BackendStages.Alignment668
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_668 : List (Nat × Nat) :=
[(42, 600100), (41, 600088), (15, 600080), (14, 600060), (40, 600004), (39, 599972), (13, 599964), (12, 599944),
  (38, 599888), (37, 599852), (11, 599840), (10, 599816), (36, 599760), (23, 599728), (35, 599704), (29, 599648),
  (34, 599608), (33, 599580), (9, 599544), (8, 599492), (32, 599436), (31, 599404), (7, 599352), (6, 599272),
  (30, 599216), (28, 599064), (27, 599040), (26, 599036), (25, 599020), (24, 599016), (22, 598976), (21, 598968),
  (5, 598956), (4, 598928), (20, 598872), (19, 598836), (3, 598832), (2, 598812), (18, 598756), (1, 598712),
  (17, 598712)]
theorem localLabelsFinal_668_eq : LabToTarget.sectionLabels 598696 Alignment668.lines [] = (600100, localLabelsFinal_668) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_668_eq
end InitECandidate.Proofs.BackendStages
