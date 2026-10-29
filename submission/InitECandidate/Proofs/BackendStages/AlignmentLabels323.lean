import InitECandidate.Proofs.BackendStages.Alignment323
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_323 : List (Nat × Nat) :=
[(5, 256096), (4, 256088), (3, 256068), (2, 256048), (1, 256028)]
theorem localLabelsFinal_323_eq : LabToTarget.sectionLabels 256028 Alignment323.lines [] = (256096, localLabelsFinal_323) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_323_eq
end InitECandidate.Proofs.BackendStages
