import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded677
import InitECandidate.Proofs.BackendStages.ZeroData677
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets677_eq : Padded677.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys677 := by
  with_unfolding_all rfl
theorem zeroTargets677_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded677 acc = ZeroData.keys677.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets677_eq]
#print axioms zeroTargets677_eq
end InitECandidate.Proofs.BackendStages
