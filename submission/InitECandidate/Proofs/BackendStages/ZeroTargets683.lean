import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded683
import InitECandidate.Proofs.BackendStages.ZeroData683
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets683_eq : Padded683.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys683 := by
  with_unfolding_all rfl
theorem zeroTargets683_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded683 acc = ZeroData.keys683.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets683_eq]
#print axioms zeroTargets683_eq
end InitECandidate.Proofs.BackendStages
