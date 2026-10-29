import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded849
import InitECandidate.Proofs.BackendStages.ZeroData849
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets849_eq : Padded849.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys849 := by
  with_unfolding_all rfl
theorem zeroTargets849_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded849 acc = ZeroData.keys849.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets849_eq]
#print axioms zeroTargets849_eq
end InitECandidate.Proofs.BackendStages
