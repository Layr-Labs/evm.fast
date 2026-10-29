import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded167
import InitECandidate.Proofs.BackendStages.ZeroData167
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets167_eq : Padded167.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys167 := by
  with_unfolding_all rfl
theorem zeroTargets167_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded167 acc = ZeroData.keys167.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets167_eq]
#print axioms zeroTargets167_eq
end InitECandidate.Proofs.BackendStages
