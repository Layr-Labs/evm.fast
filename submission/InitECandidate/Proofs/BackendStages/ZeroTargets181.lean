import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded181
import InitECandidate.Proofs.BackendStages.ZeroData181
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets181_eq : Padded181.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys181 := by
  with_unfolding_all rfl
theorem zeroTargets181_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded181 acc = ZeroData.keys181.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets181_eq]
#print axioms zeroTargets181_eq
end InitECandidate.Proofs.BackendStages
