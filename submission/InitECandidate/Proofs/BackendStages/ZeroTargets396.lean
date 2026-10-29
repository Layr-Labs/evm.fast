import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded396
import InitECandidate.Proofs.BackendStages.ZeroData396
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets396_eq : Padded396.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys396 := by
  with_unfolding_all rfl
theorem zeroTargets396_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded396 acc = ZeroData.keys396.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets396_eq]
#print axioms zeroTargets396_eq
end InitECandidate.Proofs.BackendStages
