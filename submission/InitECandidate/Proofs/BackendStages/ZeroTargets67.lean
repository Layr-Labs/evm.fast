import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded67
import InitECandidate.Proofs.BackendStages.ZeroData67
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets67_eq : Padded67.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys67 := by
  with_unfolding_all rfl
theorem zeroTargets67_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded67 acc = ZeroData.keys67.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets67_eq]
#print axioms zeroTargets67_eq
end InitECandidate.Proofs.BackendStages
