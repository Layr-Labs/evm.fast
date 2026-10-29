import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded295
import InitECandidate.Proofs.BackendStages.ZeroData295
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets295_eq : Padded295.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys295 := by
  with_unfolding_all rfl
theorem zeroTargets295_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded295 acc = ZeroData.keys295.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets295_eq]
#print axioms zeroTargets295_eq
end InitECandidate.Proofs.BackendStages
