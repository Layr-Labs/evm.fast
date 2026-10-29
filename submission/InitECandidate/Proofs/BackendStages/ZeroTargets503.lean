import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded503
import InitECandidate.Proofs.BackendStages.ZeroData503
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets503_eq : Padded503.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys503 := by
  with_unfolding_all rfl
theorem zeroTargets503_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded503 acc = ZeroData.keys503.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets503_eq]
#print axioms zeroTargets503_eq
end InitECandidate.Proofs.BackendStages
