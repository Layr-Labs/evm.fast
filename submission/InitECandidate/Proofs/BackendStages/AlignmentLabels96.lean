import InitECandidate.Proofs.BackendStages.Alignment96
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_96 : List (Nat × Nat) :=
[(8, 10412), (7, 10400), (3, 10392), (2, 10372), (6, 10316), (1, 10288), (5, 10288)]
theorem localLabelsFinal_96_eq : LabToTarget.sectionLabels 10272 Alignment96.lines [] = (10412, localLabelsFinal_96) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_96_eq
end InitECandidate.Proofs.BackendStages
