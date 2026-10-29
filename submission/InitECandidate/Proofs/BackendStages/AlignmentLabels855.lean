import InitECandidate.Proofs.BackendStages.Alignment855
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_855 : List (Nat × Nat) :=
[(3, 939608), (2, 939600), (1, 939580)]
theorem localLabelsFinal_855_eq : LabToTarget.sectionLabels 939580 Alignment855.lines [] = (939608, localLabelsFinal_855) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_855_eq
end InitECandidate.Proofs.BackendStages
