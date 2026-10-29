import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded659
import InitECandidate.Proofs.BackendStages.ZeroData659
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets659_eq : Padded659.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys659 := by
  with_unfolding_all rfl
theorem zeroTargets659_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded659 acc = ZeroData.keys659.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets659_eq]
#print axioms zeroTargets659_eq
end InitECandidate.Proofs.BackendStages
