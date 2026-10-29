import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded475
import InitECandidate.Proofs.BackendStages.ZeroData475
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets475_eq : Padded475.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys475 := by
  with_unfolding_all rfl
theorem zeroTargets475_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded475 acc = ZeroData.keys475.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets475_eq]
#print axioms zeroTargets475_eq
end InitECandidate.Proofs.BackendStages
