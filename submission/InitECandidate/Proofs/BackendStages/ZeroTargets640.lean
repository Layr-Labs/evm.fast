import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded640
import InitECandidate.Proofs.BackendStages.ZeroData640
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets640_eq : Padded640.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys640 := by
  with_unfolding_all rfl
theorem zeroTargets640_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded640 acc = ZeroData.keys640.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets640_eq]
#print axioms zeroTargets640_eq
end InitECandidate.Proofs.BackendStages
