import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded709
import InitECandidate.Proofs.BackendStages.ZeroData709
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets709_eq : Padded709.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys709 := by
  with_unfolding_all rfl
theorem zeroTargets709_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded709 acc = ZeroData.keys709.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets709_eq]
#print axioms zeroTargets709_eq
end InitECandidate.Proofs.BackendStages
