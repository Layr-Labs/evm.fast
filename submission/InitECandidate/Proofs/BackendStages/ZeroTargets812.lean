import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded812
import InitECandidate.Proofs.BackendStages.ZeroData812
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets812_eq : Padded812.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys812 := by
  with_unfolding_all rfl
theorem zeroTargets812_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded812 acc = ZeroData.keys812.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets812_eq]
#print axioms zeroTargets812_eq
end InitECandidate.Proofs.BackendStages
