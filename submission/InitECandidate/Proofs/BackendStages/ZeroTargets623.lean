import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded623
import InitECandidate.Proofs.BackendStages.ZeroData623
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets623_eq : Padded623.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys623 := by
  with_unfolding_all rfl
theorem zeroTargets623_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded623 acc = ZeroData.keys623.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets623_eq]
#print axioms zeroTargets623_eq
end InitECandidate.Proofs.BackendStages
