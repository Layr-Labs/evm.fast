import InitECandidate.Proofs.BackendStages.Alignment110
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_110 : List (Nat × Nat) :=
[(14, 11756), (13, 11744), (12, 11724), (5, 11716), (4, 11692), (11, 11636), (10, 11604), (9, 11584), (3, 11544),
  (2, 11488), (8, 11432), (1, 11372), (7, 11372)]
theorem localLabelsFinal_110_eq : LabToTarget.sectionLabels 11356 Alignment110.lines [] = (11756, localLabelsFinal_110) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_110_eq
end InitECandidate.Proofs.BackendStages
