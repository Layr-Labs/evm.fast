import InitECandidate.Proofs.BackendStages.Alignment295
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_295 : List (Nat × Nat) :=
[(8, 232820), (7, 232768), (3, 232756), (2, 232728), (6, 232672), (1, 232632), (5, 232632)]
theorem localLabelsFinal_295_eq : LabToTarget.sectionLabels 232616 Alignment295.lines [] = (232820, localLabelsFinal_295) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_295_eq
end InitECandidate.Proofs.BackendStages
