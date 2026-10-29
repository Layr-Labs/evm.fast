import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded673
import InitECandidate.Proofs.BackendStages.ZeroData673
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets673_eq : Padded673.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys673 := by
  with_unfolding_all rfl
theorem zeroTargets673_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded673 acc = ZeroData.keys673.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets673_eq]
#print axioms zeroTargets673_eq
end InitECandidate.Proofs.BackendStages
