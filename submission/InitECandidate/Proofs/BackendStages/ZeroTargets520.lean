import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded520
import InitECandidate.Proofs.BackendStages.ZeroData520
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets520_eq : Padded520.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys520 := by
  with_unfolding_all rfl
theorem zeroTargets520_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded520 acc = ZeroData.keys520.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets520_eq]
#print axioms zeroTargets520_eq
end InitECandidate.Proofs.BackendStages
