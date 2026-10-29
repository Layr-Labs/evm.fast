import InitECandidate.Proofs.BackendStages.Alignment866
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_866 : List (Nat × Nat) :=
[(12, 965328), (11, 965240), (5, 965220), (4, 965192), (10, 965132), (9, 965084), (3, 965064), (2, 965032), (8, 964972),
  (1, 964916), (7, 964916)]
theorem localLabelsFinal_866_eq : LabToTarget.sectionLabels 964896 Alignment866.lines [] = (965328, localLabelsFinal_866) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_866_eq
end InitECandidate.Proofs.BackendStages
