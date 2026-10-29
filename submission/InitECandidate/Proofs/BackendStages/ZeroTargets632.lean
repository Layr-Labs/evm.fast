import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded632
import InitECandidate.Proofs.BackendStages.ZeroData632
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets632_eq : Padded632.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys632 := by
  with_unfolding_all rfl
theorem zeroTargets632_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded632 acc = ZeroData.keys632.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets632_eq]
#print axioms zeroTargets632_eq
end InitECandidate.Proofs.BackendStages
