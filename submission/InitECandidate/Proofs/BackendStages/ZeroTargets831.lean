import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded831
import InitECandidate.Proofs.BackendStages.ZeroData831
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets831_eq : Padded831.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys831 := by
  with_unfolding_all rfl
theorem zeroTargets831_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded831 acc = ZeroData.keys831.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets831_eq]
#print axioms zeroTargets831_eq
end InitECandidate.Proofs.BackendStages
