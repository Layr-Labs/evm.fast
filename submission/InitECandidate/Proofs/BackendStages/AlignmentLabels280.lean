import InitECandidate.Proofs.BackendStages.Alignment280
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_280 : List (Nat × Nat) :=
[(8, 222564), (7, 222552), (3, 222544), (2, 222520), (6, 222464), (1, 222420), (5, 222420)]
theorem localLabelsFinal_280_eq : LabToTarget.sectionLabels 222404 Alignment280.lines [] = (222564, localLabelsFinal_280) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_280_eq
end InitECandidate.Proofs.BackendStages
