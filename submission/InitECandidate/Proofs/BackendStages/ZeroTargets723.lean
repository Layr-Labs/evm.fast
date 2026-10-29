import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded723
import InitECandidate.Proofs.BackendStages.ZeroData723
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets723_eq : Padded723.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys723 := by
  with_unfolding_all rfl
theorem zeroTargets723_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded723 acc = ZeroData.keys723.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets723_eq]
#print axioms zeroTargets723_eq
end InitECandidate.Proofs.BackendStages
