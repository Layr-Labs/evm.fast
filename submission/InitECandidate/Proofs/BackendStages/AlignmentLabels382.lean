import InitECandidate.Proofs.BackendStages.Alignment382
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_382 : List (Nat × Nat) :=
[(24, 294060), (23, 294048), (11, 294040), (10, 294020), (22, 293964), (21, 293936), (9, 293928), (8, 293908),
  (20, 293852), (19, 293824), (7, 293804), (6, 293772), (18, 293716), (17, 293672), (5, 293644), (4, 293600),
  (16, 293544), (15, 293512), (3, 293508), (2, 293488), (14, 293432), (1, 293392), (13, 293392)]
theorem localLabelsFinal_382_eq : LabToTarget.sectionLabels 293376 Alignment382.lines [] = (294060, localLabelsFinal_382) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_382_eq
end InitECandidate.Proofs.BackendStages
