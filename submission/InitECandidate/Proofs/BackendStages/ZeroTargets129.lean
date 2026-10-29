import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded129
import InitECandidate.Proofs.BackendStages.ZeroData129
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets129_eq : Padded129.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys129 := by
  with_unfolding_all rfl
theorem zeroTargets129_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded129 acc = ZeroData.keys129.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets129_eq]
#print axioms zeroTargets129_eq
end InitECandidate.Proofs.BackendStages
