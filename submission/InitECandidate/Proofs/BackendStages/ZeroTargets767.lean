import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded767
import InitECandidate.Proofs.BackendStages.ZeroData767
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets767_eq : Padded767.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys767 := by
  with_unfolding_all rfl
theorem zeroTargets767_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded767 acc = ZeroData.keys767.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets767_eq]
#print axioms zeroTargets767_eq
end InitECandidate.Proofs.BackendStages
