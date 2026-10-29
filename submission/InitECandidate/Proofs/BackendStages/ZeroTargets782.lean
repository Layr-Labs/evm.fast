import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded782
import InitECandidate.Proofs.BackendStages.ZeroData782
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets782_eq : Padded782.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys782 := by
  with_unfolding_all rfl
theorem zeroTargets782_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded782 acc = ZeroData.keys782.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets782_eq]
#print axioms zeroTargets782_eq
end InitECandidate.Proofs.BackendStages
