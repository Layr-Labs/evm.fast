import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded298
import InitECandidate.Proofs.BackendStages.ZeroData298
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets298_eq : Padded298.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys298 := by
  with_unfolding_all rfl
theorem zeroTargets298_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded298 acc = ZeroData.keys298.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets298_eq]
#print axioms zeroTargets298_eq
end InitECandidate.Proofs.BackendStages
