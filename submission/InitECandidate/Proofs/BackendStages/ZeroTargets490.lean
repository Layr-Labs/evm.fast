import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded490
import InitECandidate.Proofs.BackendStages.ZeroData490
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets490_eq : Padded490.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys490 := by
  with_unfolding_all rfl
theorem zeroTargets490_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded490 acc = ZeroData.keys490.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets490_eq]
#print axioms zeroTargets490_eq
end InitECandidate.Proofs.BackendStages
