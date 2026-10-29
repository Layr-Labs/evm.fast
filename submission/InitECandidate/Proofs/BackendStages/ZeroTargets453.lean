import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded453
import InitECandidate.Proofs.BackendStages.ZeroData453
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets453_eq : Padded453.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys453 := by
  with_unfolding_all rfl
theorem zeroTargets453_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded453 acc = ZeroData.keys453.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets453_eq]
#print axioms zeroTargets453_eq
end InitECandidate.Proofs.BackendStages
