import InitECandidate.Proofs.BackendStages.Alignment206
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_206 : List (Nat × Nat) :=
[(4, 114652), (3, 114640), (1, 109208), (2, 109208)]
theorem localLabelsFinal_206_eq : LabToTarget.sectionLabels 109192 Alignment206.lines [] = (114652, localLabelsFinal_206) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_206_eq
end InitECandidate.Proofs.BackendStages
