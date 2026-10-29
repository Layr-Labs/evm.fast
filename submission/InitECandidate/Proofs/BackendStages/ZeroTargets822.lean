import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded822
import InitECandidate.Proofs.BackendStages.ZeroData822
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets822_eq : Padded822.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys822 := by
  with_unfolding_all rfl
theorem zeroTargets822_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded822 acc = ZeroData.keys822.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets822_eq]
#print axioms zeroTargets822_eq
end InitECandidate.Proofs.BackendStages
