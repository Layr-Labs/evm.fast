import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded596
import InitECandidate.Proofs.BackendStages.ZeroData596
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets596_eq : Padded596.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys596 := by
  with_unfolding_all rfl
theorem zeroTargets596_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded596 acc = ZeroData.keys596.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets596_eq]
#print axioms zeroTargets596_eq
end InitECandidate.Proofs.BackendStages
