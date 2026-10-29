import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded161
import InitECandidate.Proofs.BackendStages.ZeroData161
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets161_eq : Padded161.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys161 := by
  with_unfolding_all rfl
theorem zeroTargets161_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded161 acc = ZeroData.keys161.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets161_eq]
#print axioms zeroTargets161_eq
end InitECandidate.Proofs.BackendStages
