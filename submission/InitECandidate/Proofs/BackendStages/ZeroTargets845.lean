import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded845
import InitECandidate.Proofs.BackendStages.ZeroData845
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets845_eq : Padded845.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys845 := by
  with_unfolding_all rfl
theorem zeroTargets845_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded845 acc = ZeroData.keys845.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets845_eq]
#print axioms zeroTargets845_eq
end InitECandidate.Proofs.BackendStages
