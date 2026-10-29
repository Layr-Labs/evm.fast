import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded636
import InitECandidate.Proofs.BackendStages.ZeroData636
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets636_eq : Padded636.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys636 := by
  with_unfolding_all rfl
theorem zeroTargets636_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded636 acc = ZeroData.keys636.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets636_eq]
#print axioms zeroTargets636_eq
end InitECandidate.Proofs.BackendStages
