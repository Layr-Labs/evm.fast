import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded506
import InitECandidate.Proofs.BackendStages.ZeroData506
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets506_eq : Padded506.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys506 := by
  with_unfolding_all rfl
theorem zeroTargets506_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded506 acc = ZeroData.keys506.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets506_eq]
#print axioms zeroTargets506_eq
end InitECandidate.Proofs.BackendStages
