import InitECandidate.Proofs.BackendStages.Alignment780
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_780 : List (Nat × Nat) :=
[(8, 791240), (7, 791228), (3, 791220), (2, 791200), (6, 791144), (1, 791108), (5, 791108)]
theorem localLabelsFinal_780_eq : LabToTarget.sectionLabels 791092 Alignment780.lines [] = (791240, localLabelsFinal_780) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_780_eq
end InitECandidate.Proofs.BackendStages
