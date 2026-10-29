import InitECandidate.Proofs.BackendStages.Alignment103
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_103 : List (Nat × Nat) :=
[(6, 10808), (5, 10800), (4, 10784), (3, 10768), (2, 10752), (1, 10740)]
theorem localLabelsFinal_103_eq : LabToTarget.sectionLabels 10740 Alignment103.lines [] = (10808, localLabelsFinal_103) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_103_eq
end InitECandidate.Proofs.BackendStages
