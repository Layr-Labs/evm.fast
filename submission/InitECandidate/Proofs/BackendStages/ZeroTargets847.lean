import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded847
import InitECandidate.Proofs.BackendStages.ZeroData847
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets847_eq : Padded847.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys847 := by
  with_unfolding_all rfl
theorem zeroTargets847_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded847 acc = ZeroData.keys847.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets847_eq]
#print axioms zeroTargets847_eq
end InitECandidate.Proofs.BackendStages
