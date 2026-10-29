import InitECandidate.Proofs.BackendStages.Alignment856
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_856 : List (Nat × Nat) :=
[(3, 939636), (2, 939628), (1, 939608)]
theorem localLabelsFinal_856_eq : LabToTarget.sectionLabels 939608 Alignment856.lines [] = (939636, localLabelsFinal_856) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_856_eq
end InitECandidate.Proofs.BackendStages
