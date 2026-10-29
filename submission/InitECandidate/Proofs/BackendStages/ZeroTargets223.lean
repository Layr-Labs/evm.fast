import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded223
import InitECandidate.Proofs.BackendStages.ZeroData223
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets223_eq : Padded223.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys223 := by
  with_unfolding_all rfl
theorem zeroTargets223_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded223 acc = ZeroData.keys223.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets223_eq]
#print axioms zeroTargets223_eq
end InitECandidate.Proofs.BackendStages
