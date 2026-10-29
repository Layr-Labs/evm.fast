import InitECandidate.Proofs.BackendStages.Alignment214
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_214 : List (Nat × Nat) :=
[(2, 123944), (1, 123900)]
theorem localLabelsFinal_214_eq : LabToTarget.sectionLabels 123900 Alignment214.lines [] = (123944, localLabelsFinal_214) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_214_eq
end InitECandidate.Proofs.BackendStages
