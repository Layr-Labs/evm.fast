import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded799
import InitECandidate.Proofs.BackendStages.ZeroData799
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets799_eq : Padded799.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys799 := by
  with_unfolding_all rfl
theorem zeroTargets799_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded799 acc = ZeroData.keys799.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets799_eq]
#print axioms zeroTargets799_eq
end InitECandidate.Proofs.BackendStages
