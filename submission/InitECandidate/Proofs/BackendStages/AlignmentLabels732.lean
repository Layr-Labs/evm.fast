import InitECandidate.Proofs.BackendStages.Alignment732
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_732 : List (Nat × Nat) :=
[(3, 733808), (2, 733800), (1, 733692)]
theorem localLabelsFinal_732_eq : LabToTarget.sectionLabels 733692 Alignment732.lines [] = (733808, localLabelsFinal_732) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_732_eq
end InitECandidate.Proofs.BackendStages
