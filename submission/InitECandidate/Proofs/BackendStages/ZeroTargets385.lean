import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded385
import InitECandidate.Proofs.BackendStages.ZeroData385
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets385_eq : Padded385.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys385 := by
  with_unfolding_all rfl
theorem zeroTargets385_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded385 acc = ZeroData.keys385.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets385_eq]
#print axioms zeroTargets385_eq
end InitECandidate.Proofs.BackendStages
