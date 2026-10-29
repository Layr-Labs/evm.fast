import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded485
import InitECandidate.Proofs.BackendStages.ZeroData485
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets485_eq : Padded485.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys485 := by
  with_unfolding_all rfl
theorem zeroTargets485_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded485 acc = ZeroData.keys485.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets485_eq]
#print axioms zeroTargets485_eq
end InitECandidate.Proofs.BackendStages
