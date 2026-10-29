import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded397
import InitECandidate.Proofs.BackendStages.ZeroData397
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets397_eq : Padded397.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys397 := by
  with_unfolding_all rfl
theorem zeroTargets397_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded397 acc = ZeroData.keys397.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets397_eq]
#print axioms zeroTargets397_eq
end InitECandidate.Proofs.BackendStages
