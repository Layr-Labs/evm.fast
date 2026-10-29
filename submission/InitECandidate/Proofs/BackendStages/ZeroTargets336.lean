import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded336
import InitECandidate.Proofs.BackendStages.ZeroData336
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets336_eq : Padded336.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys336 := by
  with_unfolding_all rfl
theorem zeroTargets336_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded336 acc = ZeroData.keys336.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets336_eq]
#print axioms zeroTargets336_eq
end InitECandidate.Proofs.BackendStages
