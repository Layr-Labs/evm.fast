import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded846
import InitECandidate.Proofs.BackendStages.ZeroData846
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets846_eq : Padded846.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys846 := by
  with_unfolding_all rfl
theorem zeroTargets846_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded846 acc = ZeroData.keys846.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets846_eq]
#print axioms zeroTargets846_eq
end InitECandidate.Proofs.BackendStages
