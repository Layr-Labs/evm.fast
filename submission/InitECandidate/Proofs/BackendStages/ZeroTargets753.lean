import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded753
import InitECandidate.Proofs.BackendStages.ZeroData753
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets753_eq : Padded753.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys753 := by
  with_unfolding_all rfl
theorem zeroTargets753_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded753 acc = ZeroData.keys753.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets753_eq]
#print axioms zeroTargets753_eq
end InitECandidate.Proofs.BackendStages
