import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded511
import InitECandidate.Proofs.BackendStages.ZeroData511
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets511_eq : Padded511.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys511 := by
  with_unfolding_all rfl
theorem zeroTargets511_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded511 acc = ZeroData.keys511.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets511_eq]
#print axioms zeroTargets511_eq
end InitECandidate.Proofs.BackendStages
