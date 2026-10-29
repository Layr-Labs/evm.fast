import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded268
import InitECandidate.Proofs.BackendStages.ZeroData268
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets268_eq : Padded268.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys268 := by
  with_unfolding_all rfl
theorem zeroTargets268_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded268 acc = ZeroData.keys268.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets268_eq]
#print axioms zeroTargets268_eq
end InitECandidate.Proofs.BackendStages
