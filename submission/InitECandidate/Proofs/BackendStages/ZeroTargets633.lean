import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded633
import InitECandidate.Proofs.BackendStages.ZeroData633
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets633_eq : Padded633.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys633 := by
  with_unfolding_all rfl
theorem zeroTargets633_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded633 acc = ZeroData.keys633.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets633_eq]
#print axioms zeroTargets633_eq
end InitECandidate.Proofs.BackendStages
