import InitECandidate.Proofs.BackendStages.Alignment126
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_126 : List (Nat × Nat) :=
[(6, 18656), (3, 18648), (5, 18640), (4, 18636), (2, 18596), (1, 18592)]
theorem localLabelsFinal_126_eq : LabToTarget.sectionLabels 18592 Alignment126.lines [] = (18656, localLabelsFinal_126) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_126_eq
end InitECandidate.Proofs.BackendStages
