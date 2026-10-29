import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded807
import InitECandidate.Proofs.BackendStages.ZeroData807
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets807_eq : Padded807.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys807 := by
  with_unfolding_all rfl
theorem zeroTargets807_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded807 acc = ZeroData.keys807.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets807_eq]
#print axioms zeroTargets807_eq
end InitECandidate.Proofs.BackendStages
