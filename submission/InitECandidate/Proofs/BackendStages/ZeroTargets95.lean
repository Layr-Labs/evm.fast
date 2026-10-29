import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded95
import InitECandidate.Proofs.BackendStages.ZeroData95
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets95_eq : Padded95.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys95 := by
  with_unfolding_all rfl
theorem zeroTargets95_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded95 acc = ZeroData.keys95.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets95_eq]
#print axioms zeroTargets95_eq
end InitECandidate.Proofs.BackendStages
