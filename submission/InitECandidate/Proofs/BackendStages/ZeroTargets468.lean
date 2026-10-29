import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded468
import InitECandidate.Proofs.BackendStages.ZeroData468
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets468_eq : Padded468.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys468 := by
  with_unfolding_all rfl
theorem zeroTargets468_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded468 acc = ZeroData.keys468.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets468_eq]
#print axioms zeroTargets468_eq
end InitECandidate.Proofs.BackendStages
