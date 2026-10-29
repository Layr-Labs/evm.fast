import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded568
import InitECandidate.Proofs.BackendStages.ZeroData568
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets568_eq : Padded568.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys568 := by
  with_unfolding_all rfl
theorem zeroTargets568_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded568 acc = ZeroData.keys568.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets568_eq]
#print axioms zeroTargets568_eq
end InitECandidate.Proofs.BackendStages
