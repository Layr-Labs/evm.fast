import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded555
import InitECandidate.Proofs.BackendStages.ZeroData555
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets555_eq : Padded555.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys555 := by
  with_unfolding_all rfl
theorem zeroTargets555_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded555 acc = ZeroData.keys555.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets555_eq]
#print axioms zeroTargets555_eq
end InitECandidate.Proofs.BackendStages
