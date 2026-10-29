import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded795
import InitECandidate.Proofs.BackendStages.ZeroData795
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets795_eq : Padded795.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys795 := by
  with_unfolding_all rfl
theorem zeroTargets795_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded795 acc = ZeroData.keys795.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets795_eq]
#print axioms zeroTargets795_eq
end InitECandidate.Proofs.BackendStages
