import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded358
import InitECandidate.Proofs.BackendStages.ZeroData358
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets358_eq : Padded358.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys358 := by
  with_unfolding_all rfl
theorem zeroTargets358_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded358 acc = ZeroData.keys358.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets358_eq]
#print axioms zeroTargets358_eq
end InitECandidate.Proofs.BackendStages
