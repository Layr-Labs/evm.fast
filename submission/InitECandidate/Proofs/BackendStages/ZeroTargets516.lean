import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded516
import InitECandidate.Proofs.BackendStages.ZeroData516
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets516_eq : Padded516.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys516 := by
  with_unfolding_all rfl
theorem zeroTargets516_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded516 acc = ZeroData.keys516.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets516_eq]
#print axioms zeroTargets516_eq
end InitECandidate.Proofs.BackendStages
