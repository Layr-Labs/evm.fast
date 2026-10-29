import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded551
import InitECandidate.Proofs.BackendStages.ZeroData551
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets551_eq : Padded551.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys551 := by
  with_unfolding_all rfl
theorem zeroTargets551_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded551 acc = ZeroData.keys551.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets551_eq]
#print axioms zeroTargets551_eq
end InitECandidate.Proofs.BackendStages
