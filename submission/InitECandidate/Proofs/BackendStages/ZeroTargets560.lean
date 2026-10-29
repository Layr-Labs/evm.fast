import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded560
import InitECandidate.Proofs.BackendStages.ZeroData560
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets560_eq : Padded560.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys560 := by
  with_unfolding_all rfl
theorem zeroTargets560_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded560 acc = ZeroData.keys560.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets560_eq]
#print axioms zeroTargets560_eq
end InitECandidate.Proofs.BackendStages
