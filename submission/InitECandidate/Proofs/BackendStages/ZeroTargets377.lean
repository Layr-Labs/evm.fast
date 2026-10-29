import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded377
import InitECandidate.Proofs.BackendStages.ZeroData377
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets377_eq : Padded377.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys377 := by
  with_unfolding_all rfl
theorem zeroTargets377_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded377 acc = ZeroData.keys377.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets377_eq]
#print axioms zeroTargets377_eq
end InitECandidate.Proofs.BackendStages
