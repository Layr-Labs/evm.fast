import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded240
import InitECandidate.Proofs.BackendStages.ZeroData240
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets240_eq : Padded240.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys240 := by
  with_unfolding_all rfl
theorem zeroTargets240_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded240 acc = ZeroData.keys240.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets240_eq]
#print axioms zeroTargets240_eq
end InitECandidate.Proofs.BackendStages
