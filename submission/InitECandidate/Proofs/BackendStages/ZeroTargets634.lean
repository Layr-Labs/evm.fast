import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded634
import InitECandidate.Proofs.BackendStages.ZeroData634
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets634_eq : Padded634.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys634 := by
  with_unfolding_all rfl
theorem zeroTargets634_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded634 acc = ZeroData.keys634.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets634_eq]
#print axioms zeroTargets634_eq
end InitECandidate.Proofs.BackendStages
