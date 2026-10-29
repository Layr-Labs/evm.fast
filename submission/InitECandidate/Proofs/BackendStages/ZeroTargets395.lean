import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded395
import InitECandidate.Proofs.BackendStages.ZeroData395
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets395_eq : Padded395.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys395 := by
  with_unfolding_all rfl
theorem zeroTargets395_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded395 acc = ZeroData.keys395.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets395_eq]
#print axioms zeroTargets395_eq
end InitECandidate.Proofs.BackendStages
