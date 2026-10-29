import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded288
import InitECandidate.Proofs.BackendStages.ZeroData288
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets288_eq : Padded288.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys288 := by
  with_unfolding_all rfl
theorem zeroTargets288_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded288 acc = ZeroData.keys288.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets288_eq]
#print axioms zeroTargets288_eq
end InitECandidate.Proofs.BackendStages
