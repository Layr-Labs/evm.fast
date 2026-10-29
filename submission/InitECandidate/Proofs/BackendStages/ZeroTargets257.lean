import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded257
import InitECandidate.Proofs.BackendStages.ZeroData257
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets257_eq : Padded257.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys257 := by
  with_unfolding_all rfl
theorem zeroTargets257_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded257 acc = ZeroData.keys257.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets257_eq]
#print axioms zeroTargets257_eq
end InitECandidate.Proofs.BackendStages
