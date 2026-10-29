import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded203
import InitECandidate.Proofs.BackendStages.ZeroData203
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets203_eq : Padded203.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys203 := by
  with_unfolding_all rfl
theorem zeroTargets203_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded203 acc = ZeroData.keys203.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets203_eq]
#print axioms zeroTargets203_eq
end InitECandidate.Proofs.BackendStages
