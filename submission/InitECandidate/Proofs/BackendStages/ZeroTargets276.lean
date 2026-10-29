import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded276
import InitECandidate.Proofs.BackendStages.ZeroData276
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets276_eq : Padded276.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys276 := by
  with_unfolding_all rfl
theorem zeroTargets276_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded276 acc = ZeroData.keys276.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets276_eq]
#print axioms zeroTargets276_eq
end InitECandidate.Proofs.BackendStages
