import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded561
import InitECandidate.Proofs.BackendStages.ZeroData561
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets561_eq : Padded561.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys561 := by
  with_unfolding_all rfl
theorem zeroTargets561_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded561 acc = ZeroData.keys561.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets561_eq]
#print axioms zeroTargets561_eq
end InitECandidate.Proofs.BackendStages
