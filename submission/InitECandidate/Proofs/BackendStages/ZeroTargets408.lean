import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded408
import InitECandidate.Proofs.BackendStages.ZeroData408
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets408_eq : Padded408.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys408 := by
  with_unfolding_all rfl
theorem zeroTargets408_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded408 acc = ZeroData.keys408.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets408_eq]
#print axioms zeroTargets408_eq
end InitECandidate.Proofs.BackendStages
