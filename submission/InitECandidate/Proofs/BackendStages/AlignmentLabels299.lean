import InitECandidate.Proofs.BackendStages.Alignment299
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_299 : List (Nat × Nat) :=
[(2, 233672), (1, 233628)]
theorem localLabelsFinal_299_eq : LabToTarget.sectionLabels 233628 Alignment299.lines [] = (233672, localLabelsFinal_299) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_299_eq
end InitECandidate.Proofs.BackendStages
