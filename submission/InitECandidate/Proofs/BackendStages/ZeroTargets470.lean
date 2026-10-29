import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded470
import InitECandidate.Proofs.BackendStages.ZeroData470
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets470_eq : Padded470.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys470 := by
  with_unfolding_all rfl
theorem zeroTargets470_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded470 acc = ZeroData.keys470.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets470_eq]
#print axioms zeroTargets470_eq
end InitECandidate.Proofs.BackendStages
