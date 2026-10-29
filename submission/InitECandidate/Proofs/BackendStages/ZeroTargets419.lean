import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded419
import InitECandidate.Proofs.BackendStages.ZeroData419
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets419_eq : Padded419.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys419 := by
  with_unfolding_all rfl
theorem zeroTargets419_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded419 acc = ZeroData.keys419.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets419_eq]
#print axioms zeroTargets419_eq
end InitECandidate.Proofs.BackendStages
