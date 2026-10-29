import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded486
import InitECandidate.Proofs.BackendStages.ZeroData486
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets486_eq : Padded486.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys486 := by
  with_unfolding_all rfl
theorem zeroTargets486_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded486 acc = ZeroData.keys486.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets486_eq]
#print axioms zeroTargets486_eq
end InitECandidate.Proofs.BackendStages
