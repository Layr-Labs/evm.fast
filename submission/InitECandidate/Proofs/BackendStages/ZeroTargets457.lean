import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded457
import InitECandidate.Proofs.BackendStages.ZeroData457
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets457_eq : Padded457.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys457 := by
  with_unfolding_all rfl
theorem zeroTargets457_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded457 acc = ZeroData.keys457.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets457_eq]
#print axioms zeroTargets457_eq
end InitECandidate.Proofs.BackendStages
