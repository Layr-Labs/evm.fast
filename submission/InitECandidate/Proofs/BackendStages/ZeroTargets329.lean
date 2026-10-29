import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded329
import InitECandidate.Proofs.BackendStages.ZeroData329
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets329_eq : Padded329.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys329 := by
  with_unfolding_all rfl
theorem zeroTargets329_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded329 acc = ZeroData.keys329.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets329_eq]
#print axioms zeroTargets329_eq
end InitECandidate.Proofs.BackendStages
