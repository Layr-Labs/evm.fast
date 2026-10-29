import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded433
import InitECandidate.Proofs.BackendStages.ZeroData433
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets433_eq : Padded433.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys433 := by
  with_unfolding_all rfl
theorem zeroTargets433_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded433 acc = ZeroData.keys433.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets433_eq]
#print axioms zeroTargets433_eq
end InitECandidate.Proofs.BackendStages
