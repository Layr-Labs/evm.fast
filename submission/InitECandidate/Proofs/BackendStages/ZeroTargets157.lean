import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded157
import InitECandidate.Proofs.BackendStages.ZeroData157
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets157_eq : Padded157.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys157 := by
  with_unfolding_all rfl
theorem zeroTargets157_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded157 acc = ZeroData.keys157.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets157_eq]
#print axioms zeroTargets157_eq
end InitECandidate.Proofs.BackendStages
