import InitECandidate.Proofs.BackendStages.Alignment464
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_464 : List (Nat × Nat) :=
[(9, 357092), (8, 357080), (3, 357072), (2, 357048), (7, 356992), (6, 356948), (1, 356928), (5, 356928)]
theorem localLabelsFinal_464_eq : LabToTarget.sectionLabels 356912 Alignment464.lines [] = (357092, localLabelsFinal_464) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_464_eq
end InitECandidate.Proofs.BackendStages
