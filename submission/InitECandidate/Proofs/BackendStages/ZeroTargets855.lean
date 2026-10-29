import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded855
import InitECandidate.Proofs.BackendStages.ZeroData855
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets855_eq : Padded855.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys855 := by
  with_unfolding_all rfl
theorem zeroTargets855_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded855 acc = ZeroData.keys855.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets855_eq]
#print axioms zeroTargets855_eq
end InitECandidate.Proofs.BackendStages
