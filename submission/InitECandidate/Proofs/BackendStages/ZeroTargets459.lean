import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded459
import InitECandidate.Proofs.BackendStages.ZeroData459
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets459_eq : Padded459.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys459 := by
  with_unfolding_all rfl
theorem zeroTargets459_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded459 acc = ZeroData.keys459.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets459_eq]
#print axioms zeroTargets459_eq
end InitECandidate.Proofs.BackendStages
