import InitECandidate.Proofs.BackendStages.Alignment346
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_346 : List (Nat × Nat) :=
[(9, 276416), (8, 276408), (7, 276384), (3, 276368), (2, 276348), (6, 276292), (1, 276264), (5, 276264)]
theorem localLabelsFinal_346_eq : LabToTarget.sectionLabels 276248 Alignment346.lines [] = (276416, localLabelsFinal_346) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_346_eq
end InitECandidate.Proofs.BackendStages
