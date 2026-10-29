import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded721
import InitECandidate.Proofs.BackendStages.ZeroData721
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets721_eq : Padded721.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys721 := by
  with_unfolding_all rfl
theorem zeroTargets721_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded721 acc = ZeroData.keys721.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets721_eq]
#print axioms zeroTargets721_eq
end InitECandidate.Proofs.BackendStages
