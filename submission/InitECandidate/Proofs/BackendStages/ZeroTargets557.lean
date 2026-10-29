import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded557
import InitECandidate.Proofs.BackendStages.ZeroData557
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets557_eq : Padded557.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys557 := by
  with_unfolding_all rfl
theorem zeroTargets557_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded557 acc = ZeroData.keys557.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets557_eq]
#print axioms zeroTargets557_eq
end InitECandidate.Proofs.BackendStages
