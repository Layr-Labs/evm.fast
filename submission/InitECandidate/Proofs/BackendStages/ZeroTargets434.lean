import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded434
import InitECandidate.Proofs.BackendStages.ZeroData434
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets434_eq : Padded434.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys434 := by
  with_unfolding_all rfl
theorem zeroTargets434_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded434 acc = ZeroData.keys434.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets434_eq]
#print axioms zeroTargets434_eq
end InitECandidate.Proofs.BackendStages
