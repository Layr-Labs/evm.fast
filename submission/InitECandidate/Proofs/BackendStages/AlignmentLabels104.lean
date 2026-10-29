import InitECandidate.Proofs.BackendStages.Alignment104
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_104 : List (Nat × Nat) :=
[(9, 11008), (8, 10988), (3, 10976), (2, 10948), (7, 10892), (6, 10848), (1, 10824), (5, 10824)]
theorem localLabelsFinal_104_eq : LabToTarget.sectionLabels 10808 Alignment104.lines [] = (11008, localLabelsFinal_104) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_104_eq
end InitECandidate.Proofs.BackendStages
