import InitECandidate.Proofs.BackendStages.Alignment359
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_359 : List (Nat × Nat) :=
[(3, 277556), (2, 277540), (1, 277516)]
theorem localLabelsFinal_359_eq : LabToTarget.sectionLabels 277516 Alignment359.lines [] = (277556, localLabelsFinal_359) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_359_eq
end InitECandidate.Proofs.BackendStages
