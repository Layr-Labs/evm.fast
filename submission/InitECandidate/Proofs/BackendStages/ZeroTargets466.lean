import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded466
import InitECandidate.Proofs.BackendStages.ZeroData466
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets466_eq : Padded466.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys466 := by
  with_unfolding_all rfl
theorem zeroTargets466_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded466 acc = ZeroData.keys466.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets466_eq]
#print axioms zeroTargets466_eq
end InitECandidate.Proofs.BackendStages
