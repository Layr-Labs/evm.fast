import InitECandidate.Proofs.BackendStages.Alignment412
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_412 : List (Nat × Nat) :=
[(13, 310652), (12, 310628), (11, 310596), (5, 310588), (4, 310560), (10, 310504), (9, 310460), (3, 310456),
  (2, 310436), (8, 310380), (1, 310352), (7, 310352)]
theorem localLabelsFinal_412_eq : LabToTarget.sectionLabels 310336 Alignment412.lines [] = (310652, localLabelsFinal_412) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_412_eq
end InitECandidate.Proofs.BackendStages
