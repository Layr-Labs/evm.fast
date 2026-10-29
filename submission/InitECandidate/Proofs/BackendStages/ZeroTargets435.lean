import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded435
import InitECandidate.Proofs.BackendStages.ZeroData435
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets435_eq : Padded435.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys435 := by
  with_unfolding_all rfl
theorem zeroTargets435_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded435 acc = ZeroData.keys435.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets435_eq]
#print axioms zeroTargets435_eq
end InitECandidate.Proofs.BackendStages
