import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded195
import InitECandidate.Proofs.BackendStages.ZeroData195
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets195_eq : Padded195.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys195 := by
  with_unfolding_all rfl
theorem zeroTargets195_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded195 acc = ZeroData.keys195.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets195_eq]
#print axioms zeroTargets195_eq
end InitECandidate.Proofs.BackendStages
