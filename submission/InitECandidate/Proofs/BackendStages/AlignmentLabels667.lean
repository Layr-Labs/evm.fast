import InitECandidate.Proofs.BackendStages.Alignment667
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_667 : List (Nat × Nat) :=
[(23, 598696), (13, 598680), (22, 598668), (21, 598632), (9, 598616), (8, 598584), (20, 598528), (19, 598436),
  (7, 598408), (6, 598364), (18, 598308), (17, 598228), (5, 598200), (4, 598144), (16, 598088), (15, 598036),
  (3, 598016), (2, 597968), (14, 597912), (12, 597812), (1, 597800), (11, 597800)]
theorem localLabelsFinal_667_eq : LabToTarget.sectionLabels 597784 Alignment667.lines [] = (598696, localLabelsFinal_667) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_667_eq
end InitECandidate.Proofs.BackendStages
