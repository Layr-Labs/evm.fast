import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded556
import InitECandidate.Proofs.BackendStages.ZeroData556
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets556_eq : Padded556.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys556 := by
  with_unfolding_all rfl
theorem zeroTargets556_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded556 acc = ZeroData.keys556.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets556_eq]
#print axioms zeroTargets556_eq
end InitECandidate.Proofs.BackendStages
