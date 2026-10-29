import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded71
import InitECandidate.Proofs.BackendStages.ZeroData71
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets71_eq : Padded71.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys71 := by
  with_unfolding_all rfl
theorem zeroTargets71_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded71 acc = ZeroData.keys71.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets71_eq]
#print axioms zeroTargets71_eq
end InitECandidate.Proofs.BackendStages
