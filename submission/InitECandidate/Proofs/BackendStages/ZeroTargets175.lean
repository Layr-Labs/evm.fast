import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded175
import InitECandidate.Proofs.BackendStages.ZeroData175
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets175_eq : Padded175.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys175 := by
  with_unfolding_all rfl
theorem zeroTargets175_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded175 acc = ZeroData.keys175.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets175_eq]
#print axioms zeroTargets175_eq
end InitECandidate.Proofs.BackendStages
