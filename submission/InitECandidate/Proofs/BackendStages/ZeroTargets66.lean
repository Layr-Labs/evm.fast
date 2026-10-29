import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded66
import InitECandidate.Proofs.BackendStages.ZeroData66
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets66_eq : Padded66.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys66 := by
  with_unfolding_all rfl
theorem zeroTargets66_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded66 acc = ZeroData.keys66.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets66_eq]
#print axioms zeroTargets66_eq
end InitECandidate.Proofs.BackendStages
