import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded155
import InitECandidate.Proofs.BackendStages.ZeroData155
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets155_eq : Padded155.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys155 := by
  with_unfolding_all rfl
theorem zeroTargets155_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded155 acc = ZeroData.keys155.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets155_eq]
#print axioms zeroTargets155_eq
end InitECandidate.Proofs.BackendStages
