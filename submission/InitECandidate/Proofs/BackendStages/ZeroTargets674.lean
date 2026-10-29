import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded674
import InitECandidate.Proofs.BackendStages.ZeroData674
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets674_eq : Padded674.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys674 := by
  with_unfolding_all rfl
theorem zeroTargets674_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded674 acc = ZeroData.keys674.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets674_eq]
#print axioms zeroTargets674_eq
end InitECandidate.Proofs.BackendStages
