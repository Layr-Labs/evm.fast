import InitECandidate.Proofs.BackendStages.ZeroCollection
import InitECandidate.Proofs.BackendStages.Padded172
import InitECandidate.Proofs.BackendStages.ZeroData172
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem targets172_eq : Padded172.lines.filterMap ZeroCollection.lineTarget = ZeroData.keys172 := by
  with_unfolding_all rfl
theorem zeroTargets172_eq (acc : NumSet) : LabToTarget.secGetZeroLabsAcc Padded172 acc = ZeroData.keys172.foldr (fun key acc => sptInsert key () acc) acc := by
  unfold LabToTarget.secGetZeroLabsAcc
  rw [ZeroCollection.linesTarget_eq, targets172_eq]
#print axioms zeroTargets172_eq
end InitECandidate.Proofs.BackendStages
