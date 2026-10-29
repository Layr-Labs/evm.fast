import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded462
import InitECandidate.Proofs.BackendStages.ZeroData462
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets462_eq : Padded462.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys462 := by
  with_unfolding_all rfl
theorem zeroTargets462_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded462 acc = ZeroData.keys462.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets462_eq]
#print axioms zeroTargets462_eq
end InitECandidate.Proofs.BackendStages
