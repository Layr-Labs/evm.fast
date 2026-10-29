import InitECandidate.Proofs.BackendStages.Alignment706
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_706 : List (Nat × Nat) :=
[(3, 702568), (2, 702560), (1, 702500)]
theorem localLabelsFinal_706_eq : LabToTarget.sectionLabels 702500 Alignment706.lines [] = (702568, localLabelsFinal_706) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_706_eq
end InitECandidate.Proofs.BackendStages
