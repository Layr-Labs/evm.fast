import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded222
import InitECandidate.Proofs.BackendStages.ZeroData222
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets222_eq : Padded222.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys222 := by
  with_unfolding_all rfl
theorem zeroTargets222_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded222 acc = ZeroData.keys222.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets222_eq]
#print axioms zeroTargets222_eq
end InitECandidate.Proofs.BackendStages
