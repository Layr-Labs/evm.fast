import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded361
import InitECandidate.Proofs.BackendStages.ZeroData361
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets361_eq : Padded361.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys361 := by
  with_unfolding_all rfl
theorem zeroTargets361_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded361 acc = ZeroData.keys361.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets361_eq]
#print axioms zeroTargets361_eq
end InitECandidate.Proofs.BackendStages
