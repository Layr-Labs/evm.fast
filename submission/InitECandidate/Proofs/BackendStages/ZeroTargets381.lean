import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded381
import InitECandidate.Proofs.BackendStages.ZeroData381
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets381_eq : Padded381.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys381 := by
  with_unfolding_all rfl
theorem zeroTargets381_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded381 acc = ZeroData.keys381.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets381_eq]
#print axioms zeroTargets381_eq
end InitECandidate.Proofs.BackendStages
