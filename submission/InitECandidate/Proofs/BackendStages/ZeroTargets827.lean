import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded827
import InitECandidate.Proofs.BackendStages.ZeroData827
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets827_eq : Padded827.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys827 := by
  with_unfolding_all rfl
theorem zeroTargets827_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded827 acc = ZeroData.keys827.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets827_eq]
#print axioms zeroTargets827_eq
end InitECandidate.Proofs.BackendStages
