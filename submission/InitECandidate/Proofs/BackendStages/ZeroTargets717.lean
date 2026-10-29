import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded717
import InitECandidate.Proofs.BackendStages.ZeroData717
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets717_eq : Padded717.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys717 := by
  with_unfolding_all rfl
theorem zeroTargets717_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded717 acc = ZeroData.keys717.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets717_eq]
#print axioms zeroTargets717_eq
end InitECandidate.Proofs.BackendStages
