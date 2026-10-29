import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded458
import InitECandidate.Proofs.BackendStages.ZeroData458
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets458_eq : Padded458.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys458 := by
  with_unfolding_all rfl
theorem zeroTargets458_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded458 acc = ZeroData.keys458.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets458_eq]
#print axioms zeroTargets458_eq
end InitECandidate.Proofs.BackendStages
