import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded135
import InitECandidate.Proofs.BackendStages.ZeroData135
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets135_eq : Padded135.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys135 := by
  with_unfolding_all rfl
theorem zeroTargets135_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded135 acc = ZeroData.keys135.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets135_eq]
#print axioms zeroTargets135_eq
end InitECandidate.Proofs.BackendStages
