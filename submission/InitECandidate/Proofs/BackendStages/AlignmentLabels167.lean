import InitECandidate.Proofs.BackendStages.Alignment167
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_167 : List (Nat × Nat) :=
[(11, 94240), (7, 94224), (10, 94208), (9, 94188), (3, 94164), (2, 94124), (8, 94068), (6, 94012), (1, 93988),
  (5, 93988)]
theorem localLabelsFinal_167_eq : LabToTarget.sectionLabels 93972 Alignment167.lines [] = (94240, localLabelsFinal_167) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_167_eq
end InitECandidate.Proofs.BackendStages
