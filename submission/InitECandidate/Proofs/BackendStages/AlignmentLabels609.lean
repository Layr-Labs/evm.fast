import InitECandidate.Proofs.BackendStages.Alignment609
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_609 : List (Nat × Nat) :=
[(2, 482512), (1, 482420)]
theorem localLabelsFinal_609_eq : LabToTarget.sectionLabels 482420 Alignment609.lines [] = (482512, localLabelsFinal_609) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_609_eq
end InitECandidate.Proofs.BackendStages
