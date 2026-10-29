import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded81
import InitECandidate.Proofs.BackendStages.ZeroData81
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets81_eq : Padded81.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys81 := by
  with_unfolding_all rfl
theorem zeroTargets81_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded81 acc = ZeroData.keys81.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets81_eq]
#print axioms zeroTargets81_eq
end InitECandidate.Proofs.BackendStages
