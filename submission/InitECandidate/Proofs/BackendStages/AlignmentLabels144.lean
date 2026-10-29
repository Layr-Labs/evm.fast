import InitECandidate.Proofs.BackendStages.Alignment144
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_144 : List (Nat × Nat) :=
[(18, 30172), (17, 30160), (7, 30136), (6, 30084), (16, 30028), (15, 29984), (14, 29952), (5, 29932), (4, 29884),
  (13, 29828), (12, 29780), (3, 29756), (2, 29716), (11, 29660), (10, 29572), (1, 29536), (9, 29536)]
theorem localLabelsFinal_144_eq : LabToTarget.sectionLabels 29520 Alignment144.lines [] = (30172, localLabelsFinal_144) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_144_eq
end InitECandidate.Proofs.BackendStages
