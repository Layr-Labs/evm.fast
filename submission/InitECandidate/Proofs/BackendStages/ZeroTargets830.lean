import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded830
import InitECandidate.Proofs.BackendStages.ZeroData830
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets830_eq : Padded830.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys830 := by
  with_unfolding_all rfl
theorem zeroTargets830_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded830 acc = ZeroData.keys830.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets830_eq]
#print axioms zeroTargets830_eq
end InitECandidate.Proofs.BackendStages
