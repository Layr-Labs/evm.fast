import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded529
import InitECandidate.Proofs.BackendStages.ZeroData529
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets529_eq : Padded529.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys529 := by
  with_unfolding_all rfl
theorem zeroTargets529_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded529 acc = ZeroData.keys529.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets529_eq]
#print axioms zeroTargets529_eq
end InitECandidate.Proofs.BackendStages
