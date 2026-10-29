import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded521
import InitECandidate.Proofs.BackendStages.ZeroData521
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets521_eq : Padded521.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys521 := by
  with_unfolding_all rfl
theorem zeroTargets521_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded521 acc = ZeroData.keys521.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets521_eq]
#print axioms zeroTargets521_eq
end InitECandidate.Proofs.BackendStages
