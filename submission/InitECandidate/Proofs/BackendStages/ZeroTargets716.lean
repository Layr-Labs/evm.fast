import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded716
import InitECandidate.Proofs.BackendStages.ZeroData716
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets716_eq : Padded716.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys716 := by
  with_unfolding_all rfl
theorem zeroTargets716_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded716 acc = ZeroData.keys716.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets716_eq]
#print axioms zeroTargets716_eq
end InitECandidate.Proofs.BackendStages
