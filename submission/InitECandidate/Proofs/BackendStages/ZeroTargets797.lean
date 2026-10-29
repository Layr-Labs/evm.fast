import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded797
import InitECandidate.Proofs.BackendStages.ZeroData797
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets797_eq : Padded797.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys797 := by
  with_unfolding_all rfl
theorem zeroTargets797_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded797 acc = ZeroData.keys797.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets797_eq]
#print axioms zeroTargets797_eq
end InitECandidate.Proofs.BackendStages
