import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded508
import InitECandidate.Proofs.BackendStages.ZeroData508
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets508_eq : Padded508.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys508 := by
  with_unfolding_all rfl
theorem zeroTargets508_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded508 acc = ZeroData.keys508.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets508_eq]
#print axioms zeroTargets508_eq
end InitECandidate.Proofs.BackendStages
