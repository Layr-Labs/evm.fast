import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded356
import InitECandidate.Proofs.BackendStages.ZeroData356
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets356_eq : Padded356.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys356 := by
  with_unfolding_all rfl
theorem zeroTargets356_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded356 acc = ZeroData.keys356.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets356_eq]
#print axioms zeroTargets356_eq
end InitECandidate.Proofs.BackendStages
