import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded501
import InitECandidate.Proofs.BackendStages.ZeroData501
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets501_eq : Padded501.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys501 := by
  with_unfolding_all rfl
theorem zeroTargets501_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded501 acc = ZeroData.keys501.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets501_eq]
#print axioms zeroTargets501_eq
end InitECandidate.Proofs.BackendStages
