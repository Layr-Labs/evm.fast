import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded387
import InitECandidate.Proofs.BackendStages.ZeroData387
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets387_eq : Padded387.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys387 := by
  with_unfolding_all rfl
theorem zeroTargets387_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded387 acc = ZeroData.keys387.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets387_eq]
#print axioms zeroTargets387_eq
end InitECandidate.Proofs.BackendStages
