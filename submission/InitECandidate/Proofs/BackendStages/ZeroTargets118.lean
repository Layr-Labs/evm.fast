import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded118
import InitECandidate.Proofs.BackendStages.ZeroData118
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets118_eq : Padded118.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys118 := by
  with_unfolding_all rfl
theorem zeroTargets118_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded118 acc = ZeroData.keys118.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets118_eq]
#print axioms zeroTargets118_eq
end InitECandidate.Proofs.BackendStages
