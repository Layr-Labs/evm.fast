import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded552
import InitECandidate.Proofs.BackendStages.ZeroData552
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets552_eq : Padded552.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys552 := by
  with_unfolding_all rfl
theorem zeroTargets552_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded552 acc = ZeroData.keys552.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets552_eq]
#print axioms zeroTargets552_eq
end InitECandidate.Proofs.BackendStages
