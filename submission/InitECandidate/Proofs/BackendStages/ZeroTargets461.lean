import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded461
import InitECandidate.Proofs.BackendStages.ZeroData461
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets461_eq : Padded461.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys461 := by
  with_unfolding_all rfl
theorem zeroTargets461_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded461 acc = ZeroData.keys461.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets461_eq]
#print axioms zeroTargets461_eq
end InitECandidate.Proofs.BackendStages
