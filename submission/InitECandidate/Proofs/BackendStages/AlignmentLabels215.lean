import InitECandidate.Proofs.BackendStages.Alignment215
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_215 : List (Nat × Nat) :=
[(2, 124004), (1, 123944)]
theorem localLabelsFinal_215_eq : LabToTarget.sectionLabels 123944 Alignment215.lines [] = (124004, localLabelsFinal_215) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_215_eq
end InitECandidate.Proofs.BackendStages
