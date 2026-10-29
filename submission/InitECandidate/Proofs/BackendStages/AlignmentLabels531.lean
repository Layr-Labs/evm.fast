import InitECandidate.Proofs.BackendStages.Alignment531
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_531 : List (Nat × Nat) :=
[(24, 393976), (23, 393964), (11, 393956), (10, 393936), (22, 393880), (21, 393820), (9, 393812), (8, 393788),
  (20, 393732), (19, 393704), (7, 393684), (6, 393652), (18, 393596), (17, 393532), (5, 393512), (4, 393476),
  (16, 393420), (15, 393380), (3, 393376), (2, 393356), (14, 393300), (1, 393272), (13, 393272)]
theorem localLabelsFinal_531_eq : LabToTarget.sectionLabels 393256 Alignment531.lines [] = (393976, localLabelsFinal_531) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_531_eq
end InitECandidate.Proofs.BackendStages
