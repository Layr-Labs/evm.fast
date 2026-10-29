import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded199
import InitECandidate.Proofs.BackendStages.ZeroData199
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets199_eq : Padded199.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys199 := by
  with_unfolding_all rfl
theorem zeroTargets199_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded199 acc = ZeroData.keys199.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets199_eq]
#print axioms zeroTargets199_eq
end InitECandidate.Proofs.BackendStages
