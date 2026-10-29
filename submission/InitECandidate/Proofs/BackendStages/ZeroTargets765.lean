import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded765
import InitECandidate.Proofs.BackendStages.ZeroData765
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets765_eq : Padded765.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys765 := by
  with_unfolding_all rfl
theorem zeroTargets765_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded765 acc = ZeroData.keys765.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets765_eq]
#print axioms zeroTargets765_eq
end InitECandidate.Proofs.BackendStages
