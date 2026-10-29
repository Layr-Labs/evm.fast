import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded291
import InitECandidate.Proofs.BackendStages.ZeroData291
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets291_eq : Padded291.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys291 := by
  with_unfolding_all rfl
theorem zeroTargets291_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded291 acc = ZeroData.keys291.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets291_eq]
#print axioms zeroTargets291_eq
end InitECandidate.Proofs.BackendStages
