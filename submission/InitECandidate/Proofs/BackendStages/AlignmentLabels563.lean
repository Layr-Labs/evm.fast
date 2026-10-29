import InitECandidate.Proofs.BackendStages.Alignment563
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_563 : List (Nat × Nat) :=
[(8, 420628), (7, 420616), (3, 420608), (2, 420588), (6, 420532), (1, 420476), (5, 420476)]
theorem localLabelsFinal_563_eq : LabToTarget.sectionLabels 420460 Alignment563.lines [] = (420628, localLabelsFinal_563) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_563_eq
end InitECandidate.Proofs.BackendStages
