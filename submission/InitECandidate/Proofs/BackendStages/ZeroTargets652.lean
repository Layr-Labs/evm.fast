import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded652
import InitECandidate.Proofs.BackendStages.ZeroData652
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets652_eq : Padded652.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys652 := by
  with_unfolding_all rfl
theorem zeroTargets652_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded652 acc = ZeroData.keys652.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets652_eq]
#print axioms zeroTargets652_eq
end InitECandidate.Proofs.BackendStages
