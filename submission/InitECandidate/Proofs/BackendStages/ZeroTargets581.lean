import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded581
import InitECandidate.Proofs.BackendStages.ZeroData581
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets581_eq : Padded581.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys581 := by
  with_unfolding_all rfl
theorem zeroTargets581_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded581 acc = ZeroData.keys581.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets581_eq]
#print axioms zeroTargets581_eq
end InitECandidate.Proofs.BackendStages
