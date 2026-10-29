import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded685
import InitECandidate.Proofs.BackendStages.ZeroData685
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets685_eq : Padded685.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys685 := by
  with_unfolding_all rfl
theorem zeroTargets685_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded685 acc = ZeroData.keys685.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets685_eq]
#print axioms zeroTargets685_eq
end InitECandidate.Proofs.BackendStages
