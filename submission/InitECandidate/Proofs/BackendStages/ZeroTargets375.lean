import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded375
import InitECandidate.Proofs.BackendStages.ZeroData375
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets375_eq : Padded375.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys375 := by
  with_unfolding_all rfl
theorem zeroTargets375_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded375 acc = ZeroData.keys375.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets375_eq]
#print axioms zeroTargets375_eq
end InitECandidate.Proofs.BackendStages
