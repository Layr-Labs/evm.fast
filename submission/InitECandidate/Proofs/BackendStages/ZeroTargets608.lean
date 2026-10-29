import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded608
import InitECandidate.Proofs.BackendStages.ZeroData608
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets608_eq : Padded608.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys608 := by
  with_unfolding_all rfl
theorem zeroTargets608_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded608 acc = ZeroData.keys608.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets608_eq]
#print axioms zeroTargets608_eq
end InitECandidate.Proofs.BackendStages
