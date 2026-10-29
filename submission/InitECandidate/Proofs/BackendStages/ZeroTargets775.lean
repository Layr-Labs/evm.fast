import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded775
import InitECandidate.Proofs.BackendStages.ZeroData775
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets775_eq : Padded775.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys775 := by
  with_unfolding_all rfl
theorem zeroTargets775_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded775 acc = ZeroData.keys775.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets775_eq]
#print axioms zeroTargets775_eq
end InitECandidate.Proofs.BackendStages
