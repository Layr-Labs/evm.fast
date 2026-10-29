import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded324
import InitECandidate.Proofs.BackendStages.ZeroData324
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets324_eq : Padded324.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys324 := by
  with_unfolding_all rfl
theorem zeroTargets324_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded324 acc = ZeroData.keys324.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets324_eq]
#print axioms zeroTargets324_eq
end InitECandidate.Proofs.BackendStages
