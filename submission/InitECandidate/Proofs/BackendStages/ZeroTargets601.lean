import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded601
import InitECandidate.Proofs.BackendStages.ZeroData601
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets601_eq : Padded601.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys601 := by
  with_unfolding_all rfl
theorem zeroTargets601_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded601 acc = ZeroData.keys601.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets601_eq]
#print axioms zeroTargets601_eq
end InitECandidate.Proofs.BackendStages
