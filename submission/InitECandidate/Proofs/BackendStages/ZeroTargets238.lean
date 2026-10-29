import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded238
import InitECandidate.Proofs.BackendStages.ZeroData238
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets238_eq : Padded238.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys238 := by
  with_unfolding_all rfl
theorem zeroTargets238_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded238 acc = ZeroData.keys238.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets238_eq]
#print axioms zeroTargets238_eq
end InitECandidate.Proofs.BackendStages
