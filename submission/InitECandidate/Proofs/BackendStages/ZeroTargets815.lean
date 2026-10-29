import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded815
import InitECandidate.Proofs.BackendStages.ZeroData815
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets815_eq : Padded815.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys815 := by
  with_unfolding_all rfl
theorem zeroTargets815_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded815 acc = ZeroData.keys815.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets815_eq]
#print axioms zeroTargets815_eq
end InitECandidate.Proofs.BackendStages
