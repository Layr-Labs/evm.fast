import InitECandidate.Proofs.BackendStages.Alignment608
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_608 : List (Nat × Nat) :=
[(46, 482420), (45, 482408), (21, 482396), (20, 482372), (44, 482316), (43, 482276), (42, 482244), (40, 482176),
  (18, 482160), (17, 482132), (39, 482076), (38, 482044), (16, 482036), (15, 482016), (37, 481960), (36, 481932),
  (14, 481928), (13, 481912), (35, 481856), (41, 481816), (19, 481800), (12, 481772), (34, 481716), (33, 481632),
  (11, 481624), (10, 481600), (32, 481544), (31, 481508), (9, 481500), (8, 481480), (30, 481424), (29, 481392),
  (7, 481384), (6, 481364), (28, 481308), (27, 481272), (5, 481264), (4, 481244), (26, 481188), (25, 481144),
  (3, 481136), (2, 481112), (24, 481056), (1, 481020), (23, 481020)]
theorem localLabelsFinal_608_eq : LabToTarget.sectionLabels 481004 Alignment608.lines [] = (482420, localLabelsFinal_608) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_608_eq
end InitECandidate.Proofs.BackendStages
