import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded270
import InitECandidate.Proofs.BackendStages.ZeroData270
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets270_eq : Padded270.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys270 := by
  with_unfolding_all rfl
theorem zeroTargets270_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded270 acc = ZeroData.keys270.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets270_eq]
#print axioms zeroTargets270_eq
end InitECandidate.Proofs.BackendStages
