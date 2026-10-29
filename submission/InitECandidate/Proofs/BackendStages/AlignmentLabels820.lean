import InitECandidate.Proofs.BackendStages.Alignment820
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_820 : List (Nat × Nat) :=
[(3, 890764), (2, 890724), (1, 890704)]
theorem localLabelsFinal_820_eq : LabToTarget.sectionLabels 890704 Alignment820.lines [] = (890764, localLabelsFinal_820) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_820_eq
end InitECandidate.Proofs.BackendStages
