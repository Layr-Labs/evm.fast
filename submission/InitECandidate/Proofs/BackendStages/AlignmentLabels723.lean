import InitECandidate.Proofs.BackendStages.Alignment723
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_723 : List (Nat × Nat) :=
[(8, 729532), (7, 729520), (3, 729512), (2, 729488), (6, 729432), (1, 729400), (5, 729400)]
theorem localLabelsFinal_723_eq : LabToTarget.sectionLabels 729384 Alignment723.lines [] = (729532, localLabelsFinal_723) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_723_eq
end InitECandidate.Proofs.BackendStages
