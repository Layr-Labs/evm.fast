import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded478
import InitECandidate.Proofs.BackendStages.ZeroData478
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets478_eq : Padded478.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys478 := by
  with_unfolding_all rfl
theorem zeroTargets478_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded478 acc = ZeroData.keys478.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets478_eq]
#print axioms zeroTargets478_eq
end InitECandidate.Proofs.BackendStages
