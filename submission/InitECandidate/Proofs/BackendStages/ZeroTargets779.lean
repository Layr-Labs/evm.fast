import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded779
import InitECandidate.Proofs.BackendStages.ZeroData779
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets779_eq : Padded779.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys779 := by
  with_unfolding_all rfl
theorem zeroTargets779_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded779 acc = ZeroData.keys779.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets779_eq]
#print axioms zeroTargets779_eq
end InitECandidate.Proofs.BackendStages
