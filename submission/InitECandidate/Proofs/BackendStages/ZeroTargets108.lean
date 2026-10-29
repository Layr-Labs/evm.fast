import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded108
import InitECandidate.Proofs.BackendStages.ZeroData108
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets108_eq : Padded108.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys108 := by
  with_unfolding_all rfl
theorem zeroTargets108_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded108 acc = ZeroData.keys108.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets108_eq]
#print axioms zeroTargets108_eq
end InitECandidate.Proofs.BackendStages
