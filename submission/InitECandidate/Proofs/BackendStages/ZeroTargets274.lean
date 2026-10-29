import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded274
import InitECandidate.Proofs.BackendStages.ZeroData274
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets274_eq : Padded274.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys274 := by
  with_unfolding_all rfl
theorem zeroTargets274_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded274 acc = ZeroData.keys274.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets274_eq]
#print axioms zeroTargets274_eq
end InitECandidate.Proofs.BackendStages
