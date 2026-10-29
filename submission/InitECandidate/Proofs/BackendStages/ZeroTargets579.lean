import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded579
import InitECandidate.Proofs.BackendStages.ZeroData579
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets579_eq : Padded579.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys579 := by
  with_unfolding_all rfl
theorem zeroTargets579_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded579 acc = ZeroData.keys579.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets579_eq]
#print axioms zeroTargets579_eq
end InitECandidate.Proofs.BackendStages
