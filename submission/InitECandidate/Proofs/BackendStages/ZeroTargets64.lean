import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded64
import InitECandidate.Proofs.BackendStages.ZeroData64
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets64_eq : Padded64.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys64 := by
  with_unfolding_all rfl
theorem zeroTargets64_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded64 acc = ZeroData.keys64.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets64_eq]
#print axioms zeroTargets64_eq
end InitECandidate.Proofs.BackendStages
