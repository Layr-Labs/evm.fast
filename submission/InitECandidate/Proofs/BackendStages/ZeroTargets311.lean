import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded311
import InitECandidate.Proofs.BackendStages.ZeroData311
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets311_eq : Padded311.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys311 := by
  with_unfolding_all rfl
theorem zeroTargets311_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded311 acc = ZeroData.keys311.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets311_eq]
#print axioms zeroTargets311_eq
end InitECandidate.Proofs.BackendStages
