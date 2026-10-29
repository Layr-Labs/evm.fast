import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded447
import InitECandidate.Proofs.BackendStages.ZeroData447
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets447_eq : Padded447.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys447 := by
  with_unfolding_all rfl
theorem zeroTargets447_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded447 acc = ZeroData.keys447.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets447_eq]
#print axioms zeroTargets447_eq
end InitECandidate.Proofs.BackendStages
