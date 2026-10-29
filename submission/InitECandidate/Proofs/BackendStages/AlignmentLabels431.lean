import InitECandidate.Proofs.BackendStages.Alignment431
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_431 : List (Nat × Nat) :=
[(38, 320936), (37, 320924), (17, 320916), (16, 320896), (36, 320840), (35, 320804), (15, 320792), (14, 320764),
  (34, 320708), (33, 320680), (13, 320676), (12, 320656), (32, 320600), (31, 320568), (29, 320568), (11, 320560),
  (10, 320540), (28, 320484), (27, 320424), (9, 320400), (8, 320360), (26, 320304), (30, 320276), (25, 320252),
  (7, 320248), (6, 320228), (24, 320172), (23, 320120), (5, 320112), (4, 320092), (22, 320036), (21, 319996),
  (3, 319984), (2, 319956), (20, 319900), (1, 319852), (19, 319852)]
theorem localLabelsFinal_431_eq : LabToTarget.sectionLabels 319836 Alignment431.lines [] = (320936, localLabelsFinal_431) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_431_eq
end InitECandidate.Proofs.BackendStages
