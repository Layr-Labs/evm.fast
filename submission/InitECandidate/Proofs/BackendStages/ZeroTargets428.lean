import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded428
import InitECandidate.Proofs.BackendStages.ZeroData428
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets428_eq : Padded428.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys428 := by
  with_unfolding_all rfl
theorem zeroTargets428_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded428 acc = ZeroData.keys428.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets428_eq]
#print axioms zeroTargets428_eq
end InitECandidate.Proofs.BackendStages
