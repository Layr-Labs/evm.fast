import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded700
import InitECandidate.Proofs.BackendStages.ZeroData700
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets700_eq : Padded700.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys700 := by
  with_unfolding_all rfl
theorem zeroTargets700_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded700 acc = ZeroData.keys700.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets700_eq]
#print axioms zeroTargets700_eq
end InitECandidate.Proofs.BackendStages
