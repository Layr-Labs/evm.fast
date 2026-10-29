import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded824
import InitECandidate.Proofs.BackendStages.ZeroData824
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets824_eq : Padded824.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys824 := by
  with_unfolding_all rfl
theorem zeroTargets824_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded824 acc = ZeroData.keys824.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets824_eq]
#print axioms zeroTargets824_eq
end InitECandidate.Proofs.BackendStages
