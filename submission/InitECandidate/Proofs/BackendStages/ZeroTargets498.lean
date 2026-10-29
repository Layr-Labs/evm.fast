import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded498
import InitECandidate.Proofs.BackendStages.ZeroData498
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets498_eq : Padded498.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys498 := by
  with_unfolding_all rfl
theorem zeroTargets498_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded498 acc = ZeroData.keys498.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets498_eq]
#print axioms zeroTargets498_eq
end InitECandidate.Proofs.BackendStages
