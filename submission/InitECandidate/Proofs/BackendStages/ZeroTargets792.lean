import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded792
import InitECandidate.Proofs.BackendStages.ZeroData792
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets792_eq : Padded792.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys792 := by
  with_unfolding_all rfl
theorem zeroTargets792_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded792 acc = ZeroData.keys792.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets792_eq]
#print axioms zeroTargets792_eq
end InitECandidate.Proofs.BackendStages
