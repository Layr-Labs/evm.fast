import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded480
import InitECandidate.Proofs.BackendStages.ZeroData480
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets480_eq : Padded480.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys480 := by
  with_unfolding_all rfl
theorem zeroTargets480_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded480 acc = ZeroData.keys480.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets480_eq]
#print axioms zeroTargets480_eq
end InitECandidate.Proofs.BackendStages
