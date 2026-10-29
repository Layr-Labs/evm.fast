import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded246
import InitECandidate.Proofs.BackendStages.ZeroData246
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets246_eq : Padded246.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys246 := by
  with_unfolding_all rfl
theorem zeroTargets246_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded246 acc = ZeroData.keys246.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets246_eq]
#print axioms zeroTargets246_eq
end InitECandidate.Proofs.BackendStages
