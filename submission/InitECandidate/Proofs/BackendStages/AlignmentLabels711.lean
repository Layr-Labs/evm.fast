import InitECandidate.Proofs.BackendStages.Alignment711
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_711 : List (Nat × Nat) :=
[(13, 704052), (12, 704040), (5, 704032), (4, 704008), (11, 703952), (10, 703728), (9, 703708), (3, 703700),
  (2, 703676), (8, 703620), (1, 703588), (7, 703588)]
theorem localLabelsFinal_711_eq : LabToTarget.sectionLabels 703572 Alignment711.lines [] = (704052, localLabelsFinal_711) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_711_eq
end InitECandidate.Proofs.BackendStages
