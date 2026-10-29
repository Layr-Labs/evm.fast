import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded290
import InitECandidate.Proofs.BackendStages.ZeroData290
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets290_eq : Padded290.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys290 := by
  with_unfolding_all rfl
theorem zeroTargets290_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded290 acc = ZeroData.keys290.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets290_eq]
#print axioms zeroTargets290_eq
end InitECandidate.Proofs.BackendStages
