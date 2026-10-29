import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded400
import InitECandidate.Proofs.BackendStages.ZeroData400
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets400_eq : Padded400.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys400 := by
  with_unfolding_all rfl
theorem zeroTargets400_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded400 acc = ZeroData.keys400.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets400_eq]
#print axioms zeroTargets400_eq
end InitECandidate.Proofs.BackendStages
