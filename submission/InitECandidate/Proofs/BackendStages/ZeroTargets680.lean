import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded680
import InitECandidate.Proofs.BackendStages.ZeroData680
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets680_eq : Padded680.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys680 := by
  with_unfolding_all rfl
theorem zeroTargets680_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded680 acc = ZeroData.keys680.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets680_eq]
#print axioms zeroTargets680_eq
end InitECandidate.Proofs.BackendStages
