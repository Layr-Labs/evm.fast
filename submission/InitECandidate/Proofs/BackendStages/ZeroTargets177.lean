import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded177
import InitECandidate.Proofs.BackendStages.ZeroData177
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets177_eq : Padded177.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys177 := by
  with_unfolding_all rfl
theorem zeroTargets177_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded177 acc = ZeroData.keys177.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets177_eq]
#print axioms zeroTargets177_eq
end InitECandidate.Proofs.BackendStages
