import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded106
import InitECandidate.Proofs.BackendStages.ZeroData106
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets106_eq : Padded106.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys106 := by
  with_unfolding_all rfl
theorem zeroTargets106_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded106 acc = ZeroData.keys106.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets106_eq]
#print axioms zeroTargets106_eq
end InitECandidate.Proofs.BackendStages
