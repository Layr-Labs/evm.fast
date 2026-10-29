import InitECandidate.Proofs.BackendStages.Alignment221
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_221 : List (Nat × Nat) :=
[(2, 125436), (1, 125356)]
theorem localLabelsFinal_221_eq : LabToTarget.sectionLabels 125356 Alignment221.lines [] = (125436, localLabelsFinal_221) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_221_eq
end InitECandidate.Proofs.BackendStages
