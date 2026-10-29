import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded654
import InitECandidate.Proofs.BackendStages.ZeroData654
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets654_eq : Padded654.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys654 := by
  with_unfolding_all rfl
theorem zeroTargets654_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded654 acc = ZeroData.keys654.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets654_eq]
#print axioms zeroTargets654_eq
end InitECandidate.Proofs.BackendStages
