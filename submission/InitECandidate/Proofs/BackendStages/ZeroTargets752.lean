import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded752
import InitECandidate.Proofs.BackendStages.ZeroData752
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets752_eq : Padded752.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys752 := by
  with_unfolding_all rfl
theorem zeroTargets752_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded752 acc = ZeroData.keys752.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets752_eq]
#print axioms zeroTargets752_eq
end InitECandidate.Proofs.BackendStages
