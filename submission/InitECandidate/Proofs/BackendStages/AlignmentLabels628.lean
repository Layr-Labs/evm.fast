import InitECandidate.Proofs.BackendStages.Alignment628
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_628 : List (Nat × Nat) :=
[(6, 524420), (5, 524392), (4, 524356), (3, 524336), (2, 524316), (1, 524296)]
theorem localLabelsFinal_628_eq : LabToTarget.sectionLabels 524296 Alignment628.lines [] = (524420, localLabelsFinal_628) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_628_eq
end InitECandidate.Proofs.BackendStages
