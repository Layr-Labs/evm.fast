import InitECandidate.Proofs.BackendStages.Alignment4
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_4 : List (Nat × Nat) :=
[(3, 812), (1, 808), (2, 808)]
theorem localLabelsFinal_4_eq : LabToTarget.sectionLabels 772 Alignment4.lines [] = (812, localLabelsFinal_4) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_4_eq
end InitECandidate.Proofs.BackendStages
