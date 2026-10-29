import InitECandidate.Proofs.BackendStages.Alignment526
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_526 : List (Nat × Nat) :=
[(30, 391360), (29, 391328), (28, 391304), (13, 391292), (12, 391264), (27, 391208), (26, 391176), (25, 391164),
  (11, 391156), (10, 391136), (24, 391080), (23, 391036), (9, 391016), (8, 390980), (22, 390924), (21, 390896),
  (7, 390844), (6, 390780), (20, 390724), (19, 390680), (5, 390676), (4, 390656), (18, 390600), (17, 390560),
  (3, 390556), (2, 390536), (16, 390480), (1, 390452), (15, 390452)]
theorem localLabelsFinal_526_eq : LabToTarget.sectionLabels 390436 Alignment526.lines [] = (391360, localLabelsFinal_526) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_526_eq
end InitECandidate.Proofs.BackendStages
