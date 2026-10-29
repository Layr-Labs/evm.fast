import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded334
import InitECandidate.Proofs.BackendStages.ZeroData334
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets334_eq : Padded334.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys334 := by
  with_unfolding_all rfl
theorem zeroTargets334_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded334 acc = ZeroData.keys334.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets334_eq]
#print axioms zeroTargets334_eq
end InitECandidate.Proofs.BackendStages
