import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded116
import InitECandidate.Proofs.BackendStages.ZeroData116
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets116_eq : Padded116.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys116 := by
  with_unfolding_all rfl
theorem zeroTargets116_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded116 acc = ZeroData.keys116.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets116_eq]
#print axioms zeroTargets116_eq
end InitECandidate.Proofs.BackendStages
