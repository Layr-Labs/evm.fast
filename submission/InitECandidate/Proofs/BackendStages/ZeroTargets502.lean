import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded502
import InitECandidate.Proofs.BackendStages.ZeroData502
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets502_eq : Padded502.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys502 := by
  with_unfolding_all rfl
theorem zeroTargets502_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded502 acc = ZeroData.keys502.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets502_eq]
#print axioms zeroTargets502_eq
end InitECandidate.Proofs.BackendStages
