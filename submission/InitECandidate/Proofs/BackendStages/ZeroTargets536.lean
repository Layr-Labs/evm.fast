import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded536
import InitECandidate.Proofs.BackendStages.ZeroData536
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets536_eq : Padded536.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys536 := by
  with_unfolding_all rfl
theorem zeroTargets536_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded536 acc = ZeroData.keys536.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets536_eq]
#print axioms zeroTargets536_eq
end InitECandidate.Proofs.BackendStages
