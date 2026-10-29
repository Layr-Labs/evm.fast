import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded787
import InitECandidate.Proofs.BackendStages.ZeroData787
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets787_eq : Padded787.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys787 := by
  with_unfolding_all rfl
theorem zeroTargets787_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded787 acc = ZeroData.keys787.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets787_eq]
#print axioms zeroTargets787_eq
end InitECandidate.Proofs.BackendStages
