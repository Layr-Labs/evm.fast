import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded343
import InitECandidate.Proofs.BackendStages.ZeroData343
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets343_eq : Padded343.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys343 := by
  with_unfolding_all rfl
theorem zeroTargets343_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded343 acc = ZeroData.keys343.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets343_eq]
#print axioms zeroTargets343_eq
end InitECandidate.Proofs.BackendStages
