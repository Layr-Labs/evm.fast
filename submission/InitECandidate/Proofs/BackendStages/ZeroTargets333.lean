import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded333
import InitECandidate.Proofs.BackendStages.ZeroData333
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets333_eq : Padded333.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys333 := by
  with_unfolding_all rfl
theorem zeroTargets333_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded333 acc = ZeroData.keys333.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets333_eq]
#print axioms zeroTargets333_eq
end InitECandidate.Proofs.BackendStages
