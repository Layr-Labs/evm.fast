import InitECandidate.Proofs.BackendStages.Alignment475
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_475 : List (Nat × Nat) :=
[(3, 358892), (2, 358840), (1, 358796)]
theorem localLabelsFinal_475_eq : LabToTarget.sectionLabels 358796 Alignment475.lines [] = (358892, localLabelsFinal_475) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_475_eq
end InitECandidate.Proofs.BackendStages
