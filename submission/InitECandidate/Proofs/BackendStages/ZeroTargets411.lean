import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded411
import InitECandidate.Proofs.BackendStages.ZeroData411
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets411_eq : Padded411.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys411 := by
  with_unfolding_all rfl
theorem zeroTargets411_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded411 acc = ZeroData.keys411.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets411_eq]
#print axioms zeroTargets411_eq
end InitECandidate.Proofs.BackendStages
